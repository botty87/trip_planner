import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/discover_new_trips/domain/usecases/get_public_trip_stops.dart';
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';

import '../repositories/mock_discover_trips_repository.mocks.dart';

void main() {
  late GetPublicTripStops usecase;
  late MockDiscoverTripsRepository mockRepository;

  const tTripStops = <TripStop>[];
  const tTripId = 'tripId';
  const tDayTripId = 'dayTripId';

  setUp(() {
    mockRepository = MockDiscoverTripsRepository();
    usecase = GetPublicTripStops(mockRepository);
  });

  test('on success should return list of trip stops', () async {
    when(mockRepository.getPublicTripStops(tTripId, tDayTripId))
        .thenAnswer((_) async => const Right(tTripStops));

    // act
    final result =
        await usecase(const GetPubliTripStopsParams(tripId: tTripId, dayTripId: tDayTripId));

    // assert
    expect(result, const Right(tTripStops));
    verify(mockRepository.getPublicTripStops(tTripId, tDayTripId));
    verifyNoMoreInteractions(mockRepository);
  });

  test('on failure should return failure', () async {
    when(mockRepository.getPublicTripStops(tTripId, tDayTripId))
        .thenAnswer((_) async => const Left(DiscoverTripsFailure()));

    // act
    final result =
        await usecase(const GetPubliTripStopsParams(tripId: tTripId, dayTripId: tDayTripId));

    // assert
    expect(result, const Left(DiscoverTripsFailure()));
    verify(mockRepository.getPublicTripStops(tTripId, tDayTripId));
    verifyNoMoreInteractions(mockRepository);
  });
}
