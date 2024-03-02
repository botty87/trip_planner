import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/listen_trip_stops.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late ListenTripStops useCase;
  late MockTripStopsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockTripStopsRepository();
    useCase = ListenTripStops(mockDayTripsRepository);
  });

  const tTripId = 'Test Trip Id';
  const tDayTripId = 'Test Day Trip Id';
  final tParams = ListenTripStopsParams(
    tripId: tTripId,
    dayTripId: tDayTripId,
  );

  test('should listen to trip stops', () async {
    // arrange
    const tTripStop = TripStop(
      id: 'Test Trip Stop Id',
      name: 'Test Trip Stop Name',
      description: 'Test Trip Stop Description',
      location: LatLng(0, 0),
      duration: 0,
      index: 0,
    );
    final tTripStops = [tTripStop];
    when(mockDayTripsRepository.listenTripStops(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
    )).thenAnswer((_) => Stream.value(right(tTripStops)));

    // act
    final result = useCase(tParams);
    // assert
    expect(result, emitsInOrder([right(tTripStops)]));
  });

  test('should return failure when listening to trip stops fails', () async {
    // arrange
    when(mockDayTripsRepository.listenTripStops(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
    )).thenAnswer((_) => Stream.value(left(const TripStopsFailure())));

    // act
    final result = useCase(tParams);
    // assert
    expect(result, emitsInOrder([left(const TripStopsFailure())]));
  });
}
