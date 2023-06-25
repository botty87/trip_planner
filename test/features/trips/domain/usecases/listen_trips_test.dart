import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late ListenTrips usecase;
  late MockTripsRepository mockTripsRepository;

  final tUserId = '123';
  final tTrips = [
    Trip(
      id: '123',
      name: 'Trip 1',
      description: 'Trip 1 description',
      userId: '123',
      createdAt: DateTime.now(),
    ),
  ];

  setUp(() {
    mockTripsRepository = MockTripsRepository();
    usecase = ListenTrips(mockTripsRepository);
  });

  test('should listen trips from the repository', () async {
    // arrange
    when(mockTripsRepository.listenTrips(tUserId)).thenAnswer((_) => Stream.value(Right(tTrips)));

    // act
    final result = usecase(ListenTripsParams(userId: tUserId));

    // assert
    expect(result, emits(Right(tTrips)));
    verify(mockTripsRepository.listenTrips(tUserId));
    verifyNoMoreInteractions(mockTripsRepository);
  });

  test('should return a failure when there is no trips', () async {
    // arrange
    when(mockTripsRepository.listenTrips(tUserId)).thenAnswer((_) => Stream.value(Left(TripsFailure())));

    // act
    final result = usecase(ListenTripsParams(userId: tUserId));

    // assert
    expect(result, emits(Left(TripsFailure())));
    verify(mockTripsRepository.listenTrips(tUserId));
    verifyNoMoreInteractions(mockTripsRepository);
  });
}