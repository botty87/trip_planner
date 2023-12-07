import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/import_old_trips/domain/usecases/read_old_trips.dart';
import 'package:trip_planner/features/import_old_trips/errors/import_old_trips_failure.dart';
import 'package:trip_planner/features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';

import 'import_old_trips_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ReadOldTrips>()])
void main() {
  late MockReadOldTrips mockReadOldTrips;

  setUp(() {
    mockReadOldTrips = MockReadOldTrips();
  });

  setUpAll(() => EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug]);

  final tUser = User(
    id: '1',
    email: 'email',
    name: 'name',
    oldTripsImported: false,
  );

  ImportOldTripsCubit getStandartCubit() => ImportOldTripsCubit(readOldTrips: mockReadOldTrips, user: tUser);

  group('ImportOldTripsCubit', () {
    blocTest(
      'initial state should be empyt',
      setUp: () => when(mockReadOldTrips.call(any)).thenAnswer((_) async => const Right([])),
      build: () => getStandartCubit(),
      expect: () => [],
    );

    blocTest(
      'reload should call _readOldTripsAction()',
      setUp: () => when(mockReadOldTrips.call(any)).thenAnswer((_) async => const Right([])),
      build: () => getStandartCubit(),
      act: (cubit) => cubit.reload(),
      expect: () => [const ImportOldTripsState.loaded(trips: [])],
    );

    blocTest(
      '_readOldTripsAction should emit error when reading old trips fails',
      setUp: () => when(mockReadOldTrips.call(any)).thenAnswer((_) async => const Left(ImportOldTripsFailure())),
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
  });
}
