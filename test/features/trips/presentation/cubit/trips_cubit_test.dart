import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/settings/domain/entities/view_preferences.dart';
import 'package:trip_planner/features/settings/domain/usecases/update_view_preferences.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';

import 'trips_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ListenUserTrips>(),
  MockSpec<ListenSharedTrips>(),
  MockSpec<FirebaseCrashlytics>(),
  MockSpec<UpdateViewPreferences>(),
])
void main() {
  late MockListenUserTrips mockListenUserTrips;
  late MockListenSharedTrips mockListenSharedTrips;
  late MockFirebaseCrashlytics mockFirebaseCrashlytics;
  late MockUpdateViewPreferences mockUpdateViewPreferences;

  final tTrips = [
    Trip(
      id: '1',
      name: 'test',
      description: 'test',
      userId: '1',
      createdAt: DateTime.now(),
      startDate: DateTime.now(),
    ),
  ];

  final sTrips = [
    Trip(
      id: '2',
      name: 'test',
      description: 'test',
      userId: '2',
      createdAt: DateTime.now(),
      startDate: DateTime.now(),
    ),
  ];

  const tUserId = '1';

  const tDefaultViewMode = ViewMode.list;

  TripsCubit getTestCubit() {
    return TripsCubit(
      listenUserTrips: mockListenUserTrips,
      crashlytics: mockFirebaseCrashlytics,
      listenSharedTrips: mockListenSharedTrips,
      updateViewPreferences: mockUpdateViewPreferences,
      userId: tUserId,
      viewMode: tDefaultViewMode,
    );
  }

  setUp(() {
    mockListenUserTrips = MockListenUserTrips();
    mockListenSharedTrips = MockListenSharedTrips();
    mockFirebaseCrashlytics = MockFirebaseCrashlytics();
    mockUpdateViewPreferences = MockUpdateViewPreferences();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  blocTest<TripsCubit, TripsState>(
    'On startListenTrip emits [TripsState.loaded(trips: trips)] when ListenTrips returns Right(trips)',
    setUp: () {
      when(mockListenUserTrips(any)).thenAnswer((_) => Stream.value(right(tTrips)));
      when(mockListenSharedTrips(any)).thenAnswer((_) => Stream.value(right(sTrips)));
    },
    build: () => getTestCubit(),
    act: (cubit) => cubit.startListenTrips(),
    expect: () => [TripsState.loaded(userTrips: tTrips, sharedTrips: sTrips, viewMode: tDefaultViewMode)],
    verify: (_) {
      verify(mockListenUserTrips(const ListenTripsParams(userId: tUserId))).called(1);
      verify(mockListenSharedTrips(const ListenTripsParams(userId: tUserId))).called(1);
      verifyNoMoreInteractions(mockListenUserTrips);
      verifyNoMoreInteractions(mockListenSharedTrips);
    },
  );

  blocTest<TripsCubit, TripsState>(
    'On startListenTrip emits [TripsState.error(message: message)] when ListenTrips returns Left(failure)',
    setUp: () {
      when(mockListenUserTrips(any)).thenAnswer((_) => Stream.value(left(const TripsFailure())));
    },
    build: () => getTestCubit(),
    act: (cubit) => cubit.startListenTrips(),
    expect: () => [const TripsState.error(message: LocaleKeys.dataLoadError, viewMode: tDefaultViewMode)],
    verify: (_) {
      verify(mockListenUserTrips(const ListenTripsParams(userId: tUserId))).called(1);
      verifyNoMoreInteractions(mockListenUserTrips);
    },
  );

  group('On changeViewMode', () {
    blocTest<TripsCubit, TripsState>(
      'on change view mode emit TripsState with ViewMode.grid when viewMode is ViewMode.list',
      seed: () => TripsState.loaded(userTrips: tTrips, sharedTrips: sTrips, viewMode: ViewMode.list),
      setUp: () => when(mockUpdateViewPreferences.call(
        const UpdateViewPreferencesParams(viewMode: ViewMode.grid, viewModePage: ViewModePage.trips),
      )).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.changeViewMode(),
      expect: () => [TripsState.loaded(userTrips: tTrips, sharedTrips: sTrips, viewMode: ViewMode.grid)],
      build: () => getTestCubit(),
    );

    blocTest<TripsCubit, TripsState>(
      'on change view mode emit TripsState with ViewMode.list when viewMode is ViewMode.grid',
      seed: () => TripsState.loaded(userTrips: tTrips, sharedTrips: sTrips, viewMode: ViewMode.grid),
      setUp: () => when(mockUpdateViewPreferences.call(
        const UpdateViewPreferencesParams(viewMode: ViewMode.list, viewModePage: ViewModePage.trips),
      )).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.changeViewMode(),
      expect: () => [TripsState.loaded(userTrips: tTrips, sharedTrips: sTrips, viewMode: ViewMode.list)],
      build: () => getTestCubit(),
    );
  });
}
