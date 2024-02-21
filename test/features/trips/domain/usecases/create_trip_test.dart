import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late CreateTrip useCase;
  late MockTripsRepository mockTripsRepository;

  setUp(() {
    mockTripsRepository = MockTripsRepository();
    useCase = CreateTrip(mockTripsRepository);
  });

  test('should create a trip', () async {
    // arrange
    const tripName = 'Trip Name';
    const userId = 'userId';
    when(mockTripsRepository.createTrip(any)).thenAnswer((_) async => right(null));
    // act
    final result = await useCase(CreateTripParams(
        tripName: tripName,
        userId: userId,
        startDate: DateTime.now(),
        isPublic: true,
        languageCode: 'en'));
    // assert
    expect(result, right(null));
    verify(mockTripsRepository.createTrip(any));
    verifyNoMoreInteractions(mockTripsRepository);
  });

  test('should return a TripsFailure when creating a trip fails', () async {
    // arrange
    const tripName = 'Trip Name';
    const userId = 'userId';
    when(mockTripsRepository.createTrip(any)).thenAnswer((_) async => left(const TripsFailure()));
    // act
    final result = await useCase(CreateTripParams(
        tripName: tripName,
        userId: userId,
        startDate: DateTime.now(),
        isPublic: true,
        languageCode: 'en'));
    // assert
    expect(result, left(const TripsFailure()));
    verify(mockTripsRepository.createTrip(any));
    verifyNoMoreInteractions(mockTripsRepository);
  });
}
