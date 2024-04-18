import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/debouncer.dart';
import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../../../day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart';
import '../../../../trips/domain/entities/trip.dart';
import '../../../domain/entities/trip_stop.dart';
import '../../../domain/usecases/delete_trip_stop.dart';
import '../../../domain/usecases/trip_stop_done.dart';
import '../../../domain/usecases/update_trip_stop.dart';
import '../../../domain/usecases/update_trip_stop_note.dart';

part 'trip_stop_cubit.freezed.dart';
part 'trip_stop_state.dart';

@injectable
class TripStopCubit extends Cubit<TripStopState> {
  final TripStopDone _tripStopDone;
  final UpdateTripStopNote _updateTripStopNote;
  final DeleteTripStop _deleteTripStop;
  final UpdateTripStop _updateTripStop;
  final UpdateTripStopsDirectionsUpToDate _updateTripStopsDirectionsUpToDate;

  final Debouncer _tripStopNoteDebouncer = Debouncer(milliseconds: 5000);
  TripStopCubit({
    @factoryParam required TripStopCubitParams params,
    required TripStopDone tripStopDone,
    required UpdateTripStopNote updateTripStopNote,
    required DeleteTripStop deleteTripStop,
    required UpdateTripStop updateTripStop,
    required UpdateTripStopsDirectionsUpToDate updateTripStopsDirectionsUpToDate,
  })  : _tripStopDone = tripStopDone,
        _updateTripStopNote = updateTripStopNote,
        _deleteTripStop = deleteTripStop,
        _updateTripStop = updateTripStop,
        _updateTripStopsDirectionsUpToDate = updateTripStopsDirectionsUpToDate,
        super(TripStopState.normal(
            trip: params.trip, dayTrip: params.dayTrip, tripStop: params.tripStop));

