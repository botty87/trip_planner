import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/repositories/discover_trips_repository.dart';
import '../../errors/discover_trips_failure.dart';
import '../datasources/discover_trips_data_source.dart';

@LazySingleton(as: DiscoverTripsRepository)
class DiscoverTripsRepositoryImpl implements DiscoverTripsRepository {
  final DiscoverTripsDataSource dataSource;
  final FirebaseCrashlytics _crashlytics;

  const DiscoverTripsRepositoryImpl(this.dataSource, this._crashlytics);

  @override
  Future<Either<DiscoverTripsFailure, List<Trip>>> getPublicTrips(String userId) async {
    try {
      final trips = await dataSource.getPublicTrips(userId);
      return Right(trips);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return Left(DiscoverTripsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return const Left(DiscoverTripsFailure());
    }
  }

  @override
  Future<Either<DiscoverTripsFailure, List<DayTrip>>> getPublicDayTrips(String tripId) async {
    try {
      final dayTrips = await dataSource.getPublicDayTrips(tripId);
      return Right(dayTrips);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return Left(DiscoverTripsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return const Left(DiscoverTripsFailure());
    }
  }

  @override
  Future<Either<DiscoverTripsFailure, List<TripStop>>> getPublicTripStops(
      String tripId, String dayTripId) async {
    try {
      final tripStops = await dataSource.getPublicTripStops(tripId, dayTripId);
      return Right(tripStops);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return Left(DiscoverTripsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return const Left(DiscoverTripsFailure());
    }
  }
}
