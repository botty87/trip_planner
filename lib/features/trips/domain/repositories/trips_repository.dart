import 'package:dartz/dartz.dart';

import '../../errors/trips_failure.dart';
import '../entities/trip.dart';

abstract class TripsRepository {
  Future<Either<TripsFailure, void>> addTrip(Trip trip);
  Stream<Either<TripsFailure, List<Trip>>> listenTrips(String userId);

  Future<Either<TripsFailure, void>> updateTrip(String id, String name, String? description);
}