import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/usecases/update_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late UpdateTrip useCase;
  late MockTripsRepository mockTripsRepository;

  const tTripId = 'tripId';
  const tTripName = 'Trip Name';
  const tTripDescription = 'Trip Description';
  const tIsPublic = true;
  final tStartDate = DateTime.now();

  setUp(() {
    mockTripsRepository = MockTripsRepository();
    useCase = UpdateTrip(mockTripsRepository);
  });

  test('should save a trip', () async {
    when(mockTripsRepository.updateTrip(any, any, any, any, any, any))
        .thenAnswer((_) async => right(null));
    // act
    final result = await useCase(UpdateTripParams(
        id: tTripId,
        name: tTripName,
        description: tTripDescription,
        startDate: tStartDate,
        isPublic: tIsPublic,
        languageCode: 'en'));
    // assert
    expect(result, right(null));
    verify(mockTripsRepository.updateTrip(any, any, any, any, any, any));
    verifyNoMoreInteractions(mockTripsRepository);
  });

  test('should return a TripsFailure when saving a trip fails', () async {
    when(mockTripsRepository.updateTrip(any, any, any, any, any, any))
        .thenAnswer((_) async => left(const TripsFailure()));
    // act
    final result = await useCase(UpdateTripParams(
        id: tTripId,
        name: tTripName,
        description: tTripDescription,
        isPublic: tIsPublic,
        startDate: tStartDate,
        languageCode: 'en'));
    // assert
    expect(result, left(const TripsFailure()));
    verify(mockTripsRepository.updateTrip(any, any, any, any, any, any));
    verifyNoMoreInteractions(mockTripsRepository);
  });
}
