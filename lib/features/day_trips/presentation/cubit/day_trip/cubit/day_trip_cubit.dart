import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../../trips/domain/entities/trip.dart';

part 'day_trip_cubit.freezed.dart';
part 'day_trip_state.dart';

@injectable
class DayTripCubit extends Cubit<DayTripState> {
  final UpdateDayTrip _updateDayTrip;

  DayTripCubit(
      {@factoryParam required Trip trip,
      @factoryParam required DayTrip dayTrip,
      required UpdateDayTrip updateDayTrip})
      : _updateDayTrip = updateDayTrip,
        super(DayTripState(
          trip: trip,
          dayTrip: dayTrip,
        ));

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
      emit(DayTripState(
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

  void cancelEditing() {
    assert(state is DayTripStateEditing);
    emit(DayTripState(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStops: state.tripStops,
    ));
  }

  //Return true if the day trip was saved
  Future<bool> saveChanges() async {
    assert(state is DayTripStateEditing);
    final editingState = state as DayTripStateEditing;
    emit(editingState.copyWith(isSaving: true, errorMessage: null));
    final result = await _updateDayTrip(
      UpdateDayTripParams(
        id: state.dayTrip.id,
        tripId: state.trip.id,
        description: editingState.description,
      ),
    );
    return result.fold(
      (failure) {
        emit(editingState.copyWith(
          isSaving: false,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
        ));
        return false;
      },
      (_) {
        emit(DayTripState(
          trip: state.trip,
          dayTrip: state.dayTrip.copyWith(description: editingState.description),
          tripStops: state.tripStops,
        ));
        return true;
      },
    );
  }
}
