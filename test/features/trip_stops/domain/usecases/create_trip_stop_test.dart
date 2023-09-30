import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/create_trip_stop.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late CreateTripStop usecase;
  late MockTripStopsRepository mockTripStopsRepository;

  setUp(() {
    mockTripStopsRepository = MockTripStopsRepository();
    usecase = CreateTripStop(mockTripStopsRepository);
  });

  test('should return right(null) when createTripStop', () async {
    when(mockTripStopsRepository.addTripStop(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      name: anyNamed('name'),
      description: anyNamed('description'),
      location: anyNamed('location'),
      duration: anyNamed('duration'),
    )).thenAnswer((_) async => right(null));

    // act
    final result = await usecase(CreateTripStopParams(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      name: 'name',
      description: 'description',
      location: const LatLng(0.0, 0.0),
      duration: 0,
    ));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(TripStopsFailure()) when createTripStop throws', () async {
    when(mockTripStopsRepository.addTripStop(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      name: anyNamed('name'),
      description: anyNamed('description'),
      location: anyNamed('location'),
      duration: anyNamed('duration'),
    )).thenAnswer((_) async => left(const TripStopsFailure()));

    // act
    final result = await usecase(CreateTripStopParams(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      name: 'name',
      description: 'description',
      location: const LatLng(0.0, 0.0),
      duration: 0,
    ));
    // assert
    expect(result, equals(left(const TripStopsFailure())));
  });
}
