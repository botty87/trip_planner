import 'package:flutter/material.dart';
import 'package:time_picker/widgets/android_slider.dart';

import '../constants.dart';
import 'display_value.dart';

class TimePickerAndroid extends StatelessWidget {
  final String hourLabel;
  final String minuteLabel;
  final int maxHour;
  final int minHour;
  final int maxMinute;
  final int minMinute;
  final TimePickerInterval minuteInterval;

  const TimePickerAndroid({
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
    final commonTimeStyles = Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 62,
          fontWeight: FontWeight.bold,
        );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const DisplayValue(
              selectedInput: SelectedInput.HOUR,
            ),
            Text(
              ":",
              textScaleFactor: 0.85,
              style: commonTimeStyles.copyWith(color: Colors.grey),
            ),
            const DisplayValue(
              selectedInput: SelectedInput.MINUTE,
            ),
          ],
        ),
        AndroidSlider(
          maxHour: maxHour,
          minHour: minHour,
          maxMinute: maxMinute,
          minMinute: minMinute,
          minuteInterval: minuteInterval,
        ),
      ],
    );
  }
}
