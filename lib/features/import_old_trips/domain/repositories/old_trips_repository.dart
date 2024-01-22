import 'package:dartz/dartz.dart';
import 'package:quiver/collection.dart';

import '../../../trips/domain/entities/trip.dart';
import '../../errors/import_old_trips_failure.dart';
import '../entities/old_trip.dart';
import '../entities/trip_stops_container.dart';

abstract class OldTripsRepository {
  Future<Either<ImportOldTripsFailure, List<OldTrip>>> readOldTrips({required String userId});

  Future<Either<ImportOldTripsFailure, void>> importOldTrips(
      {required String userId, required ListMultimap<Trip, TripStopsContainer> newTrips});
}
