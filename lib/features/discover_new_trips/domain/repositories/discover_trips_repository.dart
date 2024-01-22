import 'package:dartz/dartz.dart';

import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../errors/discover_trips_failure.dart';

abstract class DiscoverTripsRepository {
  Future<Either<DiscoverTripsFailure, List<Trip>>> getPublicTrips(String userId);
  Future<Either<DiscoverTripsFailure, List<DayTrip>>> getPublicDayTrips(String tripId);
  Future<Either<DiscoverTripsFailure, List<TripStop>>> getPublicTripStops(
      String tripId, String dayTripId);
}
