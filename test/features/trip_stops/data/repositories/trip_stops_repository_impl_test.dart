import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/data/datasources/trip_stops_data_source.dart';
import 'package:trip_planner/features/trip_stops/data/repositories/trip_stops_repository_impl.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import 'trip_stops_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TripStopsDataSource>()])
void main() {
  late MockTripStopsDataSource mockTripStopsDataSource;
  late TripStopsRepositoryImpl repository;

  const tTripStop = TripStop(
    id: 'id',
    name: 'name',
    description: 'description',
    location: LatLng(0.0, 0.0),
    duration: 0,
    index: 0,
  );

  setUp(() {
    mockTripStopsDataSource = MockTripStopsDataSource();
    repository = TripStopsRepositoryImpl(mockTripStopsDataSource);
  });

  group('addTripStop', () {
    test('should return right(null) when addTripStop', () async {
      when(mockTripStopsDataSource.addTripStop(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        name: anyNamed('name'),
        description: anyNamed('description'),
        location: anyNamed('location'),
        duration: anyNamed('duration'),
      )).thenAnswer((_) async {});

      // act
      final result = await repository.addTripStop(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        name: 'name',
        description: 'description',
        location: const LatLng(0.0, 0.0),
        duration: 0,
      );
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(TripStopsFailure()) when addTripStop throws', () async {
      when(mockTripStopsDataSource.addTripStop(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        name: anyNamed('name'),
        description: anyNamed('description'),
        location: anyNamed('location'),
        duration: anyNamed('duration'),
      )).thenThrow(Exception());

      // act
      final result = await repository.addTripStop(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        name: 'name',
        description: 'description',
        location: const LatLng(0.0, 0.0),
        duration: 0,
      );
      // assert
      expect(result, equals(left(const TripStopsFailure())));
    });
  });

  group('listen trip stops', () {
    test('should return right(List<TripStop>) when listenTripStops', () async {
      final tTripStops = [tTripStop];
      when(mockTripStopsDataSource.listenTripStops(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
      )).thenAnswer((_) => Stream.value(tTripStops));

      // act
      final result = repository.listenTripStops(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
      );
      // assert
      expect(result, emitsInOrder([right(tTripStops)]));
    });

    test('should return left(TripStopsFailure()) when listenTripStops throws', () async {
      when(mockTripStopsDataSource.listenTripStops(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
      )).thenThrow(Exception());

      // act
      final result = repository.listenTripStops(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
      );
      // assert
      expect(result, emitsInOrder([left(const TripStopsFailure())]));
    });
  });

  group('update trip stops indexes', () {
    test('should return void right(null) when updateTripStopsIndexes success', () {
      when(mockTripStopsDataSource.updateTripStopsIndexes(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStops: anyNamed('tripStops'),
      )).thenAnswer((_) async {});

      // act
      final result = repository.updateTripStopsIndexes(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStops: [tTripStop],
      );
      // assert
      expect(result, completion(right(null)));
    });

    test('should return void left(TripStopsFailure) when updateTripStopsIndexes fails', () {
      when(mockTripStopsDataSource.updateTripStopsIndexes(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStops: anyNamed('tripStops'),
      )).thenThrow(Exception());

      // act
      final result = repository.updateTripStopsIndexes(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStops: [tTripStop],
      );
      // assert
      expect(result, completion(left(const TripStopsFailure())));
    });
  });

  group('update travel time', () {
    test('should return void right(null) when updateTravelTime success', () {
      when(mockTripStopsDataSource.updateTravelTime(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        travelTime: anyNamed('travelTime'),
      )).thenAnswer((_) async {});

      // act
      final result = repository.updateTravelTime(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        travelTime: 0,
      );
      // assert
      expect(result, completion(right(null)));
    });

    test('should return void left(TripStopsFailure) when updateTravelTime fails', () {
      when(mockTripStopsDataSource.updateTravelTime(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        travelTime: anyNamed('travelTime'),
      )).thenThrow(Exception());

      // act
      final result = repository.updateTravelTime(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        travelTime: 0,
      );
      // assert
      expect(result, completion(left(const TripStopsFailure())));
    });
  });

  group('update trip stop done', () {
    test('should return void right(null) when tripStopDone success', () {
      when(mockTripStopsDataSource.updateTripStopDone(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        isDone: anyNamed('isDone'),
      )).thenAnswer((_) async {});

      // act
      final result = repository.updateTripStopDone(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        isDone: true,
      );
      // assert
      expect(result, completion(right(null)));
    
    });

    test('should return void left(TripStopsFailure) when updateTravelTime fails', () {
      when(mockTripStopsDataSource.updateTripStopDone(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        isDone: anyNamed('isDone'),
      )).thenThrow(Exception());

      // act
      final result = repository.updateTripStopDone(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        isDone: true,
      );
      // assert
      expect(result, completion(left(const TripStopsFailure())));
    });
  });

  group('update trip stop note', () {
    test('should return void right(null) when updateTripStopNote success', () {
      when(mockTripStopsDataSource.updateTripStopNote(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        note: anyNamed('note'),
      )).thenAnswer((_) async {});

      // act
      final result = repository.updateTripStopNote(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        note: 'note',
      );

      // assert
      expect(result, completion(right(null)));
    });

    test('should return void left(TripStopsFailure) when updateTripStopNote fails', () {
      when(mockTripStopsDataSource.updateTripStopNote(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        note: anyNamed('note'),
      )).thenThrow(Exception());

      // act
      final result = repository.updateTripStopNote(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        note: 'note',
      );

      // assert
      expect(result, completion(left(const TripStopsFailure())));
    });
  });
}
