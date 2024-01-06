import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/trip_stops_directions.dart';
import '../datasources/day_trips_data_source.dart';
import '../../domain/entities/day_trip.dart';
import '../../domain/repositories/day_trips_repository.dart';
import '../../errors/day_trips_failure.dart';

@LazySingleton(as: DayTripsRepository)
class DayTripsRepositoryImpl implements DayTripsRepository {
  final DayTripsDataSource _dayTripsDataSource;

  DayTripsRepositoryImpl(this._dayTripsDataSource);

  @override
  Future<Either<DayTripsFailure, void>> addDayTrip(
      {required String tripId, required DayTrip dayTrip}) async {
    try {
      await _dayTripsDataSource.addDayTrip(tripId: tripId, dayTrip: dayTrip);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }

  @override
  Stream<Either<DayTripsFailure, List<DayTrip>>> listenDayTrips(String tripId) async* {
    try {
      yield* _dayTripsDataSource.listenDayTrips(tripId).map((dayTrips) => right(dayTrips));
    } catch (e) {
      yield left(const DayTripsFailure());
    }
  }

  @override
  Stream<Either<DayTripsFailure, DayTrip>> listenDayTrip(String tripId, String dayTripId) async* {
    try {
      yield* _dayTripsDataSource.listenDayTrip(tripId, dayTripId).map((dayTrip) => right(dayTrip));
    } catch (e) {
      yield left(const DayTripsFailure());
    }
  }

  @override
  Future<Either<DayTripsFailure, void>> updateDayTripsIndexes(
      {required String tripId, required List<DayTrip> dayTrips}) async {
    try {
      await _dayTripsDataSource.updateDayTripsIndexes(tripId: tripId, dayTrips: dayTrips);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }

  @override
  Future<Either<DayTripsFailure, void>> updateDayTrip(
      {required String id, required String tripId, required String? description}) async {
    try {
      await _dayTripsDataSource.updateDayTrip(id: id, tripId: tripId, description: description);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }

  @override
  Future<Either<DayTripsFailure, void>> deleteDayTrip(
      {required String tripId, required String dayTripId}) async {
    try {
      await _dayTripsDataSource.deleteDayTrip(tripId: tripId, dayTripId: dayTripId);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }

  @override
  Future<Either<DayTripsFailure, void>> updateDayTripStartTime(
      {required String id, required String tripId, required TimeOfDay startTime}) async {
    try {
      await _dayTripsDataSource.updateDayTripStartTime(
          id: id, tripId: tripId, startTime: startTime);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }

  @override
  Future<Either<DayTripsFailure, void>> saveTripStopsDirections({
    required String tripId,
    required String dayTripId,
    required List<TripStopsDirections> tripStopsDirections,
  }) async {
    try {
      await _dayTripsDataSource.saveTripStopsDirections(
          tripId: tripId, dayTripId: dayTripId, tripStopsDirections: tripStopsDirections);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }

  @override
  Future<Either<DayTripsFailure, void>> updateTripStopsDirectionsUpToDate(
      {required String tripId,
      required String dayTripId,
      required bool isUpToDate,
      TravelMode? travelMode}) async {
    try {
      await _dayTripsDataSource.updateTripStopsDirectionsUpToDate(
          tripId: tripId, dayTripId: dayTripId, isUpToDate: isUpToDate, travelMode: travelMode);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }

  @override
  Future<Either<DayTripsFailure, void>> updateDayTripShowDirections(
      {required String tripId, required String dayTripId, required bool showDirections}) async {
    try {
      await _dayTripsDataSource.updateDayTripShowDirections(
          tripId: tripId, dayTripId: dayTripId, showDirections: showDirections);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }

  @override
  Future<Either<DayTripsFailure, void>> updateDayTripUseDifferentDirectionsColors(
      {required String tripId,
      required String dayTripId,
      required bool useDifferentDirectionsColors}) async {
    try {
      await _dayTripsDataSource.updateDayTripUseDifferentDirectionsColors(
          tripId: tripId,
          dayTripId: dayTripId,
          useDifferentDirectionsColors: useDifferentDirectionsColors);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(const DayTripsFailure());
    }
  }
}
