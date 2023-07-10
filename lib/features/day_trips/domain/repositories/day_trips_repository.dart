import 'package:dartz/dartz.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';

import '../../errors/day_trips_failure.dart';

abstract class DayTripsRepository {
  Future<Either<DayTripsFailure, void>> createDayTrip(
      {required String name, String? description, required String tripId});

  Stream<Either<DayTripsFailure, List<DayTrip>>> listenDayTrips(String tripId);
}
