import 'package:flutter/material.dart';

import 'constants.dart';

/// Map a given value between a range
double mapRange(
  double value,
  double iMin,
  double iMax, [
  double oMin = 0,
  double oMax = 1,
]) {
  return ((value - iMin) * (oMax - oMin)) / (iMax - iMin) + oMin;
}

/// Map MinuteInterval enum to division values
int getDivisions(int diff, TimePickerInterval? interval) {
  final step = interval?.value ?? TimePickerInterval.DEFAULT.value;
  return (diff / step).round();
}

/// Get the minimum minute from interval
double getMin(double? minMinute, TimePickerInterval? interval) {
  if (minMinute == 0) {
    return 0;
  }
  final step = interval?.value ?? TimePickerInterval.DEFAULT.value;

  double min = -1;
  double i = 1;
  while (min < 0) {
    double val = i * step;
    if (val >= minMinute!) {
      min = val;
    }
    i++;
  }
  return min;
}

/// Get the maximum minute from interval
double getMax(double? maxMinute, TimePickerInterval? interval) {
  if (maxMinute == 59) {
    return 59;
  }
  final step = interval?.value ?? TimePickerInterval.DEFAULT.value;

  double max = 60;
  double i = 1;
  while (max > maxMinute!) {
    double val = 60 - (i * step);
    if (val <= maxMinute) {
      max = val;
    }
    i++;
  }
  return max;
}

/// Generate a List of minutes
List<int?> generateMinutes(
  int divisions,
  TimePickerInterval? interval,
  min,
  max,
) {
  final step = interval?.value ?? TimePickerInterval.DEFAULT.value;

  final minutes = List<int?>.generate(divisions + 1, (index) {
    final val = min.round() + (step * index);
    if (val >= max) {
      return max.round();
    }
    return val;
  });
  return minutes;
}

/// Generate a List of hours
List<int?> generateHours(int divisions, min, max) {
  final hours = List<int?>.generate(divisions, (index) {
    final val = min.round() + index;
    if (val >= max) {
      return max.round();
    }
    return val;
  });
  return hours;
}

/// Convert TimeOfDay to double for comparison
double timeOfDayToDouble(TimeOfDay myTime) => myTime.hour + myTime.minute / 60.0;
