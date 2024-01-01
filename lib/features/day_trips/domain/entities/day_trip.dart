// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';
import 'trip_stops_directions.dart';

part 'day_trip.freezed.dart';
part 'day_trip.g.dart';

@freezed
sealed class DayTrip with _$DayTrip {
  const factory DayTrip({
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') String id,
    required int index,
    String? description,
    @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
    @Default(TimeOfDay(hour: 8, minute: 0))
    TimeOfDay startTime,
    @JsonKey(includeIfNull: false)
    List<TripStopsDirections>? tripStopsDirections,
    @Default(false) bool tripStopsDirectionsUpToDate,
    @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
    @Default(TravelMode.driving) TravelMode travelMode,
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
