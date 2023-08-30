import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_trip_stop_state.dart';
part 'new_trip_stop_cubit.freezed.dart';

@injectable
class NewTripStopCubit extends Cubit<NewTripStopState> {
  final String _tripId;
  final String _dayTripId;

  NewTripStopCubit({
    @factoryParam required String tripId,
    @factoryParam required String dayTripId,
  })  : _tripId = tripId,
        _dayTripId = dayTripId,
        super(NewTripStopState.normal());

  void nameChanged(String value) {
    emit(state.copyWith(name: value));
  }

  void descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  void startTimeChanged(TimeOfDay value) {
    emit(state.copyWith(startTime: value));
  }

  void endTimeChanged(TimeOfDay value) {
    emit(state.copyWith(endTime: value));
  }
}
