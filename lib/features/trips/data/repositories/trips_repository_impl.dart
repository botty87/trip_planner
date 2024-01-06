import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/trip.dart';
import '../../errors/trips_failure.dart';

import '../../domain/repositories/trips_repository.dart';
import '../datasources/trips_data_source.dart';

@LazySingleton(as: TripsRepository)
class TripsRepositoryImpl implements TripsRepository {
  final TripsDataSource tripsDataSource;

  TripsRepositoryImpl({
    required this.tripsDataSource,
  });

  @override
  Future<Either<TripsFailure, void>> createTrip(Trip trip) async {
    try {
      await tripsDataSource.addTrip(trip);
      return right(null);
    } on FirebaseException catch (e) {
      return left(TripsFailure(message: e.message));
    } on Exception {
      return left(const TripsFailure());
    }
  }

  @override
  Stream<Either<TripsFailure, List<Trip>>> listenTrips(String userId) async* {
    try {
      yield* tripsDataSource
          .listenTrips(userId)
          .map<Either<TripsFailure, List<Trip>>>((trips) => right(trips))
          .handleError((e) => left(const TripsFailure()));
    } catch (e) {
      yield left(const TripsFailure());
    }
  }

  @override
  Future<Either<TripsFailure, void>> updateTrip(
      String id, String name, String? description, DateTime startDate, bool isPublic) async {
    try {
      await tripsDataSource.updateTrip(id, name, description, startDate, isPublic);
      return right(null);
    } on FirebaseException {
      return left(const TripsFailure());
    } on Exception {
      return left(const TripsFailure());
    }
  }

  @override
  Future<Either<TripsFailure, void>> deleteTrip(Trip trip) async {
    try {
      await tripsDataSource.deleteTrip(trip);
      return right(null);
    } on FirebaseException {
      return left(const TripsFailure());
    } on Exception {
      return left(const TripsFailure());
    }
  }

  @override
  Future<Either<TripsFailure, void>> deleteAllTrips(String userId) async {
    try {
      await tripsDataSource.deleteAllTrips(userId);
      return right(null);
    } on FirebaseException {
      return left(const TripsFailure());
    } on Exception {
      return left(const TripsFailure());
    }
  }
}
