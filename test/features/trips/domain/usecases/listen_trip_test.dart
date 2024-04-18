import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/listen_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late ListenTrip usecase;
  late MockTripsRepository mockTripsRepository;

  const tTripId = '123';
  final tTrip = Trip(
      id: '123',
      name: 'Trip 1',
      description: 'Trip 1 description',
      userId: '123',
      createdAt: DateTime.now(),
      startDate: DateTime.now());

  setUp(() {
    mockTripsRepository = MockTripsRepository();
    usecase = ListenTrip(mockTripsRepository);
  });

  test('should listen trip from the repository', () async {
    // arrange
    when(mockTripsRepository.listenTrip(tTripId)).thenAnswer((_) => Stream.value(Right(tTrip)));

    // act
    final result = usecase(const ListenTripParams(tripId: tTripId));

    // assert
    expect(result, emits(Right(tTrip)));
    verify(mockTripsRepository.listenTrip(tTripId));
    verifyNoMoreInteractions(mockTripsRepository);
  });

  test('should return a failure when repository fail', () async {
    // arrange
    when(mockTripsRepository.listenTrip(tTripId)).thenAnswer((_) => Stream.value(const Left(TripsFailure())));

    // act
    final result = usecase(const ListenTripParams(tripId: tTripId));

    // assert
    expect(result, emits(const Left(TripsFailure())));
    verify(mockTripsRepository.listenTrip(tTripId));
    verifyNoMoreInteractions(mockTripsRepository);
  });
}
