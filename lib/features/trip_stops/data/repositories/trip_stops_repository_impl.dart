import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/trip_stop.dart';
import '../../errors/trip_stops_failure.dart';

import '../../domain/repositories/trip_stops_repository.dart';
import '../datasources/trip_stops_data_source.dart';

@LazySingleton(as: TripStopsRepository)
class TripStopsRepositoryImpl implements TripStopsRepository {
  final TripStopsDataSource _tripStopsDataSource;
  final FirebaseCrashlytics _crashlytics;

  TripStopsRepositoryImpl(this._tripStopsDataSource, this._crashlytics);

  @override
  Future<Either<TripStopsFailure, void>> addTripStop({
    required String tripId,
    required String dayTripId,
    required String name,
    String? description,
    required LatLng location,
    required int duration,
  }) async {
    try {
      await _tripStopsDataSource.addTripStop(
        tripId: tripId,
        dayTripId: dayTripId,
        name: name,
        description: description,
        location: location,
        duration: duration,
      );
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(TripStopsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TripStopsFailure());
    }
  }

  @override
  Stream<Either<TripStopsFailure, List<TripStop>>> listenTripStops(
      {required String tripId, required String dayTripId}) async* {
    try {
      yield* _tripStopsDataSource
          .listenTripStops(tripId: tripId, dayTripId: dayTripId)
          .map((tripStops) => right(tripStops));
    } catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      yield left(const TripStopsFailure());
    }
  }

  @override
  Future<Either<TripStopsFailure, void>> updateTripStopsIndexes(
      {required String tripId,
      required String dayTripId,
      required List<TripStop> tripStops}) async {
    try {
      await _tripStopsDataSource.updateTripStopsIndexes(
        tripId: tripId,
        dayTripId: dayTripId,
        tripStops: tripStops,
      );
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(TripStopsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TripStopsFailure());
    }
  }

  @override
  Future<Either<TripStopsFailure, void>> updateTravelTime(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required int travelTime}) async {
    try {
      await _tripStopsDataSource.updateTravelTime(
        tripId: tripId,
        dayTripId: dayTripId,
        tripStopId: tripStopId,
        travelTime: travelTime,
      );
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(TripStopsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TripStopsFailure());
    }
  }

  @override
  Future<Either<TripStopsFailure, void>> updateTripStopDone(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required bool isDone}) async {
    try {
      await _tripStopsDataSource.updateTripStopDone(
        tripId: tripId,
        dayTripId: dayTripId,
        tripStopId: tripStopId,
        isDone: isDone,
      );
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(TripStopsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TripStopsFailure());
    }
  }

  @override
  Future<Either<TripStopsFailure, void>> updateTripStopNote(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required String? note}) async {
    try {
      await _tripStopsDataSource.updateTripStopNote(
        tripId: tripId,
        dayTripId: dayTripId,
        tripStopId: tripStopId,
        note: note,
      );
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(TripStopsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TripStopsFailure());
    }
  }

  @override
  Future<Either<TripStopsFailure, void>> deleteTripStop(
      {required String tripId, required String dayTripId, required String tripStopId}) async {
    try {
      await _tripStopsDataSource.deleteTripStop(
        tripId: tripId,
        dayTripId: dayTripId,
        tripStopId: tripStopId,
      );
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(TripStopsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TripStopsFailure());
    }
  }

  @override
  Future<Either<TripStopsFailure, void>> updateTripStop(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required String name,
      required String? description,
      required int duration,
      required LatLng location}) async {
    try {
      await _tripStopsDataSource.updateTripStop(
        tripId: tripId,
        dayTripId: dayTripId,
        tripStopId: tripStopId,
        name: name,
        description: description,
        duration: duration,
        location: location,
      );
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(TripStopsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TripStopsFailure());
    }
  }

  @override
  Future<Either<TripStopsFailure, void>> updateTripStopPlaceholder({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required TripStopPlaceholder? placeholder,
  }) async {
    try {
      await _tripStopsDataSource.updateTripStopPlaceholder(
        tripId: tripId,
        dayTripId: dayTripId,
        tripStopId: tripStopId,
        placeholder: placeholder,
      );
      return right(null);
    } on FirebaseException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(TripStopsFailure(message: e.message));
    } on Exception catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return left(const TripStopsFailure());
    }
  }
}
