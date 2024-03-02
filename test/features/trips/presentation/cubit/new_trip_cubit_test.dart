import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/settings/domain/entities/settings.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/create_from_existing_trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart';

import 'new_trip_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CreateTrip>(), MockSpec<CreateFromExistingTrip>()])
void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  late MockCreateTrip mockCreateTrip;
  late MockCreateFromExistingTrip mockCreateFromExistingTrip;

  const tSettings = Settings();
  final tTrip =
      Trip(name: 'test', startDate: DateTime.now(), userId: '', createdAt: DateTime.now());
  const tUserId = '1';

  setUp(() {
    mockCreateTrip = MockCreateTrip();
    mockCreateFromExistingTrip = MockCreateFromExistingTrip();
  });

  NewTripCubit getNewTripCubit({Trip? existingTrip}) => NewTripCubit(
        createTrip: mockCreateTrip,
        createFromExistingTrip: mockCreateFromExistingTrip,
        settings: tSettings,
        existingTrip: existingTrip,
        deviceLocale: const Locale('en'),
        userId: tUserId,
      );

  blocTest<NewTripCubit, NewTripState>('When name change emit state with name changed',
      build: () => getNewTripCubit(),
      act: (cubit) => cubit.nameChanged('test'),
      expect: () => [const NewTripState.normal(tripName: 'test', languageCode: 'en')]);

  blocTest<NewTripCubit, NewTripState>(
      'When description change emit state with description changed',
      build: () => getNewTripCubit(),
      act: (cubit) => cubit.descriptionChanged('test'),
      expect: () => [const NewTripState.normal(tripDescription: 'test', languageCode: 'en')]);

  blocTest<NewTripCubit, NewTripState>(
    'When languageCode change emit state with languageCode changed',
    build: () => getNewTripCubit(),
    act: (cubit) => cubit.languageCodeChanged('en'),
    expect: () => [const NewTripState.normal(languageCode: 'en')],
  );

  group('Create trip tests', () {
    final tStartDate = DateTime.now();
    const tLanguageCode = 'en';

    blocTest<NewTripCubit, NewTripState>(
      'When create trip with empty name emit state with error message',
      build: () => getNewTripCubit(),
      act: (cubit) => cubit.createTrip(),
      expect: () => [
        const NewTripState.error(errorMessage: LocaleKeys.tripNameEmpty),
        const NewTripState.normal(languageCode: 'en'),
      ],
    );

    blocTest<NewTripCubit, NewTripState>(
      'When create trip with empty startDate emit state with error message',
      build: () => getNewTripCubit(),
      seed: () => const NewTripState.normal(tripName: 'test', languageCode: 'en'),
      act: (cubit) => cubit.createTrip(),
      expect: () => [
        const NewTripState.error(errorMessage: LocaleKeys.tripStartDateEmpty),
        const NewTripState.normal(tripName: 'test', languageCode: 'en'),
      ],
    );

    blocTest<NewTripCubit, NewTripState>(
      'When create trip with valid name, languageCode and startDate emit state with error message null',
      setUp: () => when(mockCreateTrip(any)).thenAnswer((_) async => const Right(null)),
      seed: () =>
          NewTripState.normal(tripName: 'test', startDate: tStartDate, languageCode: tLanguageCode),
      build: () => getNewTripCubit(),
      act: (cubit) => cubit.createTrip(),
      expect: () => [
        const NewTripState.saving(),
        const NewTripState.created(),
      ],
      verify: (bloc) {
        verify(mockCreateTrip(any)).called(1);
        verifyNever(mockCreateFromExistingTrip(any));
      },
    );

    blocTest<NewTripCubit, NewTripState>(
      'When create trip with valid name, languageCode and startDate and existing trip emit state with error message null, call createFromExistingTrip',
      setUp: () => when(mockCreateFromExistingTrip(any)).thenAnswer((_) async => const Right(null)),
      seed: () =>
          NewTripState.normal(tripName: 'test', startDate: tStartDate, languageCode: tLanguageCode),
      build: () => getNewTripCubit(existingTrip: tTrip),
      act: (cubit) => cubit.createTrip(),
      expect: () => [
        const NewTripState.saving(),
        const NewTripState.created(),
      ],
      verify: (bloc) {
        verify(mockCreateFromExistingTrip(any)).called(1);
        verifyNever(mockCreateTrip(any));
      },
    );

    blocTest<NewTripCubit, NewTripState>(
      'When create trip with valid name, languageCode and startDate emit state with error message when error occurs',
      setUp: () => when(mockCreateTrip(any)).thenAnswer((_) async => const Left(TripsFailure())),
      build: () => getNewTripCubit(),
      seed: () =>
          NewTripState.normal(tripName: 'test', startDate: tStartDate, languageCode: tLanguageCode),
      act: (cubit) => cubit.createTrip(),
      expect: () => [
        const NewTripState.saving(),
        const NewTripState.error(errorMessage: LocaleKeys.tripSaveError),
        NewTripState.normal(tripName: 'test', startDate: tStartDate, languageCode: tLanguageCode),
      ],
      verify: (bloc) => verify(mockCreateTrip(any)).called(1),
    );
  });

  blocTest<NewTripCubit, NewTripState>(
    'When isPublic is true and setPublic is called emit state with isPublic true',
    build: () => getNewTripCubit(),
    act: (cubit) => cubit.isPublicChanged(true),
    expect: () => [
      const NewTripState.normal(isPublic: true, languageCode: 'en'),
    ],
  );
}
