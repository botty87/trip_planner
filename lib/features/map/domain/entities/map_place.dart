import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../trip_stops/domain/entities/trip_stop.dart';

part 'map_place.freezed.dart';

@freezed
class MapPlace with _$MapPlace {
  factory MapPlace.existing({
    required String tripStopId,
    required String name,
    required String? description,
    required LatLng location,
    required bool isDone,
  }) = _MapPlaceExisting;

  factory MapPlace.newPlace({
    required LatLng location,
  }) = _MapPlaceNew;
}

extension TripStopX on TripStop {
  MapPlace toMapPlace() {
    return MapPlace.existing(
      tripStopId: id,
      name: name,
      description: description,
      location: location,
      isDone: isDone,
    );
  }
}
