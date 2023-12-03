import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/utilities/debouncer.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../../trip_stops/domain/usecases/listen_trip_stops.dart';
import '../../../../../trip_stops/domain/usecases/trip_stop_done.dart';
import '../../../../../trip_stops/domain/usecases/update_travel_time.dart';
import '../../../../../trip_stops/domain/usecases/update_trip_stops_indexes.dart';
import '../../../../../trip_stops/errors/trip_stops_failure.dart';
import '../../../../../trips/domain/entities/trip.dart';
import '../../../../domain/entities/day_trip.dart';
import '../../../../domain/usecases/delete_day_trip.dart';
import '../../../../domain/usecases/update_day_trip.dart';
import '../../../../domain/usecases/update_day_trip_start_time.dart';

part 'day_trip_cubit.freezed.dart';
part 'day_trip_state.dart';

@injectable
class DayTripCubit extends Cubit<DayTripState> {
  final UpdateDayTrip _updateDayTrip;
  final DeleteDayTrip _deleteDayTrip;
  final ListenTripStops _listenTripStops;
  final UpdateDayTripStartTime _updateDayTripStartTime;
  final UpdateTripStopsIndexes _updateDayTripsIndexes;
  final UpdateTravelTime _updateTravelTime;
  final TripStopDone _tripStopDone;

  final FirebaseCrashlytics _crashlytics;

  late final StreamSubscription<Either<TripStopsFailure, List<TripStop>>> _tripStopsSubscription;

  final _startTimeDebouncer = Debouncer(milliseconds: 5000);
  final _travelTimeDebouncer = Debouncer(milliseconds: 500);

