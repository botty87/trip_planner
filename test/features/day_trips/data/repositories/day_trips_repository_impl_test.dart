import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart';
import 'package:trip_planner/features/day_trips/data/repositories/day_trips_repository_impl.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import 'day_trips_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DayTripsDataSource>()])
void main() {
  late MockDayTripsDataSource mockDayTripsDataSource;
  late DayTripsRepositoryImpl repository;

  const tDayTrip = DayTrip(
    id: 'id',
    index: 0,
    description: 'description',
  );

  const tTripId = 'tripId';

  setUp(() {
    mockDayTripsDataSource = MockDayTripsDataSource();
    repository = DayTripsRepositoryImpl(mockDayTripsDataSource);
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
    });
  });
  
}
