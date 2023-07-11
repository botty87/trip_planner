

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late CreateDayTrip usecase;
  late MockDayTripsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockDayTripsRepository();
    usecase = CreateDayTrip(mockDayTripsRepository);
  });

  test('should return right(null) when createDayTrip', () async {
    when(mockDayTripsRepository.addDayTrip(tripId: anyNamed('tripId'), dayTrip: anyNamed('dayTrip')))
        .thenAnswer((_) async => right(null));

    // act
    final result = await usecase(CreateDayTripParams(tripId: 'tripId', name: 'name', description: 'description'));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(DayTripsFailure()) when createDayTrip throws', () async {
    when(mockDayTripsRepository.addDayTrip(tripId: anyNamed('tripId'), dayTrip: anyNamed('dayTrip')))
        .thenAnswer((_) async => left(DayTripsFailure()));

    // act
    final result = await usecase(CreateDayTripParams(tripId: 'tripId', name: 'name', description: 'description'));
    // assert
    expect(result, equals(left(DayTripsFailure())));
  });
}
