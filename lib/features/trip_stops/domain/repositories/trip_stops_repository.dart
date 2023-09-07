import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../entities/trip_stop.dart';

abstract class TripStopsRepository {
  Future<Either<TripStopsFailure, void>> addTripStop({
    required String tripId,
    required String dayTripId,
    required String name,
    String? description,
    required LatLng location,
    required int duration,
  });

  Stream<Either<TripStopsFailure, List<TripStop>>> listenTripStops(
      {required String tripId, required String dayTripId});
}
