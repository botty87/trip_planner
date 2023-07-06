import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/day_trip.dart';
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/save_trip.dart';

part 'trip_cubit.freezed.dart';
part 'trip_state.dart';

@injectable
class TripCubit extends Cubit<TripState> {
  final SaveTrip _saveTrip;
  TripCubit({@factoryParam required Trip trip, required SaveTrip saveTrip})
      : _saveTrip = saveTrip,
        super(TripState(trip: trip, dayTrips: []));

  void edit() {
    emit(TripState.editing(
      trip: state.trip,
      dayTrips: state.dayTrips,
      name: state.trip.name,
      description: state.trip.description,
    ));
  }

  void nameChanged(String value) {
    assert(state is TripStateEditing);
    emit((state as TripStateEditing).copyWith(name: value));
  }

  descriptionChanged(String value) {
    assert(state is TripStateEditing);
    emit((state as TripStateEditing).copyWith(description: value));
  }

  void editCancel() {
    emit(TripState(trip: state.trip, dayTrips: state.dayTrips));
  }

  save() async {
    assert(state is TripStateEditing);
    final tripId = state.trip.id!;
    final tripDescription = (state as TripStateEditing).description;
    final tripName = (state as TripStateEditing).name;

    emit((state as TripStateEditing).copyWith(isSaving: true));

    final result = await _saveTrip(SaveTripParams(
      id: tripId,
      name: tripName,
      description: tripDescription,
    ));

    result.fold(
      (failure) {
        emit((state as TripStateEditing).copyWith(
          isSaving: false,
          errorMessage: failure.message,
        ));
      },
      (_) => emit(TripState(
          trip: state.trip.copyWith(
            name: tripName,
            description: tripDescription,
          ),
          dayTrips: state.dayTrips)),
    );
  }
}
