import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../../domain/repositories/trips_repository.dart';
import '../datasources/trips_data_source.dart';

@LazySingleton(as: TripsRepository)
class TripsRepositoryImpl implements TripsRepository {
  final TripsDataSource tripsDataSource;  

  TripsRepositoryImpl({
    required this.tripsDataSource,
  });

  @override
  Future<Either<TripsFailure, void>> addTrip(Trip trip) async {
    try {
      await tripsDataSource.addTrip(trip);
      return right(null);
    } on FirebaseException  {
      return left(TripsFailure());
    } on Exception {
      return left(TripsFailure());
    }
  }

}