import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart';
import 'package:trip_planner/features/day_trips/data/repositories/day_trips_repository_impl.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import 'day_trips_repository_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DayTripsDataSource>(),
  MockSpec<FirebaseCrashlytics>(),
])
void main() {
  late MockDayTripsDataSource mockDayTripsDataSource;
  late MockFirebaseCrashlytics mockCrashlytics;
  late DayTripsRepositoryImpl repository;

  const tDayTrip = DayTrip(
    id: 'id',
    index: 0,
    description: 'description',
  );

  const tTripId = 'tripId';

  setUp(() {
    mockDayTripsDataSource = MockDayTripsDataSource();
    mockCrashlytics = MockFirebaseCrashlytics();
    repository = DayTripsRepositoryImpl(mockDayTripsDataSource, mockCrashlytics);
  });

  group('createDayTrip', () {
    test('should return right(null) when createDayTrip', () async {
      when(mockDayTripsDataSource.addDayTrip(tripId: tTripId, dayTrip: tDayTrip))
          .thenAnswer((_) async {});

      // act
      final result = await repository.addDayTrip(tripId: tTripId, dayTrip: tDayTrip);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when createDayTrip throws', () async {
      when(mockDayTripsDataSource.addDayTrip(tripId: tTripId, dayTrip: tDayTrip))
          .thenThrow(Exception());

      // act
      final result = await repository.addDayTrip(tripId: tTripId, dayTrip: tDayTrip);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('listenDayTrips', () {
    test('should return right(List<DayTrip>) when listenDayTrips', () async {
      final tDayTrips = [tDayTrip];
      when(mockDayTripsDataSource.listenDayTrips(any)).thenAnswer((_) => Stream.value(tDayTrips));

      // act
      final result = repository.listenDayTrips('tripId');
      // assert
      expect(result, emitsInOrder([right(tDayTrips)]));
    });

    test('should return left(DayTripsFailure()) when listenDayTrips throws', () async {
      when(mockDayTripsDataSource.listenDayTrips(any)).thenThrow(Exception());

      // act
      final result = repository.listenDayTrips('tripId');
      // assert
      expect(result, emitsInOrder([left(const DayTripsFailure())]));
    });
  });

  group('updateDayTripsIndexes', () {
    test('should return right(null) when updateDayTripsIndexes', () async {
      when(mockDayTripsDataSource.updateDayTripsIndexes(tripId: tTripId, dayTrips: [tDayTrip]))
          .thenAnswer((_) async {});

      // act
      final result = await repository.updateDayTripsIndexes(tripId: tTripId, dayTrips: [tDayTrip]);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when updateDayTripsIndexes throws', () async {
      when(mockDayTripsDataSource.updateDayTripsIndexes(tripId: tTripId, dayTrips: [tDayTrip]))
          .thenThrow(Exception());

      // act
      final result = await repository.updateDayTripsIndexes(tripId: tTripId, dayTrips: [tDayTrip]);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('updateDayTrip', () {
    test('should return right(null) when updateDayTrip', () async {
      when(mockDayTripsDataSource.updateDayTrip(
              id: tDayTrip.id, tripId: tTripId, description: tDayTrip.description))
          .thenAnswer((_) async {});

      // act
      final result = await repository.updateDayTrip(
          id: tDayTrip.id, tripId: tTripId, description: tDayTrip.description);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when updateDayTrip throws', () async {
      when(mockDayTripsDataSource.updateDayTrip(
              id: tDayTrip.id, tripId: tTripId, description: tDayTrip.description))
          .thenThrow(Exception());

      // act
      final result = await repository.updateDayTrip(
          id: tDayTrip.id, tripId: tTripId, description: tDayTrip.description);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('updateDayTripStartTime', () {
    test('should return right(null) when updateDayTripStartTime', () async {
      when(mockDayTripsDataSource.updateDayTripStartTime(
              id: tDayTrip.id, tripId: tTripId, startTime: tDayTrip.startTime))
          .thenAnswer((_) async {});

      // act
      final result = await repository.updateDayTripStartTime(
          id: tDayTrip.id, tripId: tTripId, startTime: tDayTrip.startTime);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when updateDayTripStartTime throws', () async {
      when(mockDayTripsDataSource.updateDayTripStartTime(
              id: tDayTrip.id, tripId: tTripId, startTime: tDayTrip.startTime))
          .thenThrow(Exception());

      // act
      final result = await repository.updateDayTripStartTime(
          id: tDayTrip.id, tripId: tTripId, startTime: tDayTrip.startTime);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('deleteDayTrip', () {
    test('should return right(null) when deleteDayTrip', () async {
      when(mockDayTripsDataSource.deleteDayTrip(tripId: tTripId, dayTripId: tDayTrip.id))
          .thenAnswer((_) async {});

      // act
      final result = await repository.deleteDayTrip(tripId: tTripId, dayTripId: tDayTrip.id);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when deleteDayTrip throws', () async {
      when(mockDayTripsDataSource.deleteDayTrip(tripId: tTripId, dayTripId: tDayTrip.id))
          .thenThrow(Exception());

      // act
      final result = await repository.deleteDayTrip(tripId: tTripId, dayTripId: tDayTrip.id);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('saveTripStopsDirections', () {
    test('should return right(null) when saveTripStopsDirections', () async {
      when(mockDayTripsDataSource.saveTripStopsDirections(
          tripId: tTripId,
          dayTripId: tDayTrip.id,
          tripStopsDirections: [])).thenAnswer((_) async {});

      // act
      final result = await repository.saveTripStopsDirections(
          tripId: tTripId, dayTripId: tDayTrip.id, tripStopsDirections: []);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when saveTripStopsDirections throws', () async {
      when(mockDayTripsDataSource.saveTripStopsDirections(
          tripId: tTripId, dayTripId: tDayTrip.id, tripStopsDirections: [])).thenThrow(Exception());

      // act
      final result = await repository.saveTripStopsDirections(
          tripId: tTripId, dayTripId: tDayTrip.id, tripStopsDirections: []);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('listenDayTrip', () {
    test('should return right(DayTrip) when listenDayTrip', () async {
      when(mockDayTripsDataSource.listenDayTrip(tTripId, tDayTrip.id))
          .thenAnswer((_) => Stream.value(tDayTrip));

      // act
      final result = repository.listenDayTrip(tTripId, tDayTrip.id);
      // assert
      expect(result, emitsInOrder([right(tDayTrip)]));
    });

    test('should return left(DayTripsFailure()) when listenDayTrip throws', () async {
      when(mockDayTripsDataSource.listenDayTrip(any, any)).thenThrow(Exception());

      // act
      final result = repository.listenDayTrip(tTripId, tDayTrip.id);
      // assert
      expect(result, emitsInOrder([left(const DayTripsFailure())]));
    });
  });

  group('updateTripStopsDirectionsUpToDate', () {
    test('should return right(null) when updateTripStopsDirectionsUpToDate', () async {
      when(mockDayTripsDataSource.updateTripStopsDirectionsUpToDate(
              tripId: tTripId, dayTripId: tDayTrip.id, isUpToDate: true))
          .thenAnswer((_) async {});

      // act
      final result = await repository.updateTripStopsDirectionsUpToDate(
          tripId: tTripId, dayTripId: tDayTrip.id, isUpToDate: true);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when updateTripStopsDirectionsUpToDate throws',
        () async {
      when(mockDayTripsDataSource.updateTripStopsDirectionsUpToDate(
              tripId: tTripId, dayTripId: tDayTrip.id, isUpToDate: true))
          .thenThrow(Exception());

      // act
      final result = await repository.updateTripStopsDirectionsUpToDate(
          tripId: tTripId, dayTripId: tDayTrip.id, isUpToDate: true);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('updateDayTripUseDifferentDirectionsColors', () {
    test('should return right(null) when updateDayTripUseDifferentDirectionsColors', () async {
      when(mockDayTripsDataSource.updateDayTripUseDifferentDirectionsColors(
              tripId: tTripId, dayTripId: tDayTrip.id, useDifferentDirectionsColors: true))
          .thenAnswer((_) async {});

      // act
      final result = await repository.updateDayTripUseDifferentDirectionsColors(
          tripId: tTripId, dayTripId: tDayTrip.id, useDifferentDirectionsColors: true);
      // assert
      expect(result, equals(right(null)));
    });

    test(
        'should return left(DayTripsFailure()) when updateDayTripUseDifferentDirectionsColors throws',
        () async {
      when(mockDayTripsDataSource.updateDayTripUseDifferentDirectionsColors(
              tripId: tTripId, dayTripId: tDayTrip.id, useDifferentDirectionsColors: true))
          .thenThrow(Exception());

      // act
      final result = await repository.updateDayTripUseDifferentDirectionsColors(
          tripId: tTripId, dayTripId: tDayTrip.id, useDifferentDirectionsColors: true);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('updateDayTripShowDirections', () {
    test('should return right(null) when updateDayTripShowDirections', () async {
      when(mockDayTripsDataSource.updateDayTripShowDirections(
              tripId: tTripId, dayTripId: tDayTrip.id, showDirections: true))
          .thenAnswer((_) async {});

      // act
      final result = await repository.updateDayTripShowDirections(
          tripId: tTripId, dayTripId: tDayTrip.id, showDirections: true);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when updateDayTripShowDirections throws', () async {
      when(mockDayTripsDataSource.updateDayTripShowDirections(
              tripId: tTripId, dayTripId: tDayTrip.id, showDirections: true))
          .thenThrow(Exception());

      // act
      final result = await repository.updateDayTripShowDirections(
          tripId: tTripId, dayTripId: tDayTrip.id, showDirections: true);
      // assert
      expect(result, equals(left(const DayTripsFailure())));

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });
}
