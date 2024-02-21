import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/discover_new_trips/domain/usecases/get_public_trips.dart';
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart';
import 'package:trip_planner/features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';

import 'discover_new_trips_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GetPublicTrips>()])
void main() {
  late MockGetPublicTrips mockGetPublicTrips;

  final tTrips = [
    Trip(
      id: 'id',
      userId: 'userId',
      createdAt: DateTime.now(),
      startDate: DateTime.now(),
      name: 'name 1',
      description: 'description 1',
      isPublic: true,
    ),
    Trip(
      id: 'id',
      userId: 'userId',
      createdAt: DateTime.now(),
      startDate: DateTime.now(),
      name: 'name 2',
      description: 'description 2',
      isPublic: true,
    ),
  ];

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    mockGetPublicTrips = MockGetPublicTrips();
  });

  DiscoverNewTripsCubit cubit() {
    return DiscoverNewTripsCubit(
      getPublicTrips: mockGetPublicTrips,
      user: const User(id: 'id', email: 'email', name: 'name'),
    );
  }

  blocTest(
    'should emit DiscoverNewTripsState.normal() when GetPublicTrips is successful',
    build: () => cubit(),
    setUp: () => when(mockGetPublicTrips(any)).thenAnswer((_) async => Right(tTrips)),
    act: (cubit) => cubit.fetchTrips(),
    expect: () => [
      DiscoverNewTripsState.normal(
        query: '',
        trips: tTrips,
        filteredTrips: tTrips,
        searchDescription: false,
      ),
    ],
  );

  blocTest(
    'should emit DiscoverNewTripsState.loading() and DiscoverNewTripsState.error() when GetPublicTrips is unsuccessful',
    build: () => cubit(),
    act: (cubit) => cubit.fetchTrips(),
    setUp: () =>
        when(mockGetPublicTrips(any)).thenAnswer((_) async => const Left(DiscoverTripsFailure())),
    expect: () => [
      DiscoverNewTripsState.error(
        message: LocaleKeys.unknownError.tr(),
      ),
    ],
  );

  blocTest(
    'should emit DiscoverNewTripsState.normal() which contains filtered trips when query is not empty',
    seed: () => DiscoverNewTripsState.normal(
      query: '',
      trips: tTrips,
      filteredTrips: tTrips,
      searchDescription: false,
    ),
    build: () => cubit(),
    setUp: () => when(mockGetPublicTrips(any)).thenAnswer((_) async => Right(tTrips)),
    act: (cubit) => cubit.tripsQueryChanged('name'),
    wait: const Duration(milliseconds: 600),
    expect: () => [
      DiscoverNewTripsState.normal(
        query: 'name',
        trips: tTrips,
        filteredTrips: tTrips.where((trip) => trip.name.toLowerCase().contains('name')).toList(),
        searchDescription: false,
      ),
    ],
  );

  blocTest(
    'should emit DiscoverNewTripsState.normal() which contains filtered trips when query is not empty and searchDescription is true',
    seed: () => DiscoverNewTripsState.normal(
      query: 'description',
      trips: tTrips,
      filteredTrips: tTrips,
      searchDescription: false,
    ),
    build: () => cubit(),
    setUp: () => when(mockGetPublicTrips(any)).thenAnswer((_) async => Right(tTrips)),
    act: (cubit) => cubit.searchDescriptionChanged(true),
    expect: () => [
      DiscoverNewTripsState.normal(
        query: 'description',
        trips: tTrips,
        filteredTrips: tTrips
            .where((trip) =>
                trip.name.toLowerCase().contains('description') ||
                trip.description?.toLowerCase().contains('description') == true)
            .toList(),
        searchDescription: true,
      ),
    ],
  );
}
