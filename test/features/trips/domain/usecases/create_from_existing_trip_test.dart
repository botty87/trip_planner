import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/create_from_existing_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late CreateFromExistingTrip useCase;
  late MockTripsRepository mockTripsRepository;

  final tTrip = Trip(
    id: 'id',
    name: 'name',
    description: 'description',
    userId: 'userId',
    createdAt: DateTime.now(),
    startDate: DateTime.now(),
    isPublic: true,
  );

  setUp(() {
    mockTripsRepository = MockTripsRepository();
    useCase = CreateFromExistingTrip(mockTripsRepository);
  });

  test('should create a trip', () async {
    // arrange
    const tripName = 'Trip Name';
    const userId = 'userId';
    when(mockTripsRepository.createFromExistingTrip(
      newTrip: anyNamed('newTrip'),
      existingTrip: anyNamed('existingTrip'),
      showDirections: true,
      useDifferentDirectionsColors: true,
    )).thenAnswer((_) async => right(null));
    // act
    final result = await useCase(CreateFromExistingTripParams(
      tripName: tripName,
      userId: userId,
      startDate: DateTime.now(),
      isPublic: true,
      existingTrip: tTrip,
      showDirections: true,
      useDifferentDirectionsColors: true,
      languageCode: 'en',
    ));
    // assert
    expect(result, right(null));
    verify(mockTripsRepository.createFromExistingTrip(
      newTrip: anyNamed('newTrip'),
      existingTrip: anyNamed('existingTrip'),
      showDirections: true,
      useDifferentDirectionsColors: true,
    ));
    verifyNoMoreInteractions(mockTripsRepository);
  });

  test('should return a TripsFailure when creating a trip fails', () async {
    // arrange
    const tripName = 'Trip Name';
    const userId = 'userId';
    when(mockTripsRepository.createFromExistingTrip(
      newTrip: anyNamed('newTrip'),
      existingTrip: anyNamed('existingTrip'),
      showDirections: true,
      useDifferentDirectionsColors: true,
    )).thenAnswer((_) async => left(const TripsFailure()));
    // act
    final result = await useCase(CreateFromExistingTripParams(
      tripName: tripName,
      userId: userId,
      startDate: DateTime.now(),
      isPublic: true,
      existingTrip: tTrip,
      showDirections: true,
      useDifferentDirectionsColors: true,
      languageCode: 'en',
    ));
    // assert
    expect(result, left(const TripsFailure()));
    verify(mockTripsRepository.createFromExistingTrip(
      newTrip: anyNamed('newTrip'),
      existingTrip: anyNamed('existingTrip'),
      showDirections: true,
      useDifferentDirectionsColors: true,
    ));
    verifyNoMoreInteractions(mockTripsRepository);
  });
}
