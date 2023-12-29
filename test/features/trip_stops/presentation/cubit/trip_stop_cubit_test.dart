import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/delete_trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/trip_stop_done.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stop_note.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import 'trip_stop_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<TripStopDone>(),
  MockSpec<UpdateTripStopNote>(),
  MockSpec<DeleteTripStop>(),
  MockSpec<UpdateTripStop>(),
  MockSpec<UpdateTripStopsDirectionsUpToDate>(),
])
void main() {
  late MockTripStopDone mockTripStopDone;
  late MockUpdateTripStopNote mockUpdateTripStopNote;
  late MockDeleteTripStop mockDeleteTripStop;
  late MockUpdateTripStop mockUpdateTripStop;
  late MockUpdateTripStopsDirectionsUpToDate mockUpdateTripStopsDirectionsUpToDate;

  final tTrip = Trip(
    id: '1',
    name: 'name',
    description: 'description',
    createdAt: DateTime.now(),
    userId: '1',
    startDate: DateTime.now(),
  );

  const tDayTrip = DayTrip(
    id: '1',
    description: 'description',
    index: 0,
  );

  const tTripStop = TripStop(
    id: '1',
    name: 'name',
    description: 'description',
    index: 0,
    duration: 0,
    location: LatLng(0.0, 0.0),
  );

  setUp(() {
    mockTripStopDone = MockTripStopDone();
    mockUpdateTripStopNote = MockUpdateTripStopNote();
    mockDeleteTripStop = MockDeleteTripStop();
    mockUpdateTripStop = MockUpdateTripStop();
    mockUpdateTripStopsDirectionsUpToDate = MockUpdateTripStopsDirectionsUpToDate();
  });

  setUpAll(() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  TripStopCubit getStandardTripStopCubit() {
    return TripStopCubit(
      params: TripStopCubitParams(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
      tripStopDone: mockTripStopDone,
      updateTripStopNote: mockUpdateTripStopNote,
      deleteTripStop: mockDeleteTripStop,
      updateTripStop: mockUpdateTripStop,
      updateTripStopsDirectionsUpToDate: mockUpdateTripStopsDirectionsUpToDate,
    );
  }

  group('on isDone changed', () {
    blocTest<TripStopCubit, TripStopState>(
      'On success, emits [TripStopState.normal]',
      setUp: () => when(mockTripStopDone(any)).thenAnswer((_) async => const Right(null)),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.isDoneChanged(true),
      expect: () => [
        TripStopState.saving(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop.copyWith(isDone: true),
        ),
        TripStopState.normal(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop.copyWith(isDone: true),
        ),
      ],
    );

    blocTest<TripStopCubit, TripStopState>(
      'On failure, emits [TripStopState.error]',
      setUp: () =>
          when(mockTripStopDone(any)).thenAnswer((_) async => const Left(TripStopsFailure())),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.isDoneChanged(true),
      expect: () => [
        TripStopState.saving(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop.copyWith(isDone: true),
        ),
        TripStopState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
          message: LocaleKeys.unknownError,
        ),
        TripStopState.normal(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
      ],
    );
  });

  blocTest<TripStopCubit, TripStopState>(
    'onUIError emit error state and then normal state',
    build: () => getStandardTripStopCubit(),
    act: (cubit) => cubit.onUIError(Exception()),
    expect: () => [
      TripStopState.error(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
        message: Exception().toString(),
      ),
      TripStopState.normal(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
    ],
  );

  blocTest<TripStopCubit, TripStopState>(
    'on noteChanged emit TripStopState.normal with updated tripStop',
    build: () => getStandardTripStopCubit(),
    act: (cubit) => cubit.noteChanged('note'),
    expect: () => [
      TripStopState.normal(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop.copyWith(note: 'note'),
        hasTripNoteToSave: true,
      ),
    ],
  );

  group('saveTripStopNote', () {
    blocTest<TripStopCubit, TripStopState>(
      'on forced = true emit TripStopState.noteSaving then TripStopState.normal',
      setUp: () => when(mockUpdateTripStopNote(any)).thenAnswer((_) async {
        await Future.delayed(const Duration(milliseconds: 500));
        return const Right(null);
      }),
      seed: () => TripStopState.normal(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
        hasTripNoteToSave: true,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.saveTripStopNote(forced: true),
      expect: () => [
        TripStopState.noteSaving(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
        TripStopState.normal(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
      ],
    );

    blocTest<TripStopCubit, TripStopState>(
      'on forced = false on success emit TripStopState.normal',
      setUp: () => when(mockUpdateTripStopNote(any)).thenAnswer((_) async => const Right(null)),
      seed: () => TripStopState.normal(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
        hasTripNoteToSave: true,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.saveTripStopNote(forced: false),
      expect: () => [
        TripStopState.normal(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
      ],
    );

    blocTest<TripStopCubit, TripStopState>(
      'on forced = false on fail emit TripStopState.error then TripStopState.normal',
      setUp: () =>
          when(mockUpdateTripStopNote(any)).thenAnswer((_) async => const Left(TripStopsFailure())),
      seed: () => TripStopState.normal(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
        hasTripNoteToSave: true,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.saveTripStopNote(forced: false),
      expect: () => [
        TripStopState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
          message: LocaleKeys.unknownError,
        ),
        TripStopState.normal(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
      ],
    );
  });

  group('on deleteTripStop', () {
    blocTest<TripStopCubit, TripStopState>(
      'On success, emits [TripStopState.deleting, TripStopState.deleted]',
      setUp: () => when(mockDeleteTripStop(any)).thenAnswer((_) async => const Right(null)),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.deleteTripStop(),
      expect: () => [
        TripStopState.deleting(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
        TripStopState.deleted(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
      ],
      verify: (_) {
        verify(mockUpdateTripStopsDirectionsUpToDate(UpdateTripStopsDirectionsUpToDateParams(
          tripId: tTrip.id,
          dayTripId: tDayTrip.id,
          isUpToDate: false,
        ))).called(1);
      },
    );

    blocTest<TripStopCubit, TripStopState>(
      'On failure, emits [TripStopState.deleting, TripStopState.error, TripStopState.normal]',
      setUp: () =>
          when(mockDeleteTripStop(any)).thenAnswer((_) async => const Left(TripStopsFailure())),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.deleteTripStop(),
      expect: () => [
        TripStopState.deleting(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
        TripStopState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
          message: LocaleKeys.unknownError,
        ),
        TripStopState.normal(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
      ],
    );
  });

  group('editing tests', () {
    blocTest(
      'on descriptionChanged emit TripStopStateEditing with updated description',
      seed: () => TripStopState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.descriptionChanged('description'),
      expect: () => [
        TripStopState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
          description: 'description',
        ),
      ],
    );

    blocTest(
      'on nameChanged emit TripStopStateEditing with updated description',
      seed: () => TripStopState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.nameChanged('name'),
      expect: () => [
        TripStopState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
          name: 'name',
        ),
      ],
    );

    blocTest(
      'on hourDurationChanged emit TripStopStateEditing with updated description',
      seed: () => TripStopState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.hourDurationChanged(1),
      expect: () => [
        TripStopState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
          hourDuration: 1,
        ),
      ],
    );

    blocTest(
      'on minuteDurationChanged emit TripStopStateEditing with updated description',
      seed: () => TripStopState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.minuteDurationChanged(1),
      expect: () => [
        TripStopState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
          minuteDuration: 1,
        ),
      ],
    );

    blocTest(
      'on locationChanged emit TripStopStateEditing with updated description',
      seed: () => TripStopState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.locationChanged(const LatLng(1.0, 1.0)),
      expect: () => [
        TripStopState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
          location: const LatLng(1.0, 1.0),
        ),
      ],
    );

    blocTest(
      'on cancelEditing emit TripStopState.normal',
      seed: () => TripStopState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.cancelEditing(),
      expect: () => [
        TripStopState.normal(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
      ],
    );

    group('on saveChanges', () {
      blocTest(
        'On success, emits [TripStopState.saving, TripStopState.normal]',
        setUp: () => when(mockUpdateTripStop(any)).thenAnswer((_) async => const Right(null)),
        seed: () => TripStopState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
        build: () => getStandardTripStopCubit(),
        act: (cubit) => cubit.saveChanges(),
        expect: () => [
          TripStopState.saving(
            trip: tTrip,
            dayTrip: tDayTrip,
            tripStop: tTripStop,
          ),
          TripStopState.normal(
            trip: tTrip,
            dayTrip: tDayTrip,
            tripStop: tTripStop,
          ),
        ],
      );

      blocTest(
        'On failure, emits [TripStopState.saving, TripStopState.error, TripStopState.editing]',
        setUp: () =>
            when(mockUpdateTripStop(any)).thenAnswer((_) async => const Left(TripStopsFailure())),
        seed: () => TripStopState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStop: tTripStop,
        ),
        build: () => getStandardTripStopCubit(),
        act: (cubit) => cubit.saveChanges(),
        expect: () => [
          TripStopState.saving(
            trip: tTrip,
            dayTrip: tDayTrip,
            tripStop: tTripStop,
          ),
          TripStopState.error(
            trip: tTrip,
            dayTrip: tDayTrip,
            tripStop: tTripStop,
            message: LocaleKeys.unknownError,
          ),
          TripStopState.editing(
            trip: tTrip,
            dayTrip: tDayTrip,
            tripStop: tTripStop,
          ),
        ],
        verify: (_) {
          verifyNever(mockUpdateTripStopsDirectionsUpToDate(UpdateTripStopsDirectionsUpToDateParams(
            tripId: tTrip.id,
            dayTripId: tDayTrip.id,
            isUpToDate: false,
          )));
        },
      );
    });
  });
}
