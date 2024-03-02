import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/import_old_trips/domain/entities/old_trip.dart';
import 'package:trip_planner/features/import_old_trips/domain/usecases/read_old_trips.dart';
import 'package:trip_planner/features/import_old_trips/errors/import_old_trips_failure.dart';

import '../repositories/mock_old_trips_repository.mocks.dart';

void main() {
  late ReadOldTrips usecase;
  late MockOldTripsRepository mockOldTripsRepository;

  setUp(() {
    mockOldTripsRepository = MockOldTripsRepository();
    usecase = ReadOldTrips(mockOldTripsRepository);
  });

  const tUserId = '123';

  const tOldTrips = [
    OldTrip(id: '1', name: 'Trip 1', dailyTrips: []),
    OldTrip(id: '2', name: 'Trip 2', dailyTrips: []),
  ];

  test('should read old trips from the repository', () async {
    // arrange
    when(mockOldTripsRepository.readOldTrips(userId: tUserId))
        .thenAnswer((_) async => const Right(tOldTrips));

    // act
    final result = await usecase(ReadOldTripsParams(tUserId));

    // assert
    expect(result, const Right(tOldTrips));
    verify(mockOldTripsRepository.readOldTrips(userId: tUserId));
    verifyNoMoreInteractions(mockOldTripsRepository);
  });

  test('should return a failure when reading old trips fails', () async {
    // arrange
    when(mockOldTripsRepository.readOldTrips(userId: tUserId))
        .thenAnswer((_) async => const Left(ImportOldTripsFailure()));

    // act
    final result = await usecase(ReadOldTripsParams(tUserId));

    // assert
    expect(result, const Left(ImportOldTripsFailure()));
    verify(mockOldTripsRepository.readOldTrips(userId: tUserId));
    verifyNoMoreInteractions(mockOldTripsRepository);
  });
}
