import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../../../day_trips/domain/usecases/listen_day_trips.dart';
import '../../../../day_trips/domain/usecases/update_day_trips_indexes.dart';
import '../../../../day_trips/errors/day_trips_failure.dart';
import '../../../../settings/domain/entities/view_preferences.dart';
import '../../../../settings/domain/usecases/update_view_preferences.dart';
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/delete_trip.dart';
import '../../../domain/usecases/listen_trip.dart';
import '../../../domain/usecases/remove_user_for_share.dart';
import '../../../domain/usecases/update_trip.dart';
import '../../../errors/trips_failure.dart';

part 'trip_cubit.freezed.dart';
part 'trip_state.dart';

@injectable
class TripCubit extends Cubit<TripState> {
  final UpdateTrip _saveTrip;
  final DeleteTrip _deleteTrip;
  final ListenDayTrips _listenDayTrips;
  final UpdateDayTripsIndexes _updateDayTripsIndexes;
  final FirebaseCrashlytics _crashlytics;
  final ListenTrip _listenTrip;
  final RemoveUserForShare _removeUserForShare;
  final UpdateViewPreferences _updateViewPreferences;

  StreamSubscription<Either<DayTripsFailure, List<DayTrip>>>? _dayTripsSubscription;
  StreamSubscription<Either<TripsFailure, Trip?>>? _tripSubscription;

  TripCubit({
    @factoryParam required Trip trip,
    @factoryParam required ViewMode viewMode,
    required UpdateTrip saveTrip,
    required DeleteTrip deleteTrip,
    required ListenDayTrips listenDayTrips,
    required UpdateDayTripsIndexes updateDayTripsIndexes,
    required ListenTrip listenTrip,
    required RemoveUserForShare removeUserForShare,
    required FirebaseCrashlytics crashlytics,
    required UpdateViewPreferences updateViewPreferences,
  })  : _saveTrip = saveTrip,
        _deleteTrip = deleteTrip,
        _listenDayTrips = listenDayTrips,
        _updateDayTripsIndexes = updateDayTripsIndexes,
        _listenTrip = listenTrip,
        _removeUserForShare = removeUserForShare,
        _crashlytics = crashlytics,
        _updateViewPreferences = updateViewPreferences,
        super(TripState.initial(trip: trip, viewMode: viewMode));

  @PostConstruct()
  void init() {
    startListenDayTrips();
    startListenTrip();
  }

  void startListenDayTrips() {
    _dayTripsSubscription?.cancel();
    _dayTripsSubscription = _listenDayTrips(ListenDayTripsParams(tripId: state.trip.id)).listen((result) {
      result.fold(
        (failure) {
          emit(TripState.error(
            trip: state.trip,
            errorMessage: failure.message ?? LocaleKeys.dataLoadError.tr(),
            fatal: true,
            viewMode: state.viewMode,
          ));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (dayTrips) => switch (state) {
          final TripStateEditing state => emit(state.copyWith(dayTrips: dayTrips)),
          _ => emit(TripState.loaded(trip: state.trip, dayTrips: dayTrips, viewMode: state.viewMode)),
        },
      );
    });
  }

  void startListenTrip() {
    _tripSubscription?.cancel();
    _tripSubscription = _listenTrip(ListenTripParams(tripId: state.trip.id)).listen((result) {
      result.fold(
        (failure) {
          emit(TripState.error(
            trip: state.trip,
            errorMessage: LocaleKeys.dataLoadError.tr(),
            fatal: true,
            viewMode: state.viewMode,
          ));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (trip) {
          //If trip is null it means it was deleted, so we don't update the state
          if (trip != null) {
            emit(state.copyWith(trip: trip));
          }
        },
      );
    });
  }

  void edit() {
    state.mapOrNull(loaded: (state) {
      emit(TripState.editing(
        trip: state.trip,
        dayTrips: state.dayTrips,
        name: state.trip.name,
        description: state.trip.description,
        startDate: state.trip.startDate,
        isPublic: state.trip.isPublic,
        languageCode: state.trip.languageCode ?? 'en',
        viewMode: state.viewMode,
      ));
    });
  }

  void nameChanged(String value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(name: value, errorMessage: null)));
  }

