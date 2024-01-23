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
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/delete_trip.dart';
import '../../../domain/usecases/update_trip.dart';

part 'trip_cubit.freezed.dart';
part 'trip_state.dart';

@injectable
class TripCubit extends Cubit<TripState> {
  final UpdateTrip _saveTrip;
  final DeleteTrip _deleteTrip;
  final ListenDayTrips _listenDayTrips;
  final UpdateDayTripsIndexes _updateDayTripsIndexes;
  final FirebaseCrashlytics _crashlytics;

  StreamSubscription<Either<DayTripsFailure, List<DayTrip>>>? _dayTripsSubscription;

  TripCubit({
    @factoryParam required Trip trip,
    required UpdateTrip saveTrip,
    required DeleteTrip deleteTrip,
    required ListenDayTrips listenDayTrips,
    required UpdateDayTripsIndexes updateDayTripsIndexes,
    required FirebaseCrashlytics crashlytics,
  })  : _saveTrip = saveTrip,
        _deleteTrip = deleteTrip,
        _listenDayTrips = listenDayTrips,
        _updateDayTripsIndexes = updateDayTripsIndexes,
        _crashlytics = crashlytics,
        super(TripState.initial(trip: trip));

  startListenDayTrips() {
    _dayTripsSubscription?.cancel();
    _dayTripsSubscription =
        _listenDayTrips(ListenDayTripsParams(tripId: state.trip.id)).listen((result) {
      result.fold(
        (failure) {
          emit(TripState.error(
            trip: state.trip,
            errorMessage: failure.message ?? LocaleKeys.dataLoadError.tr(),
            fatal: true,
          ));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (dayTrips) => emit(TripState.loaded(trip: state.trip, dayTrips: dayTrips)),
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
      ));
    });
  }

  void nameChanged(String value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(name: value)));
  }

  void descriptionChanged(String value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(description: value)));
  }

  void startDateChanged(DateTime value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(startDate: value)));
  }

  void isPublicChanged(bool value) {
    state.mapOrNull(editing: (state) => emit(state.copyWith(isPublic: value)));
  }

  void cancelEditing() {
    state.mapOrNull(editing: (state) {
      emit(TripState.loaded(trip: state.trip, dayTrips: state.dayTrips));
    });
  }

  void saveChanges() async {
    //TODO: implement saveChanges
    /* String? getTripDescription() {
      if ((state as TripStateEditing).description?.isNotEmpty ?? false) {
        return (state as TripStateEditing).description!;
      } else {
        return null;
      }
    }

    assert(state is TripStateEditing);
    final editingState = state as TripStateEditing;
    final tripId = state.trip.id;
    final tripDescription = getTripDescription();
    final tripName = (state as TripStateEditing).name;
    final tripStartDate = (state as TripStateEditing).startDate;
    final tripIsPublic = (state as TripStateEditing).isPublic;

    emit(editingState.copyWith(isSaving: true));

    final result = await _saveTrip(UpdateTripParams(
      id: tripId,
      name: tripName,
      description: tripDescription,
      startDate: tripStartDate,
      isPublic: tripIsPublic,
    ));

    return result.fold(
      (failure) {
        final errorMessage = failure.when(
          (message) => message ?? LocaleKeys.unknownErrorRetry.tr(),
          noInternetConnection: () => LocaleKeys.noInternetConnectionMessage.tr(),
        );

        emit(TripState.error(
          trip: state.trip,
          dayTrips: state.dayTrips,
          errorMessage: errorMessage,
        ));
        emit(editingState.copyWith(isSaving: false));
      },
      (_) {
        emit(TripState.normal(
            trip: state.trip.copyWith(
              name: tripName,
              description: tripDescription,
              startDate: tripStartDate,
            ),
            dayTrips: state.dayTrips));
      },
    ); */
  }

  void deleteTrip() async {
    emit(TripState.deleting(trip: state.trip));

    final result = await _deleteTrip(DeleteTripParams(trip: state.trip));

    result.fold(
      (failure) {
        final errorMessage = failure.when(
          (message) => message ?? LocaleKeys.unknownErrorRetry.tr(),
          noInternetConnection: () => LocaleKeys.noInternetConnectionMessage.tr(),
        );

        emit(TripState.error(
          trip: state.trip,
          errorMessage: errorMessage,
          fatal: false,
        ));
      },
      (_) => emit(TripState.deleted(trip: state.trip)),
    );
  }

  void reorderDayTrips(int oldIndex, int newIndex) {
    state.mapOrNull(loaded: (state) {
      //fix for a bug when newIndex > oldIndex
      if (newIndex > oldIndex) newIndex--;

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

      _updateDayTripsIndexes(
          UpdateDayTripsIndexesParams(dayTrips: dayTripsToUpdate, tripId: state.trip.id));
    });
    
  }

  @override
  Future<void> close() {
    _dayTripsSubscription?.cancel();
    return super.close();
  }

  void modalBottomEditingDismissed() {
    state.mapOrNull(editing: (state) {
      emit(TripState.loaded(trip: state.trip, dayTrips: state.dayTrips));
    });
  }
}
