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
    'When description change emit state with description changed',
    build: () => NewDayTripCubit(createDayTrip: mockCreateDayTrip, tripId: tTripId),
    act: (cubit) => cubit.descriptionChanged('test'),
    expect: () => [NewDayTripState.normal(description: 'test')],
  );

  group('Create day trip', () { 

    blocTest<NewDayTripCubit, NewDayTripState>(
      'When create day trip emit NewDayTripStateSaving then NewDayTripStateCreated state',
      build: () => NewDayTripCubit(createDayTrip: mockCreateDayTrip, tripId: tTripId),
      seed: () => NewDayTripState.normal(),
      setUp: () => when(mockCreateDayTrip(any)).thenAnswer((_) async => right(null)),
      act: (cubit) => cubit.createDayTrip(),
      verify: (_) => verify(mockCreateDayTrip(any)).called(1),
      expect: () => [
        NewDayTripState.saving(description: null),
        NewDayTripState.created(description: null),
      ],
    );

    blocTest<NewDayTripCubit, NewDayTripState>(
      'When create day trip fail emit NewDayTripStateSaving then NewDayTripStateError state',
      build: () => NewDayTripCubit(createDayTrip: mockCreateDayTrip, tripId: tTripId),
      seed: () => NewDayTripState.normal(),
      setUp: () => when(mockCreateDayTrip(any)).thenAnswer((_) async => left(const DayTripsFailure())),
      act: (cubit) => cubit.createDayTrip(),
      verify: (_) => verify(mockCreateDayTrip(any)).called(1),
      expect: () => [
        NewDayTripState.saving(description: null),
        NewDayTripState.error(description: null, errorMessage: LocaleKeys.unknownErrorRetry.tr()),
        NewDayTripState.normal(description: null),
      ],
    );
  });
}