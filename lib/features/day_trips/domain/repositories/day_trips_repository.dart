import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import '../entities/day_trip.dart';

import '../../errors/day_trips_failure.dart';
import '../entities/trip_stops_directions.dart';

abstract class DayTripsRepository {
  Future<Either<DayTripsFailure, void>> addDayTrip(
      {required String tripId, required DayTrip dayTrip});

  Stream<Either<DayTripsFailure, List<DayTrip>>> listenDayTrips(String tripId);

  Future<Either<DayTripsFailure, void>> updateDayTripsIndexes(
      {required String tripId, required List<DayTrip> dayTrips});

  Future<Either<DayTripsFailure, void>> updateDayTrip({
    required String id,
    required String tripId,
    required String? description,
  });

  Future<Either<DayTripsFailure, void>> updateDayTripStartTime({
    required String id,
    required String tripId,
    required TimeOfDay startTime,
  });

  Future<Either<DayTripsFailure, void>> deleteDayTrip(
      {required String tripId, required String dayTripId});

  Future<Either<DayTripsFailure, void>> saveTripStopsDirections({
    required String tripId,
    required String dayTripId,
    required List<TripStopsDirections> tripStopsDirections,
  });

  Stream<Either<DayTripsFailure, DayTrip>> listenDayTrip(String tripId, String dayTripId);

  Future<Either<DayTripsFailure, void>> updateTripStopsDirectionsUpToDate(
      {required String tripId,
      required String dayTripId,
      required bool isUpToDate,
      TravelMode? travelMode});

  Future<Either<DayTripsFailure, void>> updateDayTripShowDirections(
      {required String tripId, required String dayTripId, required bool showDirections});

  Future<Either<DayTripsFailure, void>> updateDayTripUseDifferentDirectionsColors(
      {required String tripId,
      required String dayTripId,
      required bool useDifferentDirectionsColors});
}
