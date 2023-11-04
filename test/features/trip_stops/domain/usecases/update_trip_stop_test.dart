import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stop.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late UpdateTripStop usecase;
  late MockTripStopsRepository mockTripStopsRepository;

  setUp(() {
    mockTripStopsRepository = MockTripStopsRepository();
    usecase = UpdateTripStop(mockTripStopsRepository);
  });

  test('should return right(null) when updateTripStop', () async {
    when(mockTripStopsRepository.updateTripStop(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      name: anyNamed('name'),
      description: anyNamed('description'),
      location: anyNamed('location'),
      duration: anyNamed('duration'),
    )).thenAnswer((_) async => right(null));

    // act
    final result = await usecase(UpdateTripStopParams(
      id: 'id',
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      tripStopId: 'tripStopId',
      name: 'name',
      description: 'description',
      location: const LatLng(0.0, 0.0),
      duration: 0,
    ));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(TripStopsFailure()) when updateTripStop throws', () async {
    when(mockTripStopsRepository.updateTripStop(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      name: anyNamed('name'),
      description: anyNamed('description'),
      location: anyNamed('location'),
      duration: anyNamed('duration'),
    )).thenAnswer((_) async => left(const TripStopsFailure()));

    // act
    final result = await usecase(UpdateTripStopParams(
      id: 'id',
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      tripStopId: 'tripStopId',
      name: 'name',
      description: 'description',
      location: const LatLng(0.0, 0.0),
      duration: 0,
    ));

    // assert
    expect(result, equals(left(const TripStopsFailure())));
  });
}
