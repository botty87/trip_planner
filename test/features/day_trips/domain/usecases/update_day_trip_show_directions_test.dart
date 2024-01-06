import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_show_directions.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late UpdateDayTripShowDirections useCase;
  late MockDayTripsRepository mockRepository;

  setUp(() {
    mockRepository = MockDayTripsRepository();
    useCase = UpdateDayTripShowDirections(mockRepository);
  });

  const tTripId = '1';
  const tDayTripId = '1';
  const tShowDirections = true;

  test('should update trip stops directions up to date', () async {
    // Arrange
    when(mockRepository.updateDayTripShowDirections(
      tripId: tTripId,
      dayTripId: tDayTripId,
      showDirections: tShowDirections,
    )).thenAnswer((_) async => const Right(null));

    // Act
    final result = await useCase.call(const UpdateDayTripShowDirectionsParams(
      tripId: tTripId,
      dayTripId: tDayTripId,
      showDirections: tShowDirections,
    ));

    // Assert
    expect(result, const Right(null));
    verify(mockRepository.updateDayTripShowDirections(
      tripId: tTripId,
      dayTripId: tDayTripId,
      showDirections: tShowDirections,
    ));
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return a failure when updating trip stops directions up to date fails', () async {
    // Arrange
    const failure = DayTripsFailure();
    when(mockRepository.updateDayTripShowDirections(
      tripId: tTripId,
      dayTripId: tDayTripId,
      showDirections: tShowDirections,
    )).thenAnswer((_) async => const Left(failure));

    // Act
    final result = await useCase.call(const UpdateDayTripShowDirectionsParams(
      tripId: tTripId,
      dayTripId: tDayTripId,
      showDirections: tShowDirections,
    ));

    // Assert
    expect(result, const Left(failure));
    verify(mockRepository.updateDayTripShowDirections(
      tripId: tTripId,
      dayTripId: tDayTripId,
      showDirections: tShowDirections,
    ));
    verifyNoMoreInteractions(mockRepository);
  });
}
