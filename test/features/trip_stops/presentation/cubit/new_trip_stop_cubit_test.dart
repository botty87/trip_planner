import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/create_trip_stop.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart';

import 'new_trip_stop_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<CreateTripStop>(),
  MockSpec<UpdateTripStopsDirectionsUpToDate>(),
])
void main() {
  late MockCreateTripStop mockCreateTripStop;
  late MockUpdateTripStopsDirectionsUpToDate mockUpdateTripStopsDirectionsUpToDate;

  setUp(() {
    mockCreateTripStop = MockCreateTripStop();
    mockUpdateTripStopsDirectionsUpToDate = MockUpdateTripStopsDirectionsUpToDate();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  NewTripStopCubit cubit() => NewTripStopCubit(
        tripId: 'tripId',
        dayTripId: 'dayTripId',
        createTripStop: mockCreateTripStop,
        updateTripStopsDirectionsUpToDate: mockUpdateTripStopsDirectionsUpToDate,
      );

  blocTest<NewTripStopCubit, NewTripStopState>(
    'should emit updated name when nameChanged is called',
    build: () => cubit(),
    act: (cubit) => cubit.nameChanged('name'),
    expect: () => [const NewTripStopState.normal(name: 'name')],
  );

  blocTest<NewTripStopCubit, NewTripStopState>(
    'should emit updated description when descriptionChanged is called',
    build: () => cubit(),
    act: (cubit) => cubit.descriptionChanged('description'),
    expect: () => [const NewTripStopState.normal(description: 'description')],
  );

  blocTest<NewTripStopCubit, NewTripStopState>(
    'should emit updated hourDuration when hourDurationChanged is called',
    build: () => cubit(),
    act: (cubit) => cubit.hourDurationChanged(1),
    expect: () => [const NewTripStopState.normal(hourDuration: 1)],
  );

  blocTest<NewTripStopCubit, NewTripStopState>(
    'should emit updated minuteDuration when minuteDurationChanged is called',
    build: () => cubit(),
    act: (cubit) => cubit.minuteDurationChanged(1),
    expect: () => [const NewTripStopState.normal(minuteDuration: 1)],
  );

  blocTest<NewTripStopCubit, NewTripStopState>(
    'should emit updated location when locationChanged is called',
    build: () => cubit(),
    act: (cubit) => cubit.locationChanged(const LatLng(1, 1)),
    expect: () => [const NewTripStopState.normal(location: LatLng(1, 1))],
  );

  group('createTripStop', () {
    blocTest(
      'should emit error state when name is empty',
      build: () => cubit(),
      act: (cubit) => cubit.createTripStop(),
      expect: () => [
        const NewTripStopState.error(
          errorMessage: LocaleKeys.enterTripStopName,
          name: null,
          description: null,
          hourDuration: 0,
          minuteDuration: 0,
          location: null,
        ),
        const NewTripStopState.normal(
          name: null,
          description: null,
          hourDuration: 0,
          minuteDuration: 0,
          location: null,
        ),
      ],
    );

    blocTest(
      'should emit error state when hourDuration and minuteDuration are 0',
      seed: () => const NewTripStopState.normal(
        name: 'name',
        description: null,
        hourDuration: 0,
        minuteDuration: 0,
        location: null,
      ),
      build: () => cubit(),
      act: (cubit) => cubit.createTripStop(),
      expect: () => [
        const NewTripStopState.error(
          errorMessage: LocaleKeys.enterTripStopDuration,
          name: 'name',
          description: null,
          hourDuration: 0,
          minuteDuration: 0,
          location: null,
        ),
        const NewTripStopState.normal(
          name: 'name',
          description: null,
          hourDuration: 0,
          minuteDuration: 0,
          location: null,
        ),
      ],
    );

    blocTest(
      'should emit error state when location is null',
      seed: () => const NewTripStopState.normal(
        name: 'name',
        description: null,
        hourDuration: 1,
        minuteDuration: 1,
        location: null,
      ),
      build: () => cubit(),
      act: (cubit) => cubit.createTripStop(),
      expect: () => [
        const NewTripStopState.error(
          errorMessage: LocaleKeys.enterTripStopLocation,
          name: 'name',
          description: null,
          hourDuration: 1,
          minuteDuration: 1,
          location: null,
        ),
        const NewTripStopState.normal(
          name: 'name',
          description: null,
          hourDuration: 1,
          minuteDuration: 1,
          location: null,
        ),
      ],
    );

    blocTest(
      'should emit error state when createTripStop fails',
      seed: () => const NewTripStopState.normal(
        name: 'name',
        description: null,
        hourDuration: 1,
        minuteDuration: 1,
        location: LatLng(1, 1),
      ),
      setUp: () =>
          when(mockCreateTripStop(any)).thenAnswer((_) async => const Left(TripStopsFailure())),
      build: () => cubit(),
      act: (cubit) => cubit.createTripStop(),
      expect: () => [
        const NewTripStopState.saving(
          name: 'name',
          description: null,
          hourDuration: 1,
          minuteDuration: 1,
          location: LatLng(1, 1),
        ),
        const NewTripStopState.error(
          errorMessage: LocaleKeys.unknownError,
          name: 'name',
          description: null,
          hourDuration: 1,
          minuteDuration: 1,
          location: LatLng(1, 1),
        ),
        const NewTripStopState.normal(
          name: 'name',
          description: null,
          hourDuration: 1,
          minuteDuration: 1,
          location: LatLng(1, 1),
        ),
      ],
    );

    blocTest(
      'should emit created state and update trip stops directions up to date when createTripStop succeeds',
      seed: () => const NewTripStopState.normal(
        name: 'name',
        description: null,
        hourDuration: 1,
        minuteDuration: 1,
        location: LatLng(1, 1),
      ),
      setUp: () => when(mockCreateTripStop(any)).thenAnswer((_) async => const Right(null)),
      build: () => cubit(),
      act: (cubit) => cubit.createTripStop(),
      expect: () => [
        const NewTripStopState.saving(
          name: 'name',
          description: null,
          hourDuration: 1,
          minuteDuration: 1,
          location: LatLng(1, 1),
        ),
        const NewTripStopState.created(
          name: 'name',
          description: null,
          hourDuration: 1,
          minuteDuration: 1,
          location: LatLng(1, 1),
        ),
      ],
      verify: (_) => verify(mockUpdateTripStopsDirectionsUpToDate(
        const UpdateTripStopsDirectionsUpToDateParams(
          tripId: 'tripId',
          dayTripId: 'dayTripId',
          isUpToDate: false,
          travelMode: TravelMode.driving,
        ),
      )).called(1),
    );
  });
}
