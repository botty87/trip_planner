import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late ListenUserTrips usecase;
  late MockTripsRepository mockTripsRepository;

  const tUserId = '123';
  final tTrips = [
    Trip(
        id: '123',
        name: 'Trip 1',
        description: 'Trip 1 description',
        userId: '123',
        createdAt: DateTime.now(),
        startDate: DateTime.now()),
  ];

  setUp(() {
    mockTripsRepository = MockTripsRepository();
    usecase = ListenUserTrips(mockTripsRepository);
  });

  group('user trips', () {
    test('should listen user trips from the repository', () async {
      // arrange
      when(mockTripsRepository.listenUserTrips(tUserId))
          .thenAnswer((_) => Stream.value(Right(tTrips)));

      // act
      final result = usecase(const ListenTripsParams(userId: tUserId));

      // assert
      expect(result, emits(Right(tTrips)));
      verify(mockTripsRepository.listenUserTrips(tUserId));
      verifyNoMoreInteractions(mockTripsRepository);
    });

    test('should return a failure when there is no user trips', () async {
      // arrange
      when(mockTripsRepository.listenUserTrips(tUserId))
          .thenAnswer((_) => Stream.value(const Left(TripsFailure())));

      // act
      final result = usecase(const ListenTripsParams(userId: tUserId));

      // assert
      expect(result, emits(const Left(TripsFailure())));
      verify(mockTripsRepository.listenUserTrips(tUserId));
      verifyNoMoreInteractions(mockTripsRepository);
    });
  });

  group('shared trips', () {
    test('should listen shared trips from the repository', () async {
      // arrange
      when(mockTripsRepository.listenSharedTrips(tUserId))
          .thenAnswer((_) => Stream.value(Right(tTrips)));

      // act
      final result =
          ListenSharedTrips(mockTripsRepository)(const ListenTripsParams(userId: tUserId));

      // assert
      expect(result, emits(Right(tTrips)));
      verify(mockTripsRepository.listenSharedTrips(tUserId));
      verifyNoMoreInteractions(mockTripsRepository);
    });

    test('should return a failure when there is no shared trips', () async {
      // arrange
      when(mockTripsRepository.listenSharedTrips(tUserId))
          .thenAnswer((_) => Stream.value(const Left(TripsFailure())));

      // act
      final result =
          ListenSharedTrips(mockTripsRepository)(const ListenTripsParams(userId: tUserId));

      // assert
      expect(result, emits(const Left(TripsFailure())));
      verify(mockTripsRepository.listenSharedTrips(tUserId));
      verifyNoMoreInteractions(mockTripsRepository);
    });
  });
}
