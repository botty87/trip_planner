import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/discover_new_trips/domain/usecases/get_public_day_trips.dart';
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart';

import '../repositories/mock_discover_trips_repository.mocks.dart';

void main() {
  late GetPublicDayTrips usecase;
  late MockDiscoverTripsRepository mockRepository;

  const tDayTrips = <DayTrip>[];
  const tTripId = 'tripId';

  setUp(() {
    mockRepository = MockDiscoverTripsRepository();
    usecase = GetPublicDayTrips(mockRepository);
  });

  test('on success should return list of day trips', () async {
    when(mockRepository.getPublicDayTrips(tTripId)).thenAnswer((_) async => const Right(tDayTrips));

    // act
    final result = await usecase(const GetPublicDayTripsParams(tripId: tTripId));

    // assert
    expect(result, const Right(tDayTrips));
    verify(mockRepository.getPublicDayTrips(tTripId));
    verifyNoMoreInteractions(mockRepository);
  });

  test('on failure should return failure', () async {
    when(mockRepository.getPublicDayTrips(tTripId))
        .thenAnswer((_) async => const Left(DiscoverTripsFailure()));

    // act
    final result = await usecase(const GetPublicDayTripsParams(tripId: tTripId));

    // assert
    expect(result, const Left(DiscoverTripsFailure()));
    verify(mockRepository.getPublicDayTrips(tTripId));
    verifyNoMoreInteractions(mockRepository);
  });
}
