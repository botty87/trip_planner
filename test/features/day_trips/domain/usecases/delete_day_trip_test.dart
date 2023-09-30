import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/delete_day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late DeleteDayTrip usecase;
  late MockDayTripsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockDayTripsRepository();
    usecase = DeleteDayTrip(mockDayTripsRepository);
  });

  test('should return right(null) when deleteDayTrip', () async {
    when(mockDayTripsRepository.deleteDayTrip(
            tripId: anyNamed('tripId'), dayTripId: anyNamed('dayTripId')))
        .thenAnswer((_) async => right(null));

    // act
    final result = await usecase(DeleteDayTripParams(tripId: 'tripId', dayTripId: 'dayTripId'));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(DayTripsFailure()) when deleteDayTrip throws', () async {
    when(mockDayTripsRepository.deleteDayTrip(
            tripId: anyNamed('tripId'), dayTripId: anyNamed('dayTripId')))
        .thenAnswer((_) async => left(const DayTripsFailure()));

    // act
    final result = await usecase(DeleteDayTripParams(tripId: 'tripId', dayTripId: 'dayTripId'));
    // assert
    expect(result, equals(left(const DayTripsFailure())));
  });
}
