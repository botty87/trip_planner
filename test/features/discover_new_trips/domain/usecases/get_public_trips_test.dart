import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/discover_new_trips/domain/usecases/get_public_trips.dart';
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import '../repositories/mock_discover_trips_repository.mocks.dart';

void main() {
  late GetPublicTrips usecase;
  late MockDiscoverTripsRepository mockRepository;

  const tTrips = <Trip>[];
  const tUserId = 'userId';

  setUp(() {
    mockRepository = MockDiscoverTripsRepository();
    usecase = GetPublicTrips(mockRepository);
  });

  test('on success should return list of trips', () async {
    when(mockRepository.getPublicTrips(tUserId)).thenAnswer((_) async => const Right(tTrips));

    // act
    final result = await usecase(const GetPublicTripsParams(tUserId));

    // assert
    expect(result, const Right(tTrips));
    verify(mockRepository.getPublicTrips(tUserId));
    verifyNoMoreInteractions(mockRepository);
  });

  test('on failure should return failure', () async {
    when(mockRepository.getPublicTrips(tUserId))
        .thenAnswer((_) async => const Left(DiscoverTripsFailure()));

    // act
    final result = await usecase(const GetPublicTripsParams(tUserId));

    // assert
    expect(result, const Left(DiscoverTripsFailure()));
    verify(mockRepository.getPublicTrips(tUserId));
    verifyNoMoreInteractions(mockRepository);
  });
}
