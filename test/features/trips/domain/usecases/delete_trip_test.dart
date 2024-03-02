import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late DeleteTrip useCase;
  late MockTripsRepository mockTripsRepository;

  final tTrip = Trip(
      id: 'id',
      name: 'name',
      description: 'description',
      userId: 'userId',
      createdAt: DateTime.now(),
      startDate: DateTime.now());

  setUp(() {
    mockTripsRepository = MockTripsRepository();
    useCase = DeleteTrip(mockTripsRepository);
  });

  test('should delete a trip', () async {
    // arrange
    when(mockTripsRepository.deleteTrip(any)).thenAnswer((_) async => right(null));
    // act
    final result = await useCase(DeleteTripParams(trip: tTrip));
    // assert
    expect(result, right(null));
    verify(mockTripsRepository.deleteTrip(any));
    verifyNoMoreInteractions(mockTripsRepository);
  });

  test('should return a TripsFailure when deleting a trip fails', () async {
    // arrange
    when(mockTripsRepository.deleteTrip(any)).thenAnswer((_) async => left(const TripsFailure()));
    // act
    final result = await useCase(DeleteTripParams(trip: tTrip));
    // assert
    expect(result, left(const TripsFailure()));
    verify(mockTripsRepository.deleteTrip(any));
    verifyNoMoreInteractions(mockTripsRepository);
  });
}
