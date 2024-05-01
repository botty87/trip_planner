import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/discover_new_trips/data/datasources/discover_trips_data_source.dart';
import 'package:trip_planner/features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart';
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import 'discover_trips_repository_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DiscoverTripsDataSource>(),
  MockSpec<FirebaseCrashlytics>(),
])
void main() {
  late MockDiscoverTripsDataSource mockDataSource;
  late MockFirebaseCrashlytics mockCrashlytics;
  late DiscoverTripsRepositoryImpl repository;

  const tTrips = <Trip>[];
  const tUserId = 'userId';

  const tDayTrips = <DayTrip>[];
  const tTripId = 'tripId';

  setUp(() {
    mockDataSource = MockDiscoverTripsDataSource();
    mockCrashlytics = MockFirebaseCrashlytics();
    repository = DiscoverTripsRepositoryImpl(mockDataSource, mockCrashlytics);
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

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('getPublicDayTrips', () {
    test('should return list of day trips on success', () async {
      when(mockDataSource.getPublicDayTrips(tTripId)).thenAnswer((_) async => tDayTrips);
      final result = await repository.getPublicDayTrips(tTripId);
      expect(result, const Right(tDayTrips));
      verify(mockDataSource.getPublicDayTrips(tTripId));
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return failure on failure', () async {
      when(mockDataSource.getPublicDayTrips(tTripId)).thenThrow(Exception());
      final result = await repository.getPublicDayTrips(tTripId);
      expect(result, const Left(DiscoverTripsFailure()));
      verify(mockDataSource.getPublicDayTrips(tTripId));
      verifyNoMoreInteractions(mockDataSource);

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('getPublicTripStops', () {
    const tTripStops = <TripStop>[];
    const tDayTripId = 'dayTripId';

    test('should return list of trip stops on success', () async {
      when(mockDataSource.getPublicTripStops(tTripId, tDayTripId))
          .thenAnswer((_) async => tTripStops);
      final result = await repository.getPublicTripStops(tTripId, tDayTripId);
      expect(result, const Right(tTripStops));
      verify(mockDataSource.getPublicTripStops(tTripId, tDayTripId));
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return failure on failure', () async {
      when(mockDataSource.getPublicTripStops(tTripId, tDayTripId)).thenThrow(Exception());
      final result = await repository.getPublicTripStops(tTripId, tDayTripId);
      expect(result, const Left(DiscoverTripsFailure()));
      verify(mockDataSource.getPublicTripStops(tTripId, tDayTripId));
      verifyNoMoreInteractions(mockDataSource);

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });
}
