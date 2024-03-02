import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/discover_new_trips/domain/usecases/get_public_day_trips.dart';
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart';
import 'package:trip_planner/features/discover_new_trips/presentation/cubit/daily_trips/discover_new_daily_trips_cubit.dart';

import 'discover_new_daily_trips_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GetPublicDayTrips>()])
void main() {
  late MockGetPublicDayTrips mockGetPublicDayTrips;

  const tDayTrips = [
    DayTrip(
      id: '1',
      index: 0,
    ),
    DayTrip(
      id: '2',
      index: 1,
    ),
  ];

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    mockGetPublicDayTrips = MockGetPublicDayTrips();
  });

  DiscoverNewDailyTripsCubit cubit() {
    return DiscoverNewDailyTripsCubit(tripId: 'tripId', getPublicDayTrips: mockGetPublicDayTrips);
  }

  blocTest(
    'should emit [DiscoverNewDailyTripsLoading, DiscoverNewDailyTripsLoaded] when fetchDayTrips is called and success',
    setUp: () => when(mockGetPublicDayTrips(any)).thenAnswer((_) async => const Right(tDayTrips)),
    build: () => cubit(),
    act: (DiscoverNewDailyTripsCubit cubit) => cubit.fetchDayTrips(),
    expect: () => const [
      DiscoverNewDailyTripsState.loaded(dayTrips: tDayTrips),
    ],
    verify: (_) {
      verify(mockGetPublicDayTrips(any)).called(1);
    },
  );

  blocTest(
    'should emit [DiscoverNewDailyTripsLoading, DiscoverNewDailyTripsError] when fetchDayTrips is called and failure',
    setUp: () => when(mockGetPublicDayTrips(any))
        .thenAnswer((_) async => const Left(DiscoverTripsFailure())),
    build: () => cubit(),
    act: (DiscoverNewDailyTripsCubit cubit) => cubit.fetchDayTrips(),
    expect: () => const [
      DiscoverNewDailyTripsState.error(message: LocaleKeys.unknownError),
    ],
    verify: (_) {
      verify(mockGetPublicDayTrips(any)).called(1);
    },
  );
}
