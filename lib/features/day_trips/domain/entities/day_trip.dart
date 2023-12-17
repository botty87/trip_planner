// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
    @Default(TimeOfDay(hour: 8, minute: 0))
    TimeOfDay startTime,
    
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
