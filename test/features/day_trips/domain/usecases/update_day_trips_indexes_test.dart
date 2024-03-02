import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trips_indexes.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late UpdateDayTripsIndexes useCase;
  late MockDayTripsRepository mockDayTripsRepository;

  const tTripId = 'tripId';
  const List<DayTrip> tDayTrips = [];

  setUp(() {
    mockDayTripsRepository = MockDayTripsRepository();
    useCase = UpdateDayTripsIndexes(mockDayTripsRepository);
  });

  test('should update day trips indexes', () async {
    // arrange
    when(mockDayTripsRepository.updateDayTripsIndexes(
            tripId: anyNamed('tripId'), dayTrips: anyNamed('dayTrips')))
        .thenAnswer((_) async => right(null));
    // act
    final result = await useCase(const UpdateDayTripsIndexesParams(
      tripId: tTripId,
      dayTrips: tDayTrips,
    ));
    // assert
    expect(result, right(null));
    verify(mockDayTripsRepository.updateDayTripsIndexes(tripId: tTripId, dayTrips: tDayTrips));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });

  test('should return failure when updating day trips indexes fails', () async {
    // arrange
    when(mockDayTripsRepository.updateDayTripsIndexes(
            tripId: anyNamed('tripId'), dayTrips: anyNamed('dayTrips')))
        .thenAnswer((_) async => left(const DayTripsFailure()));
    // act
    final result = await useCase(const UpdateDayTripsIndexesParams(
      tripId: tTripId,
      dayTrips: tDayTrips,
    ));
    // assert
    expect(result, left(const DayTripsFailure()));
    verify(mockDayTripsRepository.updateDayTripsIndexes(tripId: tTripId, dayTrips: tDayTrips));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });
}
