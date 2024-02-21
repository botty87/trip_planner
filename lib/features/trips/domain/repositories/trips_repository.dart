import 'package:dartz/dartz.dart';

import '../../errors/trips_failure.dart';
import '../entities/trip.dart';

abstract class TripsRepository {
  Future<Either<TripsFailure, void>> createTrip(Trip trip);

  Future<Either<TripsFailure, void>> createFromExistingTrip({
    required Trip newTrip,
    required Trip existingTrip,
    required bool showDirections,
    required bool useDifferentDirectionsColors,
  });

  Stream<Either<TripsFailure, List<Trip>>> listenTrips(String userId);

  Future<Either<TripsFailure, void>> updateTrip(
      String id, String name, String? description, DateTime startDate, bool isPublic, String languageCode);

  Future<Either<TripsFailure, void>> deleteTrip(Trip trip);

  Future<Either<TripsFailure, void>> deleteAllTrips(String userId);
}
