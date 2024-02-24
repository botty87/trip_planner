import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/discover_new_trips/domain/usecases/get_public_trip_stops.dart';
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart';
import 'package:trip_planner/features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';

import 'discover_new_trip_stops_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GetPublicTripStops>()])
void main() {
  late MockGetPublicTripStops mockGetPublicTripStops;

  const tTripStops = <TripStop>[];

  DiscoverNewTripStopsCubit cubit() {
    return DiscoverNewTripStopsCubit(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      getPublicTripStops: mockGetPublicTripStops,
    );
  }

  setUp(() {
    mockGetPublicTripStops = MockGetPublicTripStops();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  blocTest(
    'should emit [DiscoverNewTripStopsLoading, DiscoverNewTripStopsLoaded] when fetchTripStops is called and success',
    setUp: () => when(mockGetPublicTripStops(any)).thenAnswer((_) async => const Right(tTripStops)),
    build: () => cubit(),
    act: (DiscoverNewTripStopsCubit cubit) => cubit.fetchTripStops(),
    expect: () => const [
      DiscoverNewTripStopsState.loaded(tripStops: tTripStops),
    ],
    verify: (_) {
      verify(mockGetPublicTripStops(any)).called(1);
    },
  );

  blocTest(
    'should emit [DiscoverNewTripStopsLoading, DiscoverNewTripStopsError] when fetchTripStops is called and failure',
    setUp: () => when(mockGetPublicTripStops(any))
        .thenAnswer((_) async => const Left(DiscoverTripsFailure())),
    build: () => cubit(),
    act: (DiscoverNewTripStopsCubit cubit) => cubit.fetchTripStops(),
    expect: () => const [
      DiscoverNewTripStopsState.error(message: LocaleKeys.unknownError),
    ],
    verify: (_) {
      verify(mockGetPublicTripStops(any)).called(1);
    },
  );

  blocTest(
    'should emit [DiscoverNewTripStopsLoaded] whith isMapReady true when setMapReady is called',
    seed: () => const DiscoverNewTripStopsState.loaded(tripStops: tTripStops),
    build: () => cubit(),
    act: (DiscoverNewTripStopsCubit cubit) => cubit.setMapReady(),
    expect: () => const [
      DiscoverNewTripStopsState.loaded(tripStops: tTripStops, isMapReady: true),
    ],
  );

  blocTest(
    'should emit [DiscoverNewTripStopsLoaded] whith mapType hybrid when changeMapType is called',
    seed: () =>
        const DiscoverNewTripStopsState.loaded(tripStops: tTripStops, mapType: MapType.normal),
    build: () => cubit(),
    act: (DiscoverNewTripStopsCubit cubit) => cubit.changeMapType(),
    expect: () => const [
      DiscoverNewTripStopsState.loaded(tripStops: tTripStops, mapType: MapType.hybrid),
    ],
  );

  blocTest(
    'should emit [DiscoverNewTripStopsLoaded] whith markerLatLngBounds when updateMarkerLatLngBounds is called',
    seed: () => const DiscoverNewTripStopsState.loaded(tripStops: tTripStops),
    build: () => cubit(),
    act: (DiscoverNewTripStopsCubit cubit) => cubit.updateMarkerLatLngBounds(
        LatLngBounds(northeast: const LatLng(1, 1), southwest: const LatLng(1, 1))),
    expect: () => [
      DiscoverNewTripStopsState.loaded(
          tripStops: tTripStops,
          markerLatLngBounds:
              LatLngBounds(northeast: const LatLng(1, 1), southwest: const LatLng(1, 1))),
    ],
  );
}
