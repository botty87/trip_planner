import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stops_indexes.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late UpdateTripStopsIndexes useCase;
  late MockTripStopsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockTripStopsRepository();
    useCase = UpdateTripStopsIndexes(mockDayTripsRepository);
  });

  const tTripId = 'Test Trip Id';
  const tDayTripId = 'Test Day Trip Id';
  const tTripStop = TripStop(
    id: 'Test Trip Stop Id',
    name: 'Test Trip Stop Name',
    description: 'Test Trip Stop Description',
    location: LatLng(0, 0),
    duration: 0,
    index: 0,
  );
  final tTripStops = [tTripStop];
  final tParams = UpdateTripStopsIndexesParams(
    tripId: tTripId,
    dayTripId: tDayTripId,
    tripStops: tTripStops,
  );

  test('should update trip stops indexes', () async {
    // arrange
    when(mockDayTripsRepository.updateTripStopsIndexes(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStops: anyNamed('tripStops'),
    )).thenAnswer((_) async => right(null));

    // act
    final result = await useCase(tParams);
    // assert
    expect(result, right(null));
    verify(mockDayTripsRepository.updateTripStopsIndexes(
      tripId: tTripId,
      dayTripId: tDayTripId,
      tripStops: tTripStops,
    ));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });

  test('should return failure when update trip stops indexes fails', () async {
    // arrange
    when(mockDayTripsRepository.updateTripStopsIndexes(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStops: anyNamed('tripStops'),
    )).thenAnswer((_) async => left(const TripStopsFailure()));

    // act
    final result = await useCase(tParams);
    // assert
    expect(result, left(const TripStopsFailure()));
    verify(mockDayTripsRepository.updateTripStopsIndexes(
      tripId: tTripId,
      dayTripId: tDayTripId,
      tripStops: tTripStops,
    ));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });
}
