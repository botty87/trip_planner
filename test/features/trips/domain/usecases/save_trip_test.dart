import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/usecases/save_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late SaveTrip useCase;
  late MockTripsRepository mockTripsRepository;

  setUp(() {
    mockTripsRepository = MockTripsRepository();
    useCase = SaveTrip(mockTripsRepository);
  });

  test('should save a trip', () async {
    // arrange
    const tripId = 'tripId';
    const tripName = 'Trip Name';
    const tripDescription = 'Trip Description';
    when(mockTripsRepository.updateTrip(any, any, any)).thenAnswer((_) async => right(null));
    // act
    final result = await useCase(SaveTripParams(
      id: tripId,
      name: tripName,
      description: tripDescription,
    ));
    // assert
    expect(result, right(null));
    verify(mockTripsRepository.updateTrip(any, any, any));
    verifyNoMoreInteractions(mockTripsRepository);
  });

  test('should return a TripsFailure when saving a trip fails', () async {
    // arrange
    const tripId = 'tripId';
    const tripName = 'Trip Name';
    const tripDescription = 'Trip Description';
    when(mockTripsRepository.updateTrip(any, any, any))
        .thenAnswer((_) async => left(TripsFailure()));
    // act
    final result = await useCase(SaveTripParams(
      id: tripId,
      name: tripName,
      description: tripDescription,
    ));
    // assert
    expect(result, left(TripsFailure()));
    verify(mockTripsRepository.updateTrip(any, any, any));
    verifyNoMoreInteractions(mockTripsRepository);
  });
}
