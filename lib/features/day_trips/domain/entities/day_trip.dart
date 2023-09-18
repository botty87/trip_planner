// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';

part 'day_trip.freezed.dart';
part 'day_trip.g.dart';

@freezed
sealed class DayTrip with _$DayTrip {
  const factory DayTrip({
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') String id,
    required int index,
    String? description,
    @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
    @Default(TimeOfDay(hour: 8, minute: 0)) TimeOfDay startTime,
  }) = _DayTrip;

  factory DayTrip.create({
    String? description,
  }) =>
      DayTrip(
        index: -1,
        description: description,
      );

  factory DayTrip.fromJson(Map<String, dynamic> json) => _$DayTripFromJson(json);
}
