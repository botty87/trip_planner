import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/trip_stops_directions.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/save_trip_stops_directions.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late SaveTripStopsDirections usecase;
  late MockDayTripsRepository mockRepository;

  setUp(() {
    mockRepository = MockDayTripsRepository();
    usecase = SaveTripStopsDirections(mockRepository);
  });

  const tripId = 'tripId';
  const dayTripId = 'dayTripId';
  final tripStopsDirections = <TripStopsDirections>[];

  test('should save trip stops directions', () async {
    // Arrange
    when(mockRepository.saveTripStopsDirections(
      tripId: tripId,
      dayTripId: dayTripId,
      tripStopsDirections: tripStopsDirections,
    )).thenAnswer((_) async => const Right(null));

    // Act
    final result = await usecase(SaveTripStopsDirectionsParams(
      tripId: tripId,
      dayTripId: dayTripId,
      tripStopsDirections: tripStopsDirections,
    ));

    // Assert
    expect(result, const Right(null));
    verify(mockRepository.saveTripStopsDirections(
      tripId: tripId,
      dayTripId: dayTripId,
      tripStopsDirections: tripStopsDirections,
    ));
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return a failure when saving trip stops directions fails', () async {
    // Arrange
    const failure = DayTripsFailure();
    when(mockRepository.saveTripStopsDirections(
      tripId: tripId,
      dayTripId: dayTripId,
      tripStopsDirections: tripStopsDirections,
    )).thenAnswer((_) async => const Left(failure));

    // Act
    final result = await usecase(SaveTripStopsDirectionsParams(
      tripId: tripId,
      dayTripId: dayTripId,
      tripStopsDirections: tripStopsDirections,
    ));

    // Assert
    expect(result, const Left(failure));
    verify(mockRepository.saveTripStopsDirections(
      tripId: tripId,
      dayTripId: dayTripId,
      tripStopsDirections: tripStopsDirections,
    ));
    verifyNoMoreInteractions(mockRepository);
  });
}
