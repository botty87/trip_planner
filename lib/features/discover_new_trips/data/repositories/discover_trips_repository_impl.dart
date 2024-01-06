import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../trips/domain/entities/trip.dart';
import '../../domain/repositories/discover_trips_repository.dart';
import '../../errors/discover_trips_failure.dart';
import '../datasources/discover_trips_data_source.dart';

@LazySingleton(as: DiscoverTripsRepository)
class DiscoverTripsRepositoryImpl implements DiscoverTripsRepository {
  final DiscoverTripsDataSource dataSource;

  const DiscoverTripsRepositoryImpl(this.dataSource);

  @override
  Future<Either<DiscoverTripsFailure, List<Trip>>> getPublicTrips(String userId) async {
    try {
      final trips = await dataSource.getPublicTrips(userId);
      return Right(trips);
    } on FirebaseException catch (e) {
      return Left(DiscoverTripsFailure(message: e.message));
    } on Exception {
      return const Left(DiscoverTripsFailure());
    }
  }
  
}