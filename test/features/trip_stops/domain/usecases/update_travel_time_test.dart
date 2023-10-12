import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_travel_time.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late UpdateTravelTime useCase;
  late MockTripStopsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockTripStopsRepository();
    useCase = UpdateTravelTime(mockDayTripsRepository);
  });

  const tTripId = 'Test Trip Id';
  const tDayTripId = 'Test Day Trip Id';
  const tTripStopId = 'Test Trip Stop Id';

  final tParams = UpdateTravelTimeParams(
    tripId: tTripId,
    dayTripId: tDayTripId,
    tripStopId: tTripStopId,
    travelTime: 0,
  );

  test('should update travel time', () async {
    // arrange
    when(mockDayTripsRepository.updateTravelTime(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      travelTime: anyNamed('travelTime'),
    )).thenAnswer((_) async => right(null));

    // act
    final result = await useCase(tParams);
    // assert
    expect(result, right(null));
    verify(mockDayTripsRepository.updateTravelTime(
      tripId: tTripId,
      dayTripId: tDayTripId,
      tripStopId: tTripStopId,
      travelTime: tParams.travelTime,
    ));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });

  test('should return failure when update travel time fails', () async {
    // arrange
    when(mockDayTripsRepository.updateTravelTime(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      travelTime: anyNamed('travelTime'),
    )).thenAnswer((_) async => left(const TripStopsFailure()));

    // act
    final result = await useCase(tParams);
    // assert
    expect(result, left(const TripStopsFailure()));
    verify(mockDayTripsRepository.updateTravelTime(
      tripId: tTripId,
      dayTripId: tDayTripId,
      tripStopId: tTripStopId,
      travelTime: tParams.travelTime,
    ));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });
}
