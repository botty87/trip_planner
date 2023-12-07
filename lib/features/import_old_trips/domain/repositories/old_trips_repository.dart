import 'package:dartz/dartz.dart';
import 'package:quiver/src/collection/multimap.dart';

import '../../../../core/error/failures.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../errors/import_old_trips_failure.dart';
import '../entities/old_trip.dart';
import '../entities/trip_stops_container.dart';

abstract class OldTripsRepository {
  Future<Either<ImportOldTripsFailure, List<OldTrip>>> readOldTrips({required String userId});

  Future<Either<ImportOldTripsFailure, void>> importOldTrips({required String userId, required ListMultimap<Trip, TripStopsContainer> newTrips});
}