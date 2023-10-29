import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/trip_stop_done.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stop_note.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import 'trip_stop_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<TripStopDone>(),
  MockSpec<UpdateTripStopNote>(),
])
void main() {
  late MockTripStopDone mockTripStopDone;
  late MockUpdateTripStopNote mockUpdateTripStopNote;

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
  });

  TripStopCubit getStandardTripStopCubit({bool hasTripNoteToSave = false}) {
    return TripStopCubit(
      params: TripStopCubitParams(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStop: tTripStop,
      ),
      tripStopDone: mockTripStopDone,
      updateTripStopNote: mockUpdateTripStopNote,
      hasTripNoteToSave: hasTripNoteToSave,
    );
  }

  group('on isDone changed', () {
    blocTest<TripStopCubit, TripStopState>(
      'On success, emits [TripStopState.normal]',
      setUp: () => when(mockTripStopDone(any)).thenAnswer((_) async => const Right(null)),
      build: () => getStandardTripStopCubit(),
      act: (cubit) => cubit.isDoneChanged(true),
      expect: () => [
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
      ),
    ],
  );

  group('saveTripStopNote', () {
    blocTest<TripStopCubit, TripStopState>(
      'on forced = true emit TripStopState.noteSaving then TripStopState.normal',
      setUp: () => when(mockUpdateTripStopNote(any)).thenAnswer((_) async => const Right(null)),
      build: () => getStandardTripStopCubit(hasTripNoteToSave: true),
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
      build: () => getStandardTripStopCubit(hasTripNoteToSave: true),
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
      build: () => getStandardTripStopCubit(hasTripNoteToSave: true),
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
}
