import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../settings/domain/entities/view_preferences.dart';
import '../../../../settings/domain/usecases/update_view_preferences.dart';
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/listen_trips.dart';
import '../../../errors/trips_failure.dart';

part 'trips_cubit.freezed.dart';
part 'trips_state.dart';

@injectable
class TripsCubit extends Cubit<TripsState> {
  TripsCubit({
    required ListenUserTrips listenUserTrips,
    required ListenSharedTrips listenSharedTrips,
    required UpdateViewPreferences updateViewPreferences,
    required FirebaseCrashlytics crashlytics,
    @factoryParam required String userId,
    @factoryParam required ViewMode viewMode,
  })  : _listenUserTrips = listenUserTrips,
        _listenSharedTrips = listenSharedTrips,
        _updateViewPreferences = updateViewPreferences,
        _crashlytics = crashlytics,
        _userId = userId,
        super(TripsState.initial(viewMode: viewMode));

  final ListenUserTrips _listenUserTrips;
  final ListenSharedTrips _listenSharedTrips;
  final UpdateViewPreferences _updateViewPreferences;

  final FirebaseCrashlytics _crashlytics;

  final String _userId;

  StreamSubscription<Either<TripsFailure, List<Trip>>>? _userTripsSubscription;
  StreamSubscription<Either<TripsFailure, List<Trip>>>? _sharedTripsSubscription;

  @PostConstruct()
  void init() {
    startListenTrips();
  }

  void startListenTrips() {
    List<Trip>? userTrips;
    List<Trip>? sharedTrips;

    _userTripsSubscription?.cancel();
    _sharedTripsSubscription?.cancel();

    _userTripsSubscription = _listenUserTrips(ListenTripsParams(userId: _userId)).listen((result) {
      result.fold(
        (failure) {
          emit(TripsState.error(message: LocaleKeys.dataLoadError.tr(), viewMode: state.viewMode));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (trips) {
          switch (state) {
            case final TripsStateLoaded loaded:
              userTrips = trips;
              emit(loaded.copyWith(userTrips: userTrips!));
            default:
              userTrips = trips;
              if (sharedTrips != null) {
                emit(TripsState.loaded(userTrips: userTrips!, sharedTrips: sharedTrips!, viewMode: state.viewMode));
              }
          }
        },
      );
    });

    _sharedTripsSubscription = _listenSharedTrips(ListenTripsParams(userId: _userId)).listen((result) {
      result.fold(
        (failure) {
          emit(TripsState.error(message: LocaleKeys.dataLoadError.tr(), viewMode: state.viewMode));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (trips) {
          switch (state) {
            case final TripsStateLoaded loaded:
              sharedTrips = trips;
              emit(loaded.copyWith(sharedTrips: sharedTrips!));
            default:
              sharedTrips = trips;
              if (userTrips != null) {
                emit(TripsState.loaded(userTrips: userTrips!, sharedTrips: sharedTrips!, viewMode: state.viewMode));
              }
          }
        },
      );
    });
  }

  void updateViewModeFromUser(ViewMode viewMode) => emit(state.copyWith(viewMode: viewMode));

  @override
  Future<void> close() {
    _userTripsSubscription?.cancel();
    _sharedTripsSubscription?.cancel();
    return super.close();
  }

  void changeViewMode() async {
    emit(state.copyWith(viewMode: state.viewMode == ViewMode.list ? ViewMode.grid : ViewMode.list));

    final result = await _updateViewPreferences(
        UpdateViewPreferencesParams(viewMode: state.viewMode, viewModePage: ViewModePage.trips));

    result.leftMap((failure) => _crashlytics.recordError(failure, StackTrace.current));
  }
}
