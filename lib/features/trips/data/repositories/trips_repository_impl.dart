import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/trip.dart';
import '../../domain/repositories/trips_repository.dart';
import '../../errors/trips_exception.dart';
import '../../errors/trips_failure.dart';
import '../datasources/trips_data_source.dart';

@LazySingleton(as: TripsRepository)
class TripsRepositoryImpl implements TripsRepository {
  final TripsDataSource _tripsDataSource;
  final FirebaseCrashlytics _firebaseCrashlytics;

  TripsRepositoryImpl(this._tripsDataSource, this._firebaseCrashlytics);

  @override
  Future<Either<TripsFailure, void>> createTrip(Trip trip) async {
    try {
      await _tripsDataSource.addTrip(trip);
      return right(null);
    } on FirebaseException catch (e) {
      return left(TripsFailure(message: e.message));
    } on Exception catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const TripsFailure());
    }
  }

  @override
  Stream<Either<TripsFailure, List<Trip>>> listenUserTrips(String userId) async* {
    try {
      yield* _tripsDataSource
          .listenUserTrips(userId)
          .map<Either<TripsFailure, List<Trip>>>((trips) => right(trips))
          .handleError((e) => left(const TripsFailure()));
    } catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      yield left(const TripsFailure());
    }
  }

  @override
  Future<Either<TripsFailure, void>> updateTrip(String id, String name, String? description,
      DateTime startDate, bool isPublic, String languageCode) async {
    try {
      await _tripsDataSource.updateTrip(id, name, description, startDate, isPublic, languageCode);
      return right(null);
    } on FirebaseException {
      return left(const TripsFailure());
    } on Exception catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const TripsFailure());
    }
  }

  @override
  Future<Either<TripsFailure, void>> deleteTrip(Trip trip) async {
    try {
      await _tripsDataSource.deleteTrip(trip);
      return right(null);
    } on FirebaseException {
      return left(const TripsFailure());
    } on Exception catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const TripsFailure());
    }
  }

  @override
  Future<Either<TripsFailure, void>> deleteAllTrips(String userId) async {
    try {
      await _tripsDataSource.deleteAllUserTrips(userId);
      return right(null);
    } on FirebaseException {
      _firebaseCrashlytics.recordError('FirebaseException', StackTrace.current);
      return left(const TripsFailure());
    } on Exception catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const TripsFailure());
    }
  }

  @override
  Future<Either<TripsFailure, void>> createFromExistingTrip({
    required Trip newTrip,
    required Trip existingTrip,
    required bool showDirections,
    required bool useDifferentDirectionsColors,
  }) async {
    try {
      await _tripsDataSource.createFromExistingTrip(
        newTrip: newTrip,
        existingTrip: existingTrip,
        showDirections: showDirections,
        useDifferentDirectionsColors: useDifferentDirectionsColors,
      );
      return right(null);
    } on FirebaseException {
      return left(const TripsFailure());
    } on TripsException catch (exception) {
      return exception.map(
        (_) => left(const TripsFailure()),
        noInternetConnection: (_) => left(const TripsFailure.noInternetConnection()),
      );
    } on Exception catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const TripsFailure());
    }
  }

  @override
  Future<Either<ShareTripFailure, void>> addUserForShare(String tripId, String email) async {
    try {
      await _tripsDataSource.addUserForShare(tripId, email);
      return right(null);
    } on FirebaseException catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const ShareTripFailure());
    } on ShareTripException catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return e.map(
        (_) => left(const ShareTripFailure()),
        userNotFound: (_) => left(const ShareTripFailure.userNotFound()),
        noInternetConnection: (_) => left(const ShareTripFailure.noInternetConnection()),
      );
    } on Exception catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const ShareTripFailure());
    }
  }

  @override
  Stream<Either<TripsFailure, Trip?>> listenTrip(String tripId) async* {
    try {
      yield* _tripsDataSource
          .listenTrip(tripId)
          .map<Either<TripsFailure, Trip?>>((trip) => right(trip))
          .handleError((e) => left(const TripsFailure()));
    } catch (e) {
      yield left(const TripsFailure());
    }
  }

  @override
  Future<Either<ShareTripFailure, void>> removeUserForShare(String tripId, String userId) async {
    try {
      await _tripsDataSource.removeUserForShare(tripId, userId);
      return right(null);
    } on FirebaseException catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const ShareTripFailure());
    } on ShareTripException catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return e.map(
        (_) => left(const ShareTripFailure()),
        userNotFound: (_) => left(const ShareTripFailure.userNotFound()),
        noInternetConnection: (_) => left(const ShareTripFailure.noInternetConnection()),
      );
    } on Exception catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      return left(const ShareTripFailure());
    }
  }

  @override
  Stream<Either<TripsFailure, List<Trip>>> listenSharedTrips(String userId) async* {
    try {
      yield* _tripsDataSource
          .listenSharedTrips(userId)
          .map<Either<TripsFailure, List<Trip>>>((trips) => right(trips))
          .handleError((e) => left(const TripsFailure()));
    } catch (e, stackTrace) {
      _firebaseCrashlytics.recordError(e, stackTrace);
      yield left(const TripsFailure());
    }
  }
}
