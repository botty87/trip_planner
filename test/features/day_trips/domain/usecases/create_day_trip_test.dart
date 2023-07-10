import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late CreateDayTrip useCase;
  late MockDayTripsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockDayTripsRepository();
    useCase = CreateDayTrip(mockDayTripsRepository);
  });

  test('should create a day trip', () async {
    // arrange
    final tName = 'Test Day Trip';
    final tDescription = 'Test Day Trip Description';
    final tTripId = 'Test Trip Id';
    final tParams = CreateDayTripParams(
      name: tName,
      description: tDescription,
      tripId: tTripId,
    );
    when(mockDayTripsRepository.createDayTrip(
      name: anyNamed('name'),
      description: anyNamed('description'),
      tripId: anyNamed('tripId'),
    )).thenAnswer((_) async => Right(null));
    // act
    final result = await useCase(tParams);
    // assert
    expect(result, Right(null));
    verify(mockDayTripsRepository.createDayTrip(
      name: tName,
      description: tDescription,
      tripId: tTripId,
    ));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });

  test('should return a DayTripsFailure when creating a day trip fails', () async {
    // arrange
    final tName = 'Test Day Trip';
    final tDescription = 'Test Day Trip Description';
    final tTripId = 'Test Trip Id';
    final tParams = CreateDayTripParams(
      name: tName,
      description: tDescription,
      tripId: tTripId,
    );
    when(mockDayTripsRepository.createDayTrip(
      name: anyNamed('name'),
      description: anyNamed('description'),
      tripId: anyNamed('tripId'),
    )).thenAnswer((_) async => Left(DayTripsFailure(message: 'Failed to create day trip')));
    // act
    final result = await useCase(tParams);
    // assert
    expect(result, Left(DayTripsFailure(message: 'Failed to create day trip')));
    verify(mockDayTripsRepository.createDayTrip(
      name: tName,
      description: tDescription,
      tripId: tTripId,
    ));
    verifyNoMoreInteractions(mockDayTripsRepository);
  });
}