import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_picker_cubit.freezed.dart';

part 'time_picker_state.dart';

class TimePickerCubit extends Cubit<TimePickerState> {
  TimePickerCubit(TimeOfDay time) : super(TimePickerState(time: time));

  void onHourChange(int hour) {
    emit(state.copyWith(time: state.time.replacing(hour: hour)));
  }

  void onMinuteChange(int minute) {
    emit(state.copyWith(time: state.time.replacing(minute: minute)));
  }
}
