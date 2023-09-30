import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../cubit/time_picker_cubit.dart';
import '../utils.dart';
import 'display_wheel.dart';

class TimePickerIos extends StatelessWidget {
  final String hourLabel;
  final String minuteLabel;
  final FixedExtentScrollController _hourController = FixedExtentScrollController();
  final FixedExtentScrollController _minuteController = FixedExtentScrollController();
  final int maxHour;
  final int minHour;
  final int maxMinute;
  final int minMinute;
  final TimePickerInterval minuteInterval;

  late final _hours = generateHours(
    _hourDiv,
    minHour,
    maxHour,
  );

  int get _hourDiv => ((maxHour - minHour) + 1).round();

  late final int minDiff = (maxMinute - minMinute).round();
  late final minuteDiv = getDivisions(minDiff, minuteInterval);

  late final List<int?> _minutes = generateMinutes(
    minuteDiv,
    minuteInterval,
    minMinute,
    maxMinute,
  );

  TimePickerIos({
    super.key,
    required this.hourLabel,
    required this.minuteLabel,
    required this.maxHour,
    required this.minHour,
    required this.maxMinute,
    required this.minMinute,
    required this.minuteInterval,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DisplayWheel(
          controller: _hourController,
          items: _hours,
          isSelected: true,
          onChange: (int value) => context.read<TimePickerCubit>().onHourChange(value),
        ),
        Text(hourLabel),
        DisplayWheel(
          controller: _minuteController,
          items: _minutes,
          isSelected: true,
          onChange: (int value) => context.read<TimePickerCubit>().onMinuteChange(value),
        ),
        Text(minuteLabel),
      ],
    );
  }
}
