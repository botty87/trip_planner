import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/import_old_trips/data/datasources/old_trips_data_source.dart';
import 'package:trip_planner/features/import_old_trips/data/repositories/old_trips_repository_impl.dart';
import 'package:trip_planner/features/import_old_trips/domain/entities/old_trip.dart';
import 'package:trip_planner/features/import_old_trips/errors/import_old_trips_failure.dart';

import 'old_trips_repository_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<OldTripsDataSource>(),
  MockSpec<FirebaseCrashlytics>(),
])
void main() {
  late OldTripsRepositoryImpl repository;
  late MockFirebaseCrashlytics mockCrashlytics;
  late MockOldTripsDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockOldTripsDataSource();
    mockCrashlytics = MockFirebaseCrashlytics();
    repository = OldTripsRepositoryImpl(mockDataSource, mockCrashlytics);
  });

  group('readOldTrips', () {
    const userId = 'userId';
    const oldTrips = [
      OldTrip(id: '1', name: 'Trip 1', dailyTrips: []),
      OldTrip(id: '2', name: 'Trip 2', dailyTrips: [])
    ];

    test('should return a list of old trips when data source returns successfully', () async {
      // arrange
      when(mockDataSource.readOldTrips(userId: userId)).thenAnswer((_) async => oldTrips);
      // act
      final result = await repository.readOldTrips(userId: userId);
      // assert
      expect(result, right(oldTrips));
      verify(mockDataSource.readOldTrips(userId: userId));
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return an ImportOldTripsFailure when data source throws a FirebaseException',
        () async {
      // arrange
      const errorMessage = 'Firebase error';
      when(mockDataSource.readOldTrips(userId: userId))
          .thenThrow(FirebaseException(message: errorMessage, plugin: 'plugin'));
      // act
      final result = await repository.readOldTrips(userId: userId);
      // assert
      expect(result, left(const ImportOldTripsFailure(message: errorMessage)));
      verify(mockDataSource.readOldTrips(userId: userId));
      verifyNoMoreInteractions(mockDataSource);

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });

    test(
        'should return an ImportOldTripsFailure with the error message when data source throws an exception',
        () async {
      // arrange
      const errorMessage = 'Unknown error';
      when(mockDataSource.readOldTrips(userId: userId)).thenThrow(Exception(errorMessage));
      // act
      final result = await repository.readOldTrips(userId: userId);
      // assert
      expect(result, left(const ImportOldTripsFailure(message: "Exception: $errorMessage")));
      verify(mockDataSource.readOldTrips(userId: userId));
      verifyNoMoreInteractions(mockDataSource);

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });
}
