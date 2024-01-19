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
    @JsonKey(includeIfNull: false) List<TripStopsDirections>? tripStopsDirections,
    @Default(false) bool tripStopsDirectionsUpToDate,
    @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
    @Default(TravelMode.driving)
    TravelMode travelMode,
    @Default(true) bool showDirections,
    @Default(true) bool useDifferentDirectionsColors,
  }) = _DayTrip;

  factory DayTrip.create({
    String? description,
    required TimeOfDay startTime,
    required TravelMode travelMode,
    required bool showDirections,
    required bool useDifferentDirectionsColors,
  }) =>
      DayTrip(
        index: -1,
        description: description,
        startTime: startTime,
        travelMode: travelMode,
        showDirections: showDirections,
        useDifferentDirectionsColors: useDifferentDirectionsColors,
      );

  factory DayTrip.createFromExisting({
    required DayTrip dayTrip,
    required bool showDirections,
    required bool useDifferentDirectionsColors,
  }) =>
      DayTrip(
        index: dayTrip.index,
        description: dayTrip.description,
        startTime: dayTrip.startTime,
        travelMode: dayTrip.travelMode,
        tripStopsDirections: dayTrip.tripStopsDirections,
        tripStopsDirectionsUpToDate: dayTrip.tripStopsDirectionsUpToDate,
        showDirections: showDirections,
        useDifferentDirectionsColors: useDifferentDirectionsColors,
      );

  factory DayTrip.fromJson(Map<String, dynamic> json) => _$DayTripFromJson(json);
}
