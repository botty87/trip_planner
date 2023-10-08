import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/delete_day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_start_time.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/listen_trip_stops.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stops_indexes.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import 'day_trip_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UpdateDayTrip>(),
  MockSpec<DeleteDayTrip>(),
  MockSpec<ListenTripStops>(),
  MockSpec<UpdateDayTripStartTime>(),
  MockSpec<UpdateTripStopsIndexes>(),
])
void main() {
  late MockUpdateDayTrip mockUpdateDayTrip;
  late MockDeleteDayTrip mockDeleteDayTrip;
  late MockListenTripStops mockListenTripStops;
  late MockUpdateDayTripStartTime mockUpdateDayTripStartTime;
  late MockUpdateTripStopsIndexes mockUpdateTripStopsIndexes;

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

  final tTripStops = [
    const TripStop(
      id: '1',
      name: 'name',
      description: 'description',
      index: 0,
      duration: 0,
      location: LatLng(0.0, 0.0),
    ),
  ];

  setUp(() {
    mockUpdateDayTrip = MockUpdateDayTrip();
    mockDeleteDayTrip = MockDeleteDayTrip();
    mockListenTripStops = MockListenTripStops();
    mockUpdateDayTripStartTime = MockUpdateDayTripStartTime();
    mockUpdateTripStopsIndexes = MockUpdateTripStopsIndexes();
  });

  DayTripCubit getStandardDayTripCubit() {
    return DayTripCubit(
      trip: tTrip,
      dayTrip: tDayTrip,
      updateDayTrip: mockUpdateDayTrip,
      deleteDayTrip: mockDeleteDayTrip,
      listenTripStops: mockListenTripStops,
      updateDayTripStartTime: mockUpdateDayTripStartTime,
      updateDayTripsIndexes: mockUpdateTripStopsIndexes,
    );
  }

  blocTest<DayTripCubit, DayTripState>(
    'On edit emit DayTripStateEditing',
    seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
    act: (cubit) => cubit.edit(),
    expect: () =>
        [DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description)],
    build: () => getStandardDayTripCubit(),
  );

  blocTest<DayTripCubit, DayTripState>(
    'On descriptionChanged emit DayTripStateEditing with new description',
    seed: () =>
        DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
    act: (cubit) => cubit.descriptionChanged('new description'),
    expect: () =>
        [DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: 'new description')],
    build: () => getStandardDayTripCubit(),
  );
  blocTest<DayTripCubit, DayTripState>(
    'On cancelEditing emit DayTripState with original Daytrip',
    seed: () =>
        DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
    act: (cubit) => cubit.cancelEditing(),
    expect: () => [DayTripState.normal(trip: tTrip, dayTrip: tDayTrip)],
    build: () => getStandardDayTripCubit(),
  );

  group('saveChanges', () {
    blocTest<DayTripCubit, DayTripState>(
      'On save emit DayTripState with updated DayTrip',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: 'new description'),
      setUp: () => when(mockUpdateDayTrip.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        DayTripState.editing(
            trip: tTrip, dayTrip: tDayTrip, isSaving: true, description: 'new description'),
        DayTripState.normal(
            trip: tTrip, dayTrip: tDayTrip.copyWith(description: 'new description')),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On save emit DayTripStateError and then DayTripStateEditing if updateDayTrip fails',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      setUp: () => when(mockUpdateDayTrip.call(any))
          .thenAnswer((_) async => const Left(DayTripsFailure(message: 'error'))),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        DayTripState.editing(
            trip: tTrip, dayTrip: tDayTrip, isSaving: true, description: tDayTrip.description),
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          errorMessage: 'error',
        ),
        DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      ],
      build: () => getStandardDayTripCubit(),
    );
  });

  group('saveDayTripStartTime', () {
    blocTest<DayTripCubit, DayTripState>(
      'On save DayTripStartTime emit nothing and return true if updateDayTripStartTime succeeds',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
      setUp: () =>
          when(mockUpdateDayTripStartTime.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) async => expect(await cubit.saveDayTripStopStartTime(), true),
      expect: () => [],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On save forced DayTripStartTime emit DayTripStateNormal explictitStartTimeSave true, and return true if updateDayTripStartTime succeeds',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
      setUp: () =>
          when(mockUpdateDayTripStartTime.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) async => expect(await cubit.saveDayTripStopStartTime(forced: true), true),
      expect: () => [
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, explictitStartTimeSave: true),
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, explictitStartTimeSave: false),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On save DayTripStartTime emit DayTripStateError and then DayTripStateNormal if updateDayTrip fails, and return false',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
      setUp: () => when(mockUpdateDayTripStartTime.call(any))
          .thenAnswer((_) async => const Left(DayTripsFailure(message: 'error'))),
      act: (cubit) async => expect(await cubit.saveDayTripStopStartTime(), false),
      expect: () => [
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          errorMessage: 'error',
        ),
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
      ],
      build: () => getStandardDayTripCubit(),
    );
  });

  group('modalBottomEditingDismissed', () {
    blocTest<DayTripCubit, DayTripState>(
      'On modalBottomEditingDismissed emit DayTripState if previous state is DayTripStateEditing',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [DayTripState.normal(trip: tTrip, dayTrip: tDayTrip)],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On modalBottomEditingDismissed emit nothing if previous state is not DayTripStateEditing',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [],
      build: () => getStandardDayTripCubit(),
    );
  });

  group('delete day trip', () {
    blocTest<DayTripCubit, DayTripState>(
      'On delete emit DayTripStateDeleting and then DayTripStateDeleted if deleteDayTrip succeeds',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      setUp: () => when(mockDeleteDayTrip.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.deleteDayTrip(),
      expect: () => [
        DayTripState.deleting(trip: tTrip, dayTrip: tDayTrip),
        DayTripState.deleted(trip: tTrip, dayTrip: tDayTrip),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On delete emit DayTripStateDeleting and then DayTripStateError and DayTripStateNormal if deleteDayTrip fails',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      setUp: () => when(mockDeleteDayTrip.call(any))
          .thenAnswer((_) async => const Left(DayTripsFailure(message: 'error'))),
      act: (cubit) => cubit.deleteDayTrip(),
      expect: () => [
        DayTripState.deleting(trip: tTrip, dayTrip: tDayTrip),
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          errorMessage: 'error',
        ),
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
      ],
      build: () => getStandardDayTripCubit(),
    );
  });

  blocTest<DayTripCubit, DayTripState>(
    'On reorderTripStops call updateTripStopsIndexes with new tripStops order',
    seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
    act: (cubit) => cubit.reorderTripStops(0, 1),
    expect: () => [],
    verify: (_) => verify(mockUpdateTripStopsIndexes.call(any)).called(1),
    build: () => getStandardDayTripCubit(),
  );

  group('listen tripStops', () {
    blocTest<DayTripCubit, DayTripState>(
      'On listenTripStops emit DayTripState with tripStops',
      setUp: () =>
          when(mockListenTripStops.call(any)).thenAnswer((_) => Stream.value(right(tTripStops))),
      expect: () => [
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      ],
      build: () => getStandardDayTripCubit(),
    );
  });
}
