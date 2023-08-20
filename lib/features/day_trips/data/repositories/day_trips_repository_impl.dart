import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/repositories/day_trips_repository.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

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
      return left(DayTripsFailure());
    }
  }

  @override
  Stream<Either<DayTripsFailure, List<DayTrip>>> listenDayTrips(String tripId) async* {
    try {
      yield* _dayTripsDataSource.listenDayTrips(tripId).map((dayTrips) => right(dayTrips));
    } catch (e) {
      yield left(DayTripsFailure());
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
      return left(DayTripsFailure());
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
      return left(DayTripsFailure());
    }
  }
  
  @override
  Future<Either<DayTripsFailure, void>> deleteDayTrip({required String tripId, required String dayTripId}) async {
    try {
      await _dayTripsDataSource.deleteDayTrip(tripId: tripId, dayTripId: dayTripId);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(DayTripsFailure());
    }
  }
}
