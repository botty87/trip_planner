import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_start_time.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late UpdateDayTripStartTime usecase;
  late MockDayTripsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockDayTripsRepository();
    usecase = UpdateDayTripStartTime(mockDayTripsRepository);
  });

  test('should return right(null) when updateDayTripStartTime', () async {
    when(mockDayTripsRepository.updateDayTripStartTime(
            id: anyNamed('id'), tripId: anyNamed('tripId'), startTime: anyNamed('startTime')))
        .thenAnswer((_) async => right(null));

    // act
    final result = await usecase(UpdateDayTripStartTimeParams(
      id: 'id',
      tripId: 'tripId',
      startTime: TimeOfDay.now(),
    ));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(DayTripsFailure()) when updateDayTripStartTime throws', () async {
    when(mockDayTripsRepository.updateDayTripStartTime(
            id: anyNamed('id'), tripId: anyNamed('tripId'), startTime: anyNamed('startTime')))
        .thenAnswer((_) async => left(const DayTripsFailure()));

    // act
    final result = await usecase(UpdateDayTripStartTimeParams(
      id: 'id',
      tripId: 'tripId',
      startTime: TimeOfDay.now(),
    ));
    // assert
    expect(result, equals(left(const DayTripsFailure())));
  });
}
