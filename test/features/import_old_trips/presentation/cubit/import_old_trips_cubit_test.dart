import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/import_old_trips/domain/entities/old_trip.dart';
import 'package:trip_planner/features/import_old_trips/domain/usecases/import_old_trip.dart';
import 'package:trip_planner/features/import_old_trips/domain/usecases/read_old_trips.dart';
import 'package:trip_planner/features/import_old_trips/errors/import_old_trips_failure.dart';
import 'package:trip_planner/features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart';
import 'package:trip_planner/features/tutorials/domain/entities/tutorials_data.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';

import 'import_old_trips_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ReadOldTrips>(), MockSpec<ImportOldTrips>()])
void main() {
  late MockReadOldTrips mockReadOldTrips;
  late MockImportOldTrips mockImportOldTrips;

  setUp(() {
    mockReadOldTrips = MockReadOldTrips();
    mockImportOldTrips = MockImportOldTrips();
  });

  setUpAll(() => EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug]);

  const tTutorialsData = TutorialsData();

  const tUser = User(
    id: '1',
    email: 'email',
    name: 'name',
    oldTripsImported: false,
    tutorialsData: tTutorialsData,
  );

  ImportOldTripsCubit getStandartCubit() => ImportOldTripsCubit(
      readOldTrips: mockReadOldTrips, importOldTrips: mockImportOldTrips, user: tUser);

  group('ImportOldTripsCubit', () {
    blocTest(
      'initial state should be empyt',
      setUp: () => when(mockReadOldTrips.call(any)).thenAnswer((_) async => const Right([])),
      build: () => getStandartCubit(),
      expect: () => [],
    );

    blocTest(
      'reload should call _readOldTripsAction(), emit ImportOldTripsState.noTrips when no trips are found',
      setUp: () => when(mockReadOldTrips.call(any)).thenAnswer((_) async => const Right([])),
      build: () => getStandartCubit(),
      act: (cubit) => cubit.reload(),
      expect: () => [const ImportOldTripsState.noTrips()],
    );

    blocTest(
      'reload should call _readOldTripsAction(), emit ImportOldTripsState.loaded when there are at least 1 trip',
      setUp: () => when(mockReadOldTrips.call(any))
          .thenAnswer((_) async => const Right([OldTrip(id: '1', name: 'name', dailyTrips: [])])),
      build: () => getStandartCubit(),
      act: (cubit) => cubit.reload(),
      expect: () => [
        const ImportOldTripsState.loaded(trips: [OldTrip(id: '1', name: 'name', dailyTrips: [])])
      ],
    );

    blocTest(
      '_readOldTripsAction should emit error when reading old trips fails',
      setUp: () => when(mockReadOldTrips.call(any))
          .thenAnswer((_) async => const Left(ImportOldTripsFailure())),
      build: () => getStandartCubit(),
      act: (cubit) => cubit.reload(),
      expect: () => [ImportOldTripsState.error(message: LocaleKeys.unknownError.tr())],
    );

    blocTest(
      'toggleTrip should add trip to selectedTripsIds when it is not selected',
      seed: () => const ImportOldTripsState.loaded(trips: []),
      build: () => getStandartCubit(),
      act: (cubit) async => cubit.toggleTrip('1'),
      expect: () => [
        const ImportOldTripsState.loaded(trips: [], selectedTripsIds: {'1'}),
      ],
    );

    blocTest(
      'toggleTrip should remove trip from selectedTripsIds when it is selected',
      seed: () => const ImportOldTripsState.loaded(trips: [], selectedTripsIds: {'1'}),
      build: () => getStandartCubit(),
      act: (cubit) async => cubit.toggleTrip('1'),
      expect: () => [
        const ImportOldTripsState.loaded(trips: [], selectedTripsIds: {}),
      ],
    );

    blocTest(
      'import should emit error when importing trips fails',
      setUp: () => when(mockImportOldTrips.call(any))
          .thenAnswer((_) async => const Left(ImportOldTripsFailure())),
      seed: () => const ImportOldTripsState.loaded(trips: [], selectedTripsIds: {'1'}),
      build: () => getStandartCubit(),
      act: (cubit) async => cubit.import(),
      expect: () => [
        const ImportOldTripsState.importing(trips: [], selectedTripsIds: {'1'}),
        ImportOldTripsState.error(message: LocaleKeys.unknownError.tr()),
      ],
    );

    blocTest(
      'import should ImportOldTripsState.imported when importing trips succeeds',
      setUp: () => when(mockImportOldTrips.call(any)).thenAnswer((_) async => const Right(null)),
      seed: () => const ImportOldTripsState.loaded(trips: [], selectedTripsIds: {'1'}),
      build: () => getStandartCubit(),
      act: (cubit) async => cubit.import(),
      expect: () => [
        const ImportOldTripsState.importing(trips: [], selectedTripsIds: {'1'}),
        const ImportOldTripsState.imported(),
      ],
    );
  });
}
