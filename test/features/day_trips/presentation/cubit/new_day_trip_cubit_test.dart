import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart';
import 'package:easy_logger/easy_logger.dart';

import 'new_day_trip_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CreateDayTrip>()])
void main() {
  late MockCreateDayTrip mockCreateDayTrip;

  const tTripId = 'test';

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    mockCreateDayTrip = MockCreateDayTrip();
  });

  blocTest<NewDayTripCubit, NewDayTripState>(
    'When name change emit state with name changed',
    build: () => NewDayTripCubit(createDayTrip: mockCreateDayTrip, tripId: tTripId),
    act: (cubit) => cubit.nameChanged('test'),
    expect: () => [NewDayTripState(name: 'test')],
  );

  blocTest<NewDayTripCubit, NewDayTripState>(
    'When description change emit state with description changed',
    build: () => NewDayTripCubit(createDayTrip: mockCreateDayTrip, tripId: tTripId),
    act: (cubit) => cubit.descriptionChanged('test'),
    expect: () => [NewDayTripState(description: 'test')],
  );

  group('create day trip', () { 
    blocTest<NewDayTripCubit, NewDayTripState>(
      'When create day trip with empty name emit state with error message',
      build: () => NewDayTripCubit(createDayTrip: mockCreateDayTrip, tripId: tTripId),
      act: (cubit) => cubit.createDayTrip(),
      expect: () => [
        NewDayTripState(errorMessage: LocaleKeys.dayTripNameEmpty),
        NewDayTripState(errorMessage: null),
      ],
    );

    blocTest<NewDayTripCubit, NewDayTripState>(
      'When create day trip with name emit state with isSaving true, createSuccess true and no error message',
      build: () => NewDayTripCubit(createDayTrip: mockCreateDayTrip, tripId: tTripId),
      seed: () => NewDayTripState(name: 'test'),
      setUp: () => when(mockCreateDayTrip(any)).thenAnswer((_) async => right(null)),
      act: (cubit) => cubit.createDayTrip(),
      verify: (_) => verify(mockCreateDayTrip(any)).called(1),
      expect: () => [
        NewDayTripState(name: 'test', isSaving: true),
        NewDayTripState(name: 'test', isSaving: false, createSuccess: true),
      ],
    );

    blocTest<NewDayTripCubit, NewDayTripState>(
      'When create day trip with name emit state with isSaving true, createSuccess false and error message',
      build: () => NewDayTripCubit(createDayTrip: mockCreateDayTrip, tripId: tTripId),
      seed: () => NewDayTripState(name: 'test'),
      setUp: () => when(mockCreateDayTrip(any)).thenAnswer((_) async => left(const DayTripsFailure())),
      act: (cubit) => cubit.createDayTrip(),
      verify: (_) => verify(mockCreateDayTrip(any)).called(1),
      expect: () => [
        NewDayTripState(name: 'test', isSaving: true),
        NewDayTripState(name: 'test', isSaving: false, errorMessage: LocaleKeys.unknownErrorRetry),
      ],
    );
  });
}
