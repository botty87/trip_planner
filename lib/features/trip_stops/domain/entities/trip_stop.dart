// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/utilities/data_converter.dart';

part 'trip_stop.freezed.dart';
part 'trip_stop.g.dart';

@freezed
sealed class TripStop with _$TripStop {
  const factory TripStop({
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') String id,
    required String name,
    String? description,
    @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
    required TimeOfDay startTime,
    @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
    required TimeOfDay endTime,
    @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
    required LatLng location,
    @Default(false) bool isDone,
  }) = _TripStop;

  factory TripStop.create({
    required String name,
    String? description,
    required TimeOfDay startTime,
    required TimeOfDay endTime,
    required LatLng location,
  }) =>
      TripStop(
        name: name,
        description: description,
        startTime: startTime,
        endTime: endTime,
        location: location,
      );

  factory TripStop.fromJson(Map<String, dynamic> json) => _$TripStopFromJson(json);
}
