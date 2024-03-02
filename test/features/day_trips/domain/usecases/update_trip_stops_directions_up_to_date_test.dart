import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late UpdateTripStopsDirectionsUpToDate useCase;
  late MockDayTripsRepository mockRepository;

  setUp(() {
    mockRepository = MockDayTripsRepository();
    useCase = UpdateTripStopsDirectionsUpToDate(mockRepository);
  });

  const tripId = '1';
  const dayTripId = '1';
  const isUpToDate = true;

  test('should update trip stops directions up to date', () async {
    // Arrange
    when(mockRepository.updateTripStopsDirectionsUpToDate(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      isUpToDate: anyNamed('isUpToDate'),
    )).thenAnswer((_) async => const Right(null));

    // Act
    final result = await useCase.call(const UpdateTripStopsDirectionsUpToDateParams(
      tripId: tripId,
      dayTripId: dayTripId,
      isUpToDate: isUpToDate,
    ));

    // Assert
    expect(result, const Right(null));
    verify(mockRepository.updateTripStopsDirectionsUpToDate(
      tripId: tripId,
      dayTripId: dayTripId,
      isUpToDate: isUpToDate,
    ));
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return a failure when updating trip stops directions up to date fails', () async {
    // Arrange
    const failure = DayTripsFailure(message: 'Failed to update trip stops directions');
    when(mockRepository.updateTripStopsDirectionsUpToDate(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      isUpToDate: anyNamed('isUpToDate'),
    )).thenAnswer((_) async => const Left(failure));

    // Act
    final result = await useCase.call(const UpdateTripStopsDirectionsUpToDateParams(
      tripId: tripId,
      dayTripId: dayTripId,
      isUpToDate: isUpToDate,
    ));

    // Assert
    expect(result, const Left(failure));
    verify(mockRepository.updateTripStopsDirectionsUpToDate(
      tripId: tripId,
      dayTripId: dayTripId,
      isUpToDate: isUpToDate,
    ));
    verifyNoMoreInteractions(mockRepository);
  });
}