  DayTripCubit({
    @factoryParam required Trip trip,
    @factoryParam required DayTrip dayTrip,
    required UpdateDayTrip updateDayTrip,
    required DeleteDayTrip deleteDayTrip,
    required ListenTripStops listenTripStops,
    required UpdateDayTripStartTime updateDayTripStartTime,
    required UpdateTripStopsIndexes updateDayTripsIndexes,
    required UpdateTravelTime updateTravelTime,
    required TripStopDone tripStopDone,
    required FirebaseCrashlytics crashlytics,
  })  : _updateDayTrip = updateDayTrip,
        _deleteDayTrip = deleteDayTrip,
        _listenTripStops = listenTripStops,
        _updateDayTripStartTime = updateDayTripStartTime,
        _updateDayTripsIndexes = updateDayTripsIndexes,
        _updateTravelTime = updateTravelTime,
        _tripStopDone = tripStopDone,
        _crashlytics = crashlytics,
        super(DayTripState.normal(
          trip: trip,
          dayTrip: dayTrip,
        )) {
    _tripStopsSubscription =
        _listenTripStops(ListenTripStopsParams(dayTripId: dayTrip.id, tripId: trip.id))
            .listen((result) {
      result.fold(
        (failure) {
          emit(DayTripState.error(
            trip: state.trip,
            dayTrip: state.dayTrip,
            tripStops: state.tripStops,
            errorMessage: failure.message ?? LocaleKeys.dataLoadError.tr(),
          ));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (tripStops) => emit(state.copyWith(tripStops: tripStops)),
      );
    });
  }

  edit() {
    emit(DayTripState.editing(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStops: state.tripStops,
      description: state.dayTrip.description,
    ));
  }

  modalBottomEditingDismissed() {
    if (state is DayTripStateEditing) {
      emit(DayTripState.normal(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStops: state.tripStops,
      ));
    }
  }

  descriptionChanged(String description) {
    assert(state is DayTripStateEditing);
    emit((state as DayTripStateEditing).copyWith(description: description));
  }

  startTimeChanged(TimeOfDay startTime) {
    emit(state.copyWith(
        dayTrip: state.dayTrip.copyWith(startTime: startTime), hasStartTimeToSave: true));
    _startTimeDebouncer.run(() => saveDayTripStopStartTime());
  }

  void cancelEditing() {
    assert(state is DayTripStateEditing);
    emit(DayTripState.normal(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStops: state.tripStops,
    ));
  }

  void saveChanges() async {
    assert(state is DayTripStateEditing);
    final editingState = state as DayTripStateEditing;
    emit(editingState.copyWith(isSaving: true));
    final result = await _updateDayTrip(
      UpdateDayTripParams(
        id: state.dayTrip.id,
        tripId: state.trip.id,
        description: editingState.description,
      ),
    );

    result.fold(
      (failure) {
        emit(DayTripState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
        ));
        emit(editingState.copyWith(
          isSaving: false,
        ));
      },
      (_) {
        emit(DayTripState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip.copyWith(description: editingState.description),
          tripStops: state.tripStops,
        ));
      },
    );
  }

  Future<bool> saveDayTripStopStartTime({bool forced = false}) async {
    if (!state.hasStartTimeToSave) {
      _startTimeDebouncer.cancel();
      return true;
    }

    if (forced) {
      _startTimeDebouncer.cancel();
      assert(state is DayTripStateNormal);
      emit((state as DayTripStateNormal).copyWith(explictitStartTimeSave: true));
    }

    final result = await _updateDayTripStartTime(
      UpdateDayTripStartTimeParams(
        id: state.dayTrip.id,
        tripId: state.trip.id,
        startTime: state.dayTrip.startTime,
      ),
    );

    return result.fold(
      (failure) {
        emit(DayTripState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
          hasStartTimeToSave: false,
        ));
        emit(DayTripState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
          hasStartTimeToSave: false,
          explictitStartTimeSave: false,
        ));
        return false;
      },
      (_) {
        emit(DayTripState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
          hasStartTimeToSave: false,
          explictitStartTimeSave: false,
        ));
        return true;
      },
    );
  }

  void deleteDayTrip() async {
    emit(DayTripState.deleting(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStops: state.tripStops,
    ));

    final result = await _deleteDayTrip(
      DeleteDayTripParams(
        tripId: state.trip.id,
        dayTripId: state.dayTrip.id,
      ),
    );

    result.fold(
      (failure) {
        emit(DayTripState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
        ));
        emit(DayTripState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
        ));
      },
      (_) {
        emit(DayTripState.deleted(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
        ));
      },
    );
  }

  void reorderTripStops(int oldIndex, int newIndex) {
    final List<TripStop> tripStopsToUpdate = [];

    tripStopsToUpdate.add(state.tripStops[oldIndex].copyWith(index: newIndex));
    if (newIndex > oldIndex) {
      for (int i = oldIndex + 1; i <= newIndex; i++) {
        tripStopsToUpdate.add(state.tripStops[i].copyWith(index: i - 1));
      }
    } else {
      for (int i = oldIndex - 1; i >= newIndex; i--) {
        tripStopsToUpdate.add(state.tripStops[i].copyWith(index: i + 1));
      }
    }

    _updateDayTripsIndexes(
      UpdateTripStopsIndexesParams(
        tripId: state.trip.id,
        dayTripId: state.dayTrip.id,
        tripStops: tripStopsToUpdate,
      ),
    );
  }

  @override
  Future<void> close() {
    _tripStopsSubscription.cancel();
    return super.close();
  }

  void updateTravelTimeToNextStop(String id, int inMinutes) async {
    _travelTimeDebouncer.run(() {
      assert(state is DayTripStateNormal);
      emit((state as DayTripStateNormal).copyWith(isSaving: true));
    });

    final result = await _updateTravelTime(
      UpdateTravelTimeParams(
        tripId: state.trip.id,
        dayTripId: state.dayTrip.id,
        tripStopId: id,
        travelTime: inMinutes,
      ),
    );

    _travelTimeDebouncer.cancel();

    result.fold(
      (failure) {
        emit(DayTripState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
        ));
        emit(DayTripState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: state.tripStops,
        ));
      },
      (_) => emit(DayTripState.normal(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStops: state.tripStops,
      )),
    );
  }

  void toggleTripStopDone(bool isDone, int tripStopIndex) async {
    //Set the trip stop at the index to the new value
    final tripStop = state.tripStops[tripStopIndex].copyWith(isDone: isDone);
    final tripStops = List<TripStop>.from(state.tripStops);
    tripStops[tripStopIndex] = tripStop;

    emit(DayTripState.normal(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStops: tripStops,
    ));

    final result = await _tripStopDone(
      TripStopDoneParams(
        tripId: state.trip.id,
        dayTripId: state.dayTrip.id,
        tripStopId: tripStop.id,
        isDone: isDone,
      ),
    );

    if (isClosed) return;

    result.fold(
      (failure) {
        //Revert the trip stop to the previous value
        final tripStop = state.tripStops[tripStopIndex].copyWith(isDone: !isDone);
        final tripStops = List<TripStop>.from(state.tripStops);
        tripStops[tripStopIndex] = tripStop;

        emit(DayTripState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: tripStops,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
        ));

        emit(DayTripState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStops: tripStops,
        ));
      },
      (_) => emit(DayTripState.normal(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStops: tripStops,
      )),
    );
  }
}
