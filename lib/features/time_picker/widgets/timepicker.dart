import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../cubit/time_picker_cubit.dart';
import 'timepicker_android.dart';
import 'timepicker_ios.dart';

///
/// The function that shows the *DayNightTimePicker*
///
/// This function takes in the following parameters:
///
/// **value** - `Required` Display value. It takes in [TimeOfDay].
///
/// **onChange** - `Required` Return the new time the user picked as [TimeOfDay].
///
/// **iosStylePicker** - `Required` Whether to display a IOS style picker (Not exactly the same). Defaults to `false`.
///
/// **hourLabel** - The label to be displayed for `hour` picker. Only for _iosStylePicker_. Defaults to `'hours'`.
///
/// **minuteLabel** - The label to be displayed for `minute` picker. Only for _iosStylePicker_. Defaults to `'minutes'`.
///
/// **minuteInterval** - Steps interval while changing `minute`. Accepts `TimePickerInterval` enum. Defaults to `TimePickerInterval.ONE`.
///
/// **maxHour** - Selectable maximum hour. Defaults to `12` | `23`.
///
/// **maxMinute** - Selectable maximum minute. Defaults to `59`.
///
/// **minHour** - Selectable minimum hour. Defaults to `0` | `1`.
///
/// **minMinute** - Selectable minimum minute. Defaults to `0`.
///

class TimePicker extends StatelessWidget {
  final TimeOfDay value;
  final void Function(TimeOfDay) onChange;
  final bool iosStylePicker;
  final String hourLabel;
  final String minuteLabel;
  final TimePickerInterval minuteInterval;
  final int minHour;
  final int maxHour;
  final int minMinute;
  final int maxMinute;

  TimePicker({
    super.key,
    required this.value,
    required this.onChange,
    required this.iosStylePicker,
    this.hourLabel = 'hours',
    this.minuteLabel = 'minutes',
    this.minuteInterval = TimePickerInterval.ONE,
    this.minHour = 0,
    this.maxHour = 23,
    this.minMinute = 0,
    this.maxMinute = 59,
  }) {
    assert(maxMinute <= 59, '"maxMinute" must be less than or equal to 59');
    assert(minMinute >= 0, '"minMinute" must be greater than or equal to 0');
    assert(
      maxHour <= 23 && minHour >= 0,
      '"minHour" and "maxHour" should be between 0-23',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TimePickerCubit>(
      create: (_) => TimePickerCubit(value),
      child: BlocListener<TimePickerCubit, TimePickerState>(
          listener: (context, state) => onChange(state.time),
          listenWhen: (previous, current) => previous.time != current.time,
          child: SizedBox(
            height: 130,
            child: iosStylePicker
                ? TimePickerIos(
                    hourLabel: hourLabel,
                    minuteLabel: minuteLabel,
                    maxHour: maxHour,
                    minHour: minHour,
                    maxMinute: maxMinute,
                    minMinute: minMinute,
                    minuteInterval: minuteInterval,
                  )
                : TimePickerAndroid(
                    hourLabel: hourLabel,
                    minuteLabel: minuteLabel,
                    maxHour: maxHour,
                    minHour: minHour,
                    maxMinute: maxMinute,
                    minMinute: minMinute,
                    minuteInterval: minuteInterval,
                  ),
          )),
    );
  }
}
