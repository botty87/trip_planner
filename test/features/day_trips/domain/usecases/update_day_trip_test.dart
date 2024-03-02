import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late UpdateDayTrip usecase;
  late MockDayTripsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockDayTripsRepository();
    usecase = UpdateDayTrip(mockDayTripsRepository);
  });

  test('should return right(null) when updateDayTrip', () async {
    when(mockDayTripsRepository.updateDayTrip(
            id: anyNamed('id'), tripId: anyNamed('tripId'), description: anyNamed('description')))
        .thenAnswer((_) async => right(null));

    // act
    final result = await usecase(const UpdateDayTripParams(
      id: 'id',
      tripId: 'tripId',
      description: 'description',
    ));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(DayTripsFailure()) when updateDayTrip throws', () async {
    when(mockDayTripsRepository.updateDayTrip(
            id: anyNamed('id'), tripId: anyNamed('tripId'), description: anyNamed('description')))
        .thenAnswer((_) async => left(const DayTripsFailure()));

    // act
    final result = await usecase(const UpdateDayTripParams(
      id: 'id',
      tripId: 'tripId',
      description: 'description',
    ));
    // assert
    expect(result, equals(left(const DayTripsFailure())));
  });
}
