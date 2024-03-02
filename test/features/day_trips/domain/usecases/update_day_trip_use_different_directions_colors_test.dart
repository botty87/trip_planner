import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late UpdateDayTripUseDifferentDirectionsColors useCase;
  late MockDayTripsRepository mockRepository;

  setUp(() {
    mockRepository = MockDayTripsRepository();
    useCase = UpdateDayTripUseDifferentDirectionsColors(mockRepository);
  });

  const tTripId = '1';
  const tDayTripId = '1';
  const tUseDifferentDirectionsColors = true;

  test('should update use different directions colors', () async {
    // Arrange
    when(mockRepository.updateDayTripUseDifferentDirectionsColors(
      tripId: tTripId,
      dayTripId: tDayTripId,
      useDifferentDirectionsColors: tUseDifferentDirectionsColors,
    )).thenAnswer((_) async => const Right(null));

    // Act
    final result = await useCase.call(const UpdateDayTripUseDifferentDirectionsColorsParams(
      tripId: tTripId,
      dayTripId: tDayTripId,
      useDifferentDirectionsColors: tUseDifferentDirectionsColors,
    ));

    // Assert
    expect(result, const Right(null));
    verify(mockRepository.updateDayTripUseDifferentDirectionsColors(
      tripId: tTripId,
      dayTripId: tDayTripId,
      useDifferentDirectionsColors: tUseDifferentDirectionsColors,
    ));
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return a failure when updating use different directions colors fails', () async {
    // Arrange
    const failure = DayTripsFailure();
    when(mockRepository.updateDayTripUseDifferentDirectionsColors(
      tripId: tTripId,
      dayTripId: tDayTripId,
      useDifferentDirectionsColors: tUseDifferentDirectionsColors,
    )).thenAnswer((_) async => const Left(failure));

    // Act
    final result = await useCase.call(const UpdateDayTripUseDifferentDirectionsColorsParams(
      tripId: tTripId,
      dayTripId: tDayTripId,
      useDifferentDirectionsColors: tUseDifferentDirectionsColors,
    ));

    // Assert
    expect(result, const Left(failure));
    verify(mockRepository.updateDayTripUseDifferentDirectionsColors(
      tripId: tTripId,
      dayTripId: tDayTripId,
      useDifferentDirectionsColors: tUseDifferentDirectionsColors,
    ));
    verifyNoMoreInteractions(mockRepository);
  });
}
