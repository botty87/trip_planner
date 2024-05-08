import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stop_placeholder.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late UpdateTripStopPlaceholder useCase;
  late MockTripStopsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockTripStopsRepository();
    useCase = UpdateTripStopPlaceholder(mockDayTripsRepository);
  });

  const tTripId = 'Test Trip Id';
  const tDayTripId = 'Test Day Trip Id';
  const tTripStopId = 'Test Trip Stop Id';

  const tName = 'Test Name';
  const tDuration = 0;

  const tParams = UpdateTripStopPlaceholderParams(
    tripId: tTripId,
    dayTripId: tDayTripId,
    tripStopId: tTripStopId,
    placeholder: TripStopPlaceholder(
      name: tName,
      duration: tDuration,
    ),
  );

  test('should update TripStopPlaceholder', () async {
    // arrange
    when(mockDayTripsRepository.updateTripStopPlaceholder(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      placeholder: anyNamed('placeholder'),
    )).thenAnswer((_) async => right(null));

    // act
    final result = await useCase(tParams);
    // assert
    expect(result, right(null));
    verify(mockDayTripsRepository.updateTripStopPlaceholder(
      tripId: tTripId,
      dayTripId: tDayTripId,
      tripStopId: tTripStopId,
      placeholder: const TripStopPlaceholder(
        name: tName,
        duration: tDuration,
      ),
    ));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });

  test('should return failure when update TripStopPlaceholder fails', () async {
    // arrange
    when(mockDayTripsRepository.updateTripStopPlaceholder(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      placeholder: anyNamed('placeholder'),
    )).thenAnswer((_) async => left(const TripStopsFailure()));

    // act
    final result = await useCase(tParams);
    // assert
    expect(result, left(const TripStopsFailure()));
    verify(mockDayTripsRepository.updateTripStopPlaceholder(
      tripId: tTripId,
      dayTripId: tDayTripId,
      tripStopId: tTripStopId,
      placeholder: const TripStopPlaceholder(
        name: tName,
        duration: tDuration,
      ),
    ));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });
}
