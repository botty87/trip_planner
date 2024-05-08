import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/data/datasources/trip_stops_data_source.dart';
import 'package:trip_planner/features/trip_stops/data/repositories/trip_stops_repository_impl.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import 'trip_stops_repository_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<TripStopsDataSource>(),
  MockSpec<FirebaseCrashlytics>(),
])
void main() {
  late MockTripStopsDataSource mockTripStopsDataSource;
  late MockFirebaseCrashlytics mockCrashlytics;
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
    mockCrashlytics = MockFirebaseCrashlytics();
    repository = TripStopsRepositoryImpl(mockTripStopsDataSource, mockCrashlytics);
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

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
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
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
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
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
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
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
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
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('delete trip stop', () {
    test('should return void right(null) when deleteTripStop success', () {
      when(mockTripStopsDataSource.deleteTripStop(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
      )).thenAnswer((_) async {});

      // act
      final result = repository.deleteTripStop(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
      );
      // assert
      expect(result, completion(right(null)));
    });

    test('should return void left(TripStopsFailure) when deleteTripStop fails', () {
      when(mockTripStopsDataSource.deleteTripStop(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
      )).thenThrow(Exception());

      // act
      final result = repository.deleteTripStop(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
      );
      // assert
      expect(result, completion(left(const TripStopsFailure())));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('update trip stop', () {
    test('should return void right(null) when updateTripStop success', () {
      when(mockTripStopsDataSource.updateTripStop(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        name: anyNamed('name'),
        description: anyNamed('description'),
        location: anyNamed('location'),
        duration: anyNamed('duration'),
      )).thenAnswer((_) async {});

      // act
      final result = repository.updateTripStop(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        name: 'name',
        description: 'description',
        location: const LatLng(0.0, 0.0),
        duration: 0,
      );
      // assert
      expect(result, completion(right(null)));
    });

    test('should return void left(TripStopsFailure) when updateTripStop fails', () {
      when(mockTripStopsDataSource.updateTripStop(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        name: anyNamed('name'),
        description: anyNamed('description'),
        location: anyNamed('location'),
        duration: anyNamed('duration'),
      )).thenThrow(Exception());

      // act
      final result = repository.updateTripStop(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        name: 'name',
        description: 'description',
        location: const LatLng(0.0, 0.0),
        duration: 0,
      );
      // assert
      expect(result, completion(left(const TripStopsFailure())));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('update TripStopPlaceholder', () {
    test('should return void right(null) when TripStopPlaceholder success', () {
      when(mockTripStopsDataSource.updateTripStopPlaceholder(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        placeholder: anyNamed('placeholder'),
      )).thenAnswer((_) async {});

      // act
      final result = repository.updateTripStopPlaceholder(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        placeholder: const TripStopPlaceholder(
          name: 'name',
          duration: 0,
        ),
      );
      // assert
      expect(result, completion(right(null)));
    });

    test('should return void left(TripStopsFailure) when TripStopPlaceholder fails', () {
      when(mockTripStopsDataSource.updateTripStopPlaceholder(
        tripId: anyNamed('tripId'),
        dayTripId: anyNamed('dayTripId'),
        tripStopId: anyNamed('tripStopId'),
        placeholder: anyNamed('placeholder'),
      )).thenThrow(Exception());

      // act
      final result = repository.updateTripStopPlaceholder(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        tripStopId: 'tripStopId',
        placeholder: const TripStopPlaceholder(
          name: 'name',
          duration: 0,
        ),
      );
      
      // assert
      expect(result, completion(left(const TripStopsFailure())));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });
}
