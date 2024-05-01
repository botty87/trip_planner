import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';
import 'package:quiver/collection.dart';

import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/old_trip.dart';
import '../../domain/entities/trip_stops_container.dart';
import '../../domain/repositories/old_trips_repository.dart';
import '../../errors/import_old_trips_failure.dart';
import '../datasources/old_trips_data_source.dart';

@LazySingleton(as: OldTripsRepository)
final class OldTripsRepositoryImpl implements OldTripsRepository {
  final OldTripsDataSource _oldTripsDataSource;
  final FirebaseCrashlytics _crashlytics;

  OldTripsRepositoryImpl(this._oldTripsDataSource, this._crashlytics);

  @override
  Future<Either<ImportOldTripsFailure, List<OldTrip>>> readOldTrips(
      {required String userId}) async {
    try {
      final oldTrips = await _oldTripsDataSource.readOldTrips(userId: userId);
      return right(oldTrips);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(ImportOldTripsFailure(message: e.message));
    } on TimeoutException {
      return right([]);
    } catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(ImportOldTripsFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<ImportOldTripsFailure, void>> importOldTrips(
      {required String userId, required ListMultimap<Trip, TripStopsContainer> newTrips}) async {
    try {
      await _oldTripsDataSource.importOldTrips(userId: userId, newTrips: newTrips);
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(ImportOldTripsFailure(message: e.message));
    } catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(ImportOldTripsFailure(message: e.toString()));
    }
  }
}
