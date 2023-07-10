import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart';
import 'package:trip_planner/features/day_trips/domain/repositories/day_trips_repository.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

@LazySingleton(as: DayTripsRepository)
class DayTripsRepositoryImpl implements DayTripsRepository {
  final DayTripsDataSource _dayTripsDataSource;

  DayTripsRepositoryImpl(this._dayTripsDataSource);

  @override
  Future<Either<DayTripsFailure, void>> createDayTrip(
      {required String name, String? description, required String tripId}) async {
    try {
      await _dayTripsDataSource.createDayTrip(name: name, description: description, tripId: tripId);
      return right(null);
    } on FirebaseException catch (e) {
      return left(DayTripsFailure(message: e.message));
    } on Exception {
      return left(DayTripsFailure());
    }
  }
}
