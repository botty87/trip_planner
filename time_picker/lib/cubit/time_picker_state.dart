part of 'time_picker_cubit.dart';

@freezed
class TimePickerState with _$TimePickerState {

  const factory TimePickerState({
    required TimeOfDay time,
  }) = _TimePickerState;

}

