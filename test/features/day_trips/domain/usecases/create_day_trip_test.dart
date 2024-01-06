import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late CreateDayTrip usecase;
  late MockDayTripsRepository mockDayTripsRepository;

  const tStartTime = TimeOfDay(hour: 8, minute: 0);
  const tTravelMode = TravelMode.driving;
  const tShowDirections = true;
  const tUseDifferentDirectionsColors = true;

  setUp(() {
    mockDayTripsRepository = MockDayTripsRepository();
    usecase = CreateDayTrip(mockDayTripsRepository);
  });

  test('should return right(null) when createDayTrip', () async {
    when(mockDayTripsRepository.addDayTrip(
            tripId: anyNamed('tripId'), dayTrip: anyNamed('dayTrip')))
        .thenAnswer((_) async => right(null));

    // act
    final result = await usecase(const CreateDayTripParams(
        tripId: 'tripId',
        description: 'description',
        startTime: tStartTime,
        travelMode: tTravelMode,
        showDirections: tShowDirections,
        useDifferentDirectionsColors: tUseDifferentDirectionsColors));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(DayTripsFailure()) when createDayTrip throws', () async {
    when(mockDayTripsRepository.addDayTrip(
            tripId: anyNamed('tripId'), dayTrip: anyNamed('dayTrip')))
        .thenAnswer((_) async => left(const DayTripsFailure()));

    // act
    final result = await usecase(const CreateDayTripParams(
      tripId: 'tripId',
      description: 'description',
      startTime: tStartTime,
      travelMode: tTravelMode,
      showDirections: tShowDirections,
      useDifferentDirectionsColors: tUseDifferentDirectionsColors,
    ));
    // assert
    expect(result, equals(left(const DayTripsFailure())));
  });
}
