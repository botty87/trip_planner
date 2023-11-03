import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/debouncer.dart';
import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../../../trips/domain/entities/trip.dart';
import '../../../domain/entities/trip_stop.dart';
import '../../../domain/usecases/delete_trip_stop.dart';
import '../../../domain/usecases/trip_stop_done.dart';
import '../../../domain/usecases/update_trip_stop_note.dart';

part 'trip_stop_cubit.freezed.dart';
part 'trip_stop_state.dart';

@injectable
class TripStopCubit extends Cubit<TripStopState> {
  final TripStopDone _tripStopDone;
  final UpdateTripStopNote _updateTripStopNote;
  final DeleteTripStop _deleteTripStop;

  final Debouncer _tripStopNoteDebouncer = Debouncer(milliseconds: 5000);
  TripStopCubit({
    @factoryParam required TripStopCubitParams params,
    required TripStopDone tripStopDone,
    required UpdateTripStopNote updateTripStopNote,
    required DeleteTripStop deleteTripStop,
  })  : _tripStopDone = tripStopDone,
        _updateTripStopNote = updateTripStopNote,
        _deleteTripStop = deleteTripStop,
        super(TripStopState.normal(
            trip: params.trip, dayTrip: params.dayTrip, tripStop: params.tripStop));

  isDoneChanged(bool isDone) async {
    final result = await _tripStopDone(TripStopDoneParams(
      tripId: state.trip.id,
      dayTripId: state.dayTrip.id,
      tripStopId: state.tripStop.id,
      isDone: isDone,
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
      (_) => emit(TripStopState.deleted(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStop: state.tripStop,
      )),
    );
  }

  modalBottomEditingDismissed() {
    if(state is TripStopStateEditing) {
      emit(TripStopState.normal(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStop: state.tripStop,
      ));
    }
  }

  descriptionChanged(String value) {}
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