  isDoneChanged(bool isDone) async {
    final currentIsDone = state.tripStop.isDone;

    emit(TripStopState.saving(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop.copyWith(isDone: isDone),
    ));

    final result = await _tripStopDone(TripStopDoneParams(
      tripId: state.trip.id,
      dayTripId: state.dayTrip.id,
      tripStopId: state.tripStop.id,
      isDone: isDone,
    ));

    if (isClosed) return;

    result.fold(
      (failure) {
        emit(TripStopState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop.copyWith(isDone: currentIsDone),
          message: failure.message ?? LocaleKeys.unknownError.tr(),
        ));

        emit(TripStopState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop,
        ));
      },
      (_) => emit(TripStopState.normal(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStop: state.tripStop.copyWith(isDone: isDone),
      )),
    );
  }

  void edit() {
    emit(TripStopState.editing(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop,
      name: state.tripStop.name,
    ));
  }

  void onUIError(Exception e) {
    emit(TripStopState.error(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop,
      message: e.toString(),
    ));

    emit(TripStopState.normal(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop,
    ));
  }

  noteChanged(String value) {
    emit(state.copyWith(tripStop: state.tripStop.copyWith(note: value), hasTripNoteToSave: true));
    _tripStopNoteDebouncer.run(() => saveTripStopNote());
  }

  Future<bool> saveTripStopNote({bool forced = false}) async {
    if (!state.hasTripNoteToSave) {
      _tripStopNoteDebouncer.cancel();
      return true;
    }

    Debouncer? savingDebouncer;

    if (forced) {
      _tripStopNoteDebouncer.cancel();
      savingDebouncer = Debouncer(milliseconds: 500);
      savingDebouncer.run(() => emit(TripStopState.noteSaving(
            trip: state.trip,
            dayTrip: state.dayTrip,
            tripStop: state.tripStop,
          )));
    }

    final result = await _updateTripStopNote(UpdateTripStopNoteParams(
      tripId: state.trip.id,
      dayTripId: state.dayTrip.id,
      tripStopId: state.tripStop.id,
      note: state.tripStop.note,
    ));

    savingDebouncer?.cancel();

    return result.fold(
      (failure) {
        emit(TripStopState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop,
          message: failure.message ?? LocaleKeys.unknownError.tr(),
        ));

        emit(TripStopState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop,
        ));

        return false;
      },
      (_) {
        emit(TripStopState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop,
        ));

        return true;
      },
    );
  }

  deleteTripStop() async {
    emit(TripStopState.deleting(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop,
    ));

    final result = await _deleteTripStop(DeleteTripStopParams(
      tripId: state.trip.id,
      dayTripId: state.dayTrip.id,
      tripStopId: state.tripStop.id,
    ));

    result.fold(
      (failure) {
        emit(TripStopState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop,
          message: failure.message ?? LocaleKeys.unknownError.tr(),
        ));

        emit(TripStopState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop,
        ));
      },
      (_) {
        _updateTripStopsDirectionsUpToDate(UpdateTripStopsDirectionsUpToDateParams(
          tripId: state.trip.id,
          dayTripId: state.dayTrip.id,
          isUpToDate: false,
        ));

        emit(TripStopState.deleted(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop,
        ));
      },
    );
  }

  modalBottomEditingDismissed() {
    if (state is TripStopStateEditing) {
      emit(TripStopState.normal(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStop: state.tripStop,
      ));
    }
  }

  descriptionChanged(String value) {
    assert(state is TripStopStateEditing);
    emit((state as TripStopStateEditing).copyWith(description: value));
  }

  nameChanged(String value) {
    assert(state is TripStopStateEditing);
    emit((state as TripStopStateEditing).copyWith(name: value));
  }

  hourDurationChanged(int value) {
    assert(state is TripStopStateEditing);
    emit((state as TripStopStateEditing).copyWith(hourDuration: value));
  }

  minuteDurationChanged(int value) {
    assert(state is TripStopStateEditing);
    emit((state as TripStopStateEditing).copyWith(minuteDuration: value));
  }

  void locationChanged(LatLng value) {
    assert(state is TripStopStateEditing);
    emit((state as TripStopStateEditing).copyWith(location: value));
  }

  cancelEditing() {
    assert(state is TripStopStateEditing);
    emit(TripStopState.normal(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop,
    ));
  }

  saveChanges() async {
    assert(state is TripStopStateEditing);
    final editingState = state as TripStopStateEditing;
    emit(TripStopState.saving(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop,
    ));

    int getDuration() {
      final int hourDuration = editingState.hourDuration ?? state.tripStop.duration ~/ 60;
      final int minuteDuration = editingState.minuteDuration ?? state.tripStop.duration % 60;

      return hourDuration * 60 + minuteDuration;
    }

    final name = editingState.name ?? state.tripStop.name;
    final description = editingState.description ?? state.tripStop.description;
    final duration = getDuration();
    final location = editingState.location ?? state.tripStop.location;

    final result = await _updateTripStop(UpdateTripStopParams(
      id: state.tripStop.id,
      tripId: state.trip.id,
      dayTripId: state.dayTrip.id,
      tripStopId: state.tripStop.id,
      name: name,
      description: description,
      duration: duration,
      location: location,
    ));

    result.fold(
      (failure) {
        emit(TripStopState.error(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop,
          message: failure.message ?? LocaleKeys.unknownError.tr(),
        ));

        emit(editingState);
      },
      (_) {
        //If the location has changed, we need to update the directions
        if (location != state.tripStop.location) {
          _updateTripStopsDirectionsUpToDate(UpdateTripStopsDirectionsUpToDateParams(
            tripId: state.trip.id,
            dayTripId: state.dayTrip.id,
            isUpToDate: false,
          ));
        }

        emit(TripStopState.normal(
          trip: state.trip,
          dayTrip: state.dayTrip,
          tripStop: state.tripStop.copyWith(
            name: name,
            description: description,
            duration: duration,
            location: location,
          ),
        ));
      },
    );
  }
}

final class TripStopCubitParams {
  final Trip trip;
  final DayTrip dayTrip;
  final TripStop tripStop;

  const TripStopCubitParams({
    required this.trip,
    required this.dayTrip,
    required this.tripStop,
  });
}
