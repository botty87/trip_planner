import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trips.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trips_indexes.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/update_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';

import 'trip_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UpdateTrip>(),
  MockSpec<DeleteTrip>(),
  MockSpec<ListenDayTrips>(),
  MockSpec<UpdateDayTripsIndexes>(),
  MockSpec<FirebaseCrashlytics>(),
])
void main() {
  late MockUpdateTrip mockUpdateTrip;
  late MockDeleteTrip mockDeleteTrip;
  late MockListenDayTrips mockListenDayTrips;
  late MockUpdateDayTripsIndexes mockUpdateDayTripsIndexes;
  late MockFirebaseCrashlytics mockFirebaseCrashlytics;

  final tStartDate = DateTime.now();

  final tTrip = Trip(
    id: '1',
    name: 'name',
    description: 'description',
    createdAt: DateTime.now(),
    userId: '1',
    startDate: tStartDate,
  );

  TripCubit getStandardCubit() => TripCubit(
      trip: tTrip,
      saveTrip: mockUpdateTrip,
      deleteTrip: mockDeleteTrip,
      listenDayTrips: mockListenDayTrips,
      updateDayTripsIndexes: mockUpdateDayTripsIndexes,
      crashlytics: mockFirebaseCrashlytics);

  setUp(() {
    mockUpdateTrip = MockUpdateTrip();
    mockDeleteTrip = MockDeleteTrip();
    mockListenDayTrips = MockListenDayTrips();
    mockUpdateDayTripsIndexes = MockUpdateDayTripsIndexes();
    mockFirebaseCrashlytics = MockFirebaseCrashlytics();
  });

  blocTest<TripCubit, TripState>(
    'On edit emit TripStateEditing',
    act: (cubit) => cubit.edit(),
    expect: () => [
      TripState.editing(
        trip: tTrip,
        name: tTrip.name,
        description: tTrip.description,
        startDate: tTrip.startDate,
        isPublic: false,
      ),
    ],
    build: () => getStandardCubit(),
  );

  blocTest<TripCubit, TripState>(
    'On nameChanged emit TripStateEditing with name changed',
    seed: () => TripState.editing(
        trip: tTrip,
        name: tTrip.name,
        description: tTrip.description,
        startDate: tTrip.startDate,
        isPublic: true),
    act: (cubit) => cubit.nameChanged('new name'),
    expect: () => [
      TripState.editing(
          trip: tTrip,
          name: 'new name',
          description: tTrip.description,
          startDate: tTrip.startDate,
          isPublic: true)
    ],
    build: () => getStandardCubit(),
  );

  blocTest<TripCubit, TripState>(
    'On descriptionChanged emit TripStateEditing with description changed',
    seed: () => TripState.editing(
        trip: tTrip,
        name: tTrip.name,
        description: tTrip.description,
        startDate: tTrip.startDate,
        isPublic: true),
    act: (cubit) => cubit.descriptionChanged('new description'),
    expect: () => [
      TripState.editing(
          trip: tTrip,
          name: tTrip.name,
          description: 'new description',
          startDate: tTrip.startDate,
          isPublic: true),
    ],
    build: () => getStandardCubit(),
  );

  blocTest<TripCubit, TripState>(
    'On startDateChanged emit TripStateEditing with startDate changed',
    seed: () => TripState.editing(
        trip: tTrip,
        name: tTrip.name,
        description: tTrip.description,
        startDate: DateTime.now(),
        isPublic: true),
    act: (cubit) => cubit.startDateChanged(tStartDate),
    expect: () => [
      TripState.editing(
          trip: tTrip,
          name: tTrip.name,
          description: tTrip.description,
          startDate: tStartDate,
          isPublic: true),
    ],
    build: () => getStandardCubit(),
  );

  blocTest<TripCubit, TripState>(
    'On editCancel emit TripState with original trip',
    seed: () => TripState.editing(
        trip: tTrip,
        name: tTrip.name,
        description: tTrip.description,
        startDate: tTrip.startDate,
        isPublic: true),
    act: (cubit) => cubit.cancelEditing(),
    expect: () => [TripState.normal(trip: tTrip)],
    build: () => getStandardCubit(),
  );

  group('saveChanges', () {
    blocTest<TripCubit, TripState>(
      'On save emit TripState with updated trip',
      seed: () => TripState.editing(
          trip: tTrip,
          name: 'new name',
          description: tTrip.description,
          startDate: tTrip.startDate,
          isPublic: true),
      setUp: () => when(mockUpdateTrip.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        TripState.editing(
            trip: tTrip,
            name: 'new name',
            description: tTrip.description,
            isSaving: true,
            startDate: tTrip.startDate,
            isPublic: true),
        TripState.normal(trip: tTrip.copyWith(name: 'new name'))
      ],
      build: () => getStandardCubit(),
    );

    blocTest<TripCubit, TripState>(
      'On save emit TripStateError and then TripStateEditing if updateTrip fails',
      seed: () => TripState.editing(
          trip: tTrip,
          name: 'new name',
          description: tTrip.description,
          startDate: tTrip.startDate,
          isPublic: true),
      setUp: () => when(mockUpdateTrip.call(any))
          .thenAnswer((_) async => const Left(TripsFailure(message: 'error'))),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        TripState.editing(
            trip: tTrip,
            name: 'new name',
            description: tTrip.description,
            isSaving: true,
            startDate: tTrip.startDate,
            isPublic: true),
        TripState.error(trip: tTrip, errorMessage: 'error'),
        TripState.editing(
            trip: tTrip,
            name: 'new name',
            description: tTrip.description,
            startDate: tTrip.startDate,
            isPublic: true),
      ],
      build: () => getStandardCubit(),
    );
  });

  group('Test day trips indexes reorder', () {
    final tDayTrips = [
      const DayTrip(id: '1', index: 0),
      const DayTrip(id: '2', index: 1),
      const DayTrip(id: '3', index: 2),
      const DayTrip(id: '4', index: 3),
    ];

    blocTest<TripCubit, TripState>('On reorderDayTrips call updateDayTripsIndexes',
        seed: () => TripState.normal(trip: tTrip, dayTrips: tDayTrips),
        act: (cubit) => cubit.reorderDayTrips(0, 2),
        build: () => getStandardCubit(),
        verify: (_) => verify(mockUpdateDayTripsIndexes.call(any)));
  });

  group('modalBottomEditingDismissed', () {
    blocTest<TripCubit, TripState>(
      'On modalBottomEditingDismissed emit TripState if previous state is TripStateEditing',
      seed: () => TripState.editing(
          trip: tTrip,
          name: tTrip.name,
          description: tTrip.description,
          startDate: tTrip.startDate,
          isPublic: true),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [TripState.normal(trip: tTrip)],
      build: () => getStandardCubit(),
    );

    blocTest<TripCubit, TripState>(
      'On modalBottomEditingDismissed emit nothing if previous state is not TripStateEditing',
      seed: () => TripState.normal(trip: tTrip),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [],
      build: () => getStandardCubit(),
    );
  });
}
