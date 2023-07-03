import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/trip.dart';

part 'trip_state.dart';
part 'trip_cubit.freezed.dart';

@injectable
class TripCubit extends Cubit<TripState> {
  TripCubit({@factoryParam required Trip trip}) : super(TripState(trip: trip));

  void edit() {
    emit(TripState.editing(
      trip: state.trip,
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


  void cancel() {
    emit(TripState(trip: state.trip));
  }

  save() {}
}
