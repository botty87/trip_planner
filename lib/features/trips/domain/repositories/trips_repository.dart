import 'package:dartz/dartz.dart';

import '../../errors/trips_failure.dart';
import '../entities/trip.dart';

abstract class TripsRepository {
  Future<Either<TripsFailure, void>> createTrip(Trip trip);

  Stream<Either<TripsFailure, List<Trip>>> listenTrips(String userId);

  Future<Either<TripsFailure, void>> updateTrip(String id, String name, String? description, DateTime startDate);

  Future<Either<TripsFailure, void>> deleteTrip(Trip trip);

  Future<Either<TripsFailure, void>> deleteAllTrips(String userId);
}
