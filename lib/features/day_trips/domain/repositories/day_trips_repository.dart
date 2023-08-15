import 'package:dartz/dartz.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';

import '../../errors/day_trips_failure.dart';

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
}
