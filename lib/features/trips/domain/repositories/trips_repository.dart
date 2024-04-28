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

  Stream<Either<TripsFailure, List<Trip>>> listenUserTrips(String userId);

  Stream<Either<TripsFailure, List<Trip>>> listenSharedTrips(String userId);

  Future<Either<TripsFailure, void>> updateTrip(
    String id,
    String name,
    String? description,
    DateTime startDate,
    bool isPublic,
    String languageCode,
  );

  Future<Either<TripsFailure, void>> deleteTrip(Trip trip);

  Future<Either<TripsFailure, void>> deleteAllTrips(String userId);

  Future<Either<ShareTripFailure, void>> addUserForShare(String tripId, String email);

  Future<Either<ShareTripFailure, void>> removeUserForShare(String tripId, String userId);

  Stream<Either<TripsFailure, Trip?>> listenTrip(String tripId);
}
