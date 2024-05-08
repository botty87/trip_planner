// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/utilities/data_converter.dart';

part 'trip_stop.freezed.dart';
part 'trip_stop.g.dart';

@freezed
sealed class TripStop with _$TripStop {
  const factory TripStop({
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') String id,
    required int index,
    required String name,
    String? description,
    //Duration of the stop in minutes
    required int duration,
    @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint) required LatLng location,
    @Default(false) bool isDone,
    @Default(0) int travelTimeToNextStop, // in minutes
    String? note,
    TripStopPlaceholder? placeholder,
  }) = _TripStop;

  factory TripStop.create({
    required String name,
    required int index,
    String? description,
    required int duration,
    required LatLng location,
  }) =>
      TripStop(
        name: name,
        description: description,
        index: index,
        duration: duration,
        location: location,
      );

  factory TripStop.createFromExisting({
    required TripStop tripStop,
  }) =>
      TripStop(
        name: tripStop.name,
        description: tripStop.description,
        index: tripStop.index,
        duration: tripStop.duration,
        location: tripStop.location,
        travelTimeToNextStop: tripStop.travelTimeToNextStop,
      );

  factory TripStop.fromJson(Map<String, dynamic> json) => _$TripStopFromJson(json);
}

class StartEndTime extends Equatable {
  final DateTime startTime;
  final DateTime endTime;

  const StartEndTime({
    required this.startTime,
    required this.endTime,
  });

  @override
  List<Object?> get props => [startTime, endTime];
}

@freezed
class TripStopPlaceholder with _$TripStopPlaceholder {
  const factory TripStopPlaceholder({
    required String name,
    required int duration,
  }) = _TripStopPlaceholder;

  factory TripStopPlaceholder.fromJson(Map<String, dynamic> json) =>
      _$TripStopPlaceholderFromJson(json);

  factory TripStopPlaceholder.create() => const TripStopPlaceholder(
        name: '',
        duration: 0,
      );
}
