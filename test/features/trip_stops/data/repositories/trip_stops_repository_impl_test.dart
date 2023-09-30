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
}
