import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/utilities/debouncer.dart';
import '../../../../../trip_stops/domain/usecases/listen_trip_stops.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
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
  late final StreamSubscription<Either<TripStopsFailure, List<TripStop>>> _tripStopsSubscription;

  final _startTimeDebouncer = Debouncer(milliseconds: 5000);

  DayTripCubit({
    @factoryParam required Trip trip,
    @factoryParam required DayTrip dayTrip,
    required UpdateDayTrip updateDayTrip,
    required DeleteDayTrip deleteDayTrip,
    required ListenTripStops listenTripStops,
    required UpdateDayTripStartTime updateDayTripStartTime,
  })  : _updateDayTrip = updateDayTrip,
        _deleteDayTrip = deleteDayTrip,
        _listenTripStops = listenTripStops,
        _updateDayTripStartTime = updateDayTripStartTime,
        super(DayTripState.normal(
          trip: trip,
          dayTrip: dayTrip,
        )) {
    _tripStopsSubscription =
        _listenTripStops(ListenTripStopsParams(dayTripId: dayTrip.id, tripId: trip.id))
            .listen((result) {
      result.fold((failure) {
        //TODO: handle failure
      }, (tripStops) => emit(state.copyWith(tripStops: tripStops)));
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
    emit(state.copyWith(dayTrip: state.dayTrip.copyWith(startTime: startTime), hasStartTimeToSave: true));
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
    if(forced) {
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

  @override
  Future<void> close() {
    _tripStopsSubscription.cancel();
    return super.close();
  }
}
