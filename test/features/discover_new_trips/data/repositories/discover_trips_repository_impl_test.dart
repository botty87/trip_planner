import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/discover_new_trips/data/datasources/discover_trips_data_source.dart';
import 'package:trip_planner/features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart';
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import 'discover_trips_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DiscoverTripsDataSource>()])
void main() {
  late MockDiscoverTripsDataSource mockDataSource;
  late DiscoverTripsRepositoryImpl repository;

  const tTrips = <Trip>[];
  const tUserId = 'userId';

  setUp(() {
    mockDataSource = MockDiscoverTripsDataSource();
    repository = DiscoverTripsRepositoryImpl(mockDataSource);
  });

  group('getPublicTrips', () {
    test('should return list of trips on success', () async {
      when(mockDataSource.getPublicTrips(tUserId)).thenAnswer((_) async => tTrips);
      final result = await repository.getPublicTrips(tUserId);
      expect(result, const Right(tTrips));
      verify(mockDataSource.getPublicTrips(tUserId));
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return failure on failure', () async {
      when(mockDataSource.getPublicTrips(tUserId)).thenThrow(Exception());
      final result = await repository.getPublicTrips(tUserId);
      expect(result, const Left(DiscoverTripsFailure()));
      verify(mockDataSource.getPublicTrips(tUserId));
      verifyNoMoreInteractions(mockDataSource);
    });
  });
}