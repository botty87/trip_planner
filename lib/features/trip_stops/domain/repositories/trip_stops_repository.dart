import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../errors/trip_stops_failure.dart';

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

  Future<Either<TripStopsFailure, void>> updateTripStopsIndexes({
    required String tripId,
    required String dayTripId,
    required List<TripStop> tripStops,
  });

  Future<Either<TripStopsFailure, void>> updateTravelTime({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required int travelTime,
  });

  Future<Either<TripStopsFailure, void>> updateTripStopDone({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required bool isDone,
  });

  Future<Either<TripStopsFailure, void>> updateTripStopNote({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required String? note,
  });

  Future<Either<TripStopsFailure, void>> deleteTripStop({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
  });

  Future<Either<TripStopsFailure, void>> updateTripStop({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required String name,
    required String? description,
    required int duration,
    required LatLng location,
  });

  Future<Either<TripStopsFailure, void>> updateTripStopPlaceholder({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required TripStopPlaceholder? placeholder,
  });
}
