import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

abstract class TripStopsRepository {
  Future<Either<TripStopsFailure, void>> addTripStop(
      {required String tripId,
      required String dayTripId,
      required String name,
      String? description,
      required LatLng location,
      required TimeOfDay startTime,
      required TimeOfDay endTime});
}
