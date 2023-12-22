// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/utilities/data_converter.dart';

part 'trip_stops_directions.freezed.dart';
part 'trip_stops_directions.g.dart';

@freezed
class TripStopsDirections with _$TripStopsDirections {
  factory TripStopsDirections({
    required String originId,
    required String destinationId,
    @JsonKey(toJson: latLngsToGeoPoints, fromJson: geoPointsToLatLngs) List<LatLng>? points,
    @JsonKey(includeIfNull: false) String? errorMessage,
  }) = _TripStopsDirections;

  factory TripStopsDirections.fromJson(Map<String, dynamic> json) =>
      _$TripStopsDirectionsFromJson(json);
}
