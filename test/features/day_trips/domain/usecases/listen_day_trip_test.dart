import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late ListenDayTrip usecase;
  late MockDayTripsRepository mockRepository;

  setUp(() {
    mockRepository = MockDayTripsRepository();
    usecase = ListenDayTrip(mockRepository);
  });

  const tripId = 'tripId';
  const dayTripId = 'dayTripId';
  const dayTrip = DayTrip(id: '1', index: 0);

  test('should listen to day trip from the repository', () async {
    // Arrange
    when(mockRepository.listenDayTrip(tripId, dayTripId))
        .thenAnswer((_) => Stream.value(const Right(dayTrip)));

    // Act
    final result = usecase.call(const ListenDayTripParams(tripId: tripId, dayTripId: dayTripId));

    // Assert
    expect(result, emits(const Right(dayTrip)));
  });

  test('should return failure when listening to day trip fails', () async {
    // Arrange
    when(mockRepository.listenDayTrip(tripId, dayTripId))
        .thenAnswer((_) => Stream.value(const Left(DayTripsFailure())));

    // Act
    final result = usecase.call(const ListenDayTripParams(tripId: tripId, dayTripId: dayTripId));

    // Assert
    expect(result, emits(const Left(DayTripsFailure())));
  });
}