  void descriptionChanged(String value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(description: value, errorMessage: null)));
  }

  void startDateChanged(DateTime value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(startDate: value, errorMessage: null)));
  }

  void isPublicChanged(bool value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(isPublic: value, errorMessage: null)));
  }

  void languageCodeChanged(String value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(languageCode: value, errorMessage: null)));
  }

  void saveChanges() async {
    state.mapOrNull(
      editing: (state) async {
        String? getTripDescription() {
          if (state.description?.isNotEmpty ?? false) {
            return state.description!;
          } else {
            return null;
          }
        }

        final tripId = state.trip.id;
        final tripDescription = getTripDescription();
        final tripName = state.name;
        final tripStartDate = state.startDate;
        final tripIsPublic = state.isPublic;
        final tripLanguageCode = state.languageCode;

        emit(state.copyWith(isSaving: true, errorMessage: null));

        if (tripName.isEmpty) {
          emit(state.copyWith(isSaving: false, errorMessage: LocaleKeys.tripNameEmpty.tr()));
          return;
        }

        final result = await _saveTrip(UpdateTripParams(
          id: tripId,
          name: tripName,
          description: tripDescription,
          startDate: tripStartDate,
          isPublic: tripIsPublic,
          languageCode: tripLanguageCode,
        ));

        result.fold(
          (failure) {
            final errorMessage = switch (failure) {
              TripsFailureNoInternetConnection _ => LocaleKeys.noInternetConnectionMessage.tr(),
              TripsFailure(:final message) => message ?? LocaleKeys.unknownErrorRetry.tr(),
            };

            emit(state.copyWith(isSaving: false, errorMessage: errorMessage));
          },
          (_) => emit(
            TripState.loaded(
              trip: state.trip.copyWith(
                name: tripName,
                description: tripDescription,
                startDate: tripStartDate,
                isPublic: tripIsPublic,
                languageCode: tripLanguageCode,
              ),
              dayTrips: state.dayTrips,
              viewMode: state.viewMode,
            ),
          ),
        );
      },
    );
  }

  void deleteTrip() async {
    emit(TripState.deleting(trip: state.trip, viewMode: state.viewMode));

    final result = await _deleteTrip(DeleteTripParams(trip: state.trip));

    result.fold(
      (failure) {
        final errorMessage = switch (failure) {
          TripsFailureNoInternetConnection _ => LocaleKeys.noInternetConnectionMessage.tr(),
          TripsFailure(:final message) => message ?? LocaleKeys.unknownErrorRetry.tr(),
        };

        emit(TripState.error(
          trip: state.trip,
          errorMessage: errorMessage,
          fatal: false,
          viewMode: state.viewMode,
        ));
      },
      (_) => emit(TripState.deleted(trip: state.trip, viewMode: state.viewMode)),
    );
  }

  void reorderDayTrips(int oldIndex, int newIndex) async {
    if (state case final TripStateLoaded state) {
      final oldDayTrips = state.dayTrips;
      final newDayTrips = List<DayTrip>.from(oldDayTrips);
      newDayTrips.removeAt(oldIndex);
      newDayTrips.insert(newIndex, oldDayTrips[oldIndex]);

      //Update the day trips indexes
      for (int i = 0; i < newDayTrips.length; i++) {
        newDayTrips[i] = newDayTrips[i].copyWith(index: i);
      }

      emit(TripState.loaded(trip: state.trip, dayTrips: newDayTrips, viewMode: state.viewMode));

      final List<DayTrip> dayTripsToUpdate = [];

      dayTripsToUpdate.add(state.dayTrips[oldIndex].copyWith(index: newIndex));
      if (newIndex > oldIndex) {
        for (int i = oldIndex + 1; i <= newIndex; i++) {
          dayTripsToUpdate.add(state.dayTrips[i].copyWith(index: i - 1));
        }
      } else {
        for (int i = oldIndex - 1; i >= newIndex; i--) {
          dayTripsToUpdate.add(state.dayTrips[i].copyWith(index: i + 1));
        }
      }

      final result =
          await _updateDayTripsIndexes(UpdateDayTripsIndexesParams(dayTrips: dayTripsToUpdate, tripId: state.trip.id));

      result.leftMap(
        (failure) {
          emit(TripState.error(
            trip: state.trip,
            errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
            fatal: false,
            viewMode: state.viewMode,
          ));
          emit(TripState.loaded(trip: state.trip, dayTrips: oldDayTrips, viewMode: state.viewMode));
        },
      );
    }
  }

  void modalBottomEditingDismissed() {
    return switch (state) {
      final TripStateEditing state =>
        emit(TripState.loaded(trip: state.trip, dayTrips: state.dayTrips, viewMode: state.viewMode)),
      _ => null,
    };
  }

  void removeTrip(String userId) async {
    emit(TripState.deleting(trip: state.trip, viewMode: state.viewMode));

    final result = await _removeUserForShare(RemoveUserForShareParams(tripId: state.trip.id, userId: userId));

    result.fold(
      (failure) {
        final errorMessage = switch (failure) {
          ShareTripFailureNoInternetConnection _ => LocaleKeys.noInternetConnectionMessage.tr(),
          ShareTripFailureUserNotFound _ => LocaleKeys.userNotFound.tr(),
          ShareTripFailure(:final message) => message ?? LocaleKeys.unknownErrorRetry.tr(),
        };

        emit(TripState.error(
          trip: state.trip,
          errorMessage: errorMessage,
          fatal: false,
          viewMode: state.viewMode,
        ));
      },
      (_) => emit(TripState.deleted(trip: state.trip, viewMode: state.viewMode)),
    );
  }

  void updateViewModeFromUser(ViewMode viewMode) => emit(state.copyWith(viewMode: viewMode));

  void changeViewMode() async {
    emit(state.copyWith(viewMode: state.viewMode == ViewMode.list ? ViewMode.grid : ViewMode.list));

    final result = await _updateViewPreferences(
        UpdateViewPreferencesParams(viewMode: state.viewMode, viewModePage: ViewModePage.trip));

    result.leftMap((failure) => _crashlytics.recordError(failure, StackTrace.current));
  }

  @override
  Future<void> close() {
    _dayTripsSubscription?.cancel();
    _tripSubscription?.cancel();
    return super.close();
  }
}
