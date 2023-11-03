import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../cubit/time_picker_cubit.dart';
import '../utils.dart';

class AndroidSlider extends StatelessWidget {
  final int maxHour;
  final int minHour;
  final int maxMinute;
  final int minMinute;
  final TimePickerInterval minuteInterval;

  const AndroidSlider({
    super.key,
    required this.maxHour,
    required this.minHour,
    required this.maxMinute,
    required this.minMinute,
    required this.minuteInterval,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;

    final value = context.select((TimePickerCubit cubit) => switch (cubit.state.selectedInput) {
          SelectedInput.HOUR => cubit.state.time.hour,
          SelectedInput.MINUTE => cubit.state.time.minute
        });

    final min = context.select((TimePickerCubit cubit) => switch (cubit.state.selectedInput) {
          SelectedInput.HOUR => minHour,
          SelectedInput.MINUTE => minMinute
        });

    final max = context.select((TimePickerCubit cubit) => switch (cubit.state.selectedInput) {
          SelectedInput.HOUR => maxHour,
          SelectedInput.MINUTE => maxMinute
        });

    final divisions = context.select((TimePickerCubit cubit) => switch (cubit.state.selectedInput) {
          SelectedInput.HOUR => maxHour - minHour,
          SelectedInput.MINUTE => getDivisions(maxMinute - minMinute, minuteInterval)
        });

    return Slider(
      value: value.toDouble(),
      onChanged: (value) => context.read<TimePickerCubit>().onSliderChange(value.toInt()),
      min: min.toDouble(),
      max: max.toDouble(),
      divisions: divisions,
      activeColor: color,
      inactiveColor: color.withAlpha(55),
    );
  }
}
