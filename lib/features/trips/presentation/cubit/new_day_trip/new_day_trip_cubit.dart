import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_day_trip_state.dart';
part 'new_day_trip_cubit.freezed.dart';

@injectable
class NewDayTripCubit extends Cubit<NewDayTripState> {
  NewDayTripCubit() : super(NewDayTripState());

  nameChanged(String value) {
    emit(state.copyWith(name: value));
  }

  descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  createDayTrip() async {}
}
