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
import 'package:trip_planner/features/trips/domain/usecases/listen_trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/remove_user_for_share.dart';
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
  MockSpec<ListenTrip>(),
  MockSpec<RemoveUserForShare>(),
])
void main() {
  late MockUpdateTrip mockUpdateTrip;
  late MockDeleteTrip mockDeleteTrip;
  late MockListenDayTrips mockListenDayTrips;
  late MockUpdateDayTripsIndexes mockUpdateDayTripsIndexes;
  late MockFirebaseCrashlytics mockFirebaseCrashlytics;
  late MockListenTrip mockListenTrip;
  late MockRemoveUserForShare mockRemoveUserForShare;

  final tStartDate = DateTime.now();

  final tTrip = Trip(
    id: '1',
    name: 'name',
    description: 'description',
    createdAt: DateTime.now(),
    userId: '1',
    startDate: tStartDate,
  );

  const tDayTrips = [
    DayTrip(id: '1', index: 0),
    DayTrip(id: '2', index: 1),
    DayTrip(id: '3', index: 2),
    DayTrip(id: '4', index: 3),
  ];

  TripCubit getStandardCubit() => TripCubit(
        trip: tTrip,
        saveTrip: mockUpdateTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips,
        updateDayTripsIndexes: mockUpdateDayTripsIndexes,
        crashlytics: mockFirebaseCrashlytics,
        listenTrip: mockListenTrip,
        removeUserForShare: mockRemoveUserForShare,
      );

  setUp(() {
    mockUpdateTrip = MockUpdateTrip();
    mockDeleteTrip = MockDeleteTrip();
    mockListenDayTrips = MockListenDayTrips();
    mockUpdateDayTripsIndexes = MockUpdateDayTripsIndexes();
    mockFirebaseCrashlytics = MockFirebaseCrashlytics();
    mockListenTrip = MockListenTrip();
    mockRemoveUserForShare = MockRemoveUserForShare();
  });

  blocTest<TripCubit, TripState>(
    'On edit emit TripStateEditing',
    seed: () => TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
    act: (cubit) => cubit.edit(),
    expect: () => [
      TripState.editing(
        trip: tTrip,
        name: tTrip.name,
        description: tTrip.description,
        startDate: tTrip.startDate,
        isPublic: false,
        dayTrips: tDayTrips,
        languageCode: 'en',
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
      isPublic: true,
      dayTrips: tDayTrips,
      languageCode: 'en',
    ),
    act: (cubit) => cubit.nameChanged('new name'),
    expect: () => [
      TripState.editing(
        trip: tTrip,
        name: 'new name',
        description: tTrip.description,
        startDate: tTrip.startDate,
        dayTrips: tDayTrips,
        isPublic: true,
        languageCode: 'en',
      )
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
      dayTrips: tDayTrips,
      isPublic: true,
      languageCode: 'en',
    ),
    act: (cubit) => cubit.descriptionChanged('new description'),
    expect: () => [
      TripState.editing(
        trip: tTrip,
        name: tTrip.name,
        description: 'new description',
        startDate: tTrip.startDate,
        dayTrips: tDayTrips,
        isPublic: true,
        languageCode: 'en',
      ),
    ],
    build: () => getStandardCubit(),
  );

  blocTest<TripCubit, TripState>(
    'On startDateChanged emit TripStateEditing with startDate changed',
    seed: () => TripState.editing(
      trip: tTrip,
      name: tTrip.name,
      description: tTrip.description,
      dayTrips: tDayTrips,
      startDate: DateTime.now(),
      isPublic: true,
      languageCode: 'en',
    ),
    act: (cubit) => cubit.startDateChanged(tStartDate),
    expect: () => [
      TripState.editing(
        trip: tTrip,
        name: tTrip.name,
        description: tTrip.description,
        startDate: tStartDate,
        dayTrips: tDayTrips,
        isPublic: true,
        languageCode: 'en',
      ),
    ],
    build: () => getStandardCubit(),
  );

  group('saveChanges', () {
    blocTest<TripCubit, TripState>(
      'On save emit TripState with updated trip',
      seed: () => TripState.editing(
        trip: tTrip,
        name: 'new name',
        isSaving: false,
        description: tTrip.description,
        startDate: tTrip.startDate,
        dayTrips: tDayTrips,
        isPublic: true,
        languageCode: 'en',
      ),
      setUp: () => when(mockUpdateTrip.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        TripState.editing(
          trip: tTrip,
          name: 'new name',
          description: tTrip.description,
          isSaving: true,
          startDate: tTrip.startDate,
          dayTrips: tDayTrips,
          isPublic: true,
          languageCode: 'en',
        ),
        TripState.loaded(
          trip: tTrip.copyWith(name: 'new name', isPublic: true, languageCode: 'en'),
          dayTrips: tDayTrips,
        )
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
        dayTrips: tDayTrips,
        isPublic: true,
        languageCode: 'en',
      ),
      setUp: () => when(mockUpdateTrip.call(any))
          .thenAnswer((_) async => const Left(TripsFailure(message: 'error'))),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        TripState.editing(
          trip: tTrip,
          name: 'new name',
          description: tTrip.description,
          isSaving: true,
          dayTrips: tDayTrips,
          startDate: tTrip.startDate,
          isPublic: true,
          languageCode: 'en',
        ),
        TripState.editing(
          trip: tTrip,
          name: 'new name',
          description: tTrip.description,
          isSaving: false,
          dayTrips: tDayTrips,
          startDate: tTrip.startDate,
          isPublic: true,
          errorMessage: 'error',
          languageCode: 'en',
        ),
      ],
      build: () => getStandardCubit(),
    );
  });

  group('Test day trips indexes reorder', () {
    final tDayTripsSorted = [
      const DayTrip(id: '2', index: 0),
      const DayTrip(id: '3', index: 1),
      const DayTrip(id: '1', index: 2),
      const DayTrip(id: '4', index: 3),
    ];

    blocTest<TripCubit, TripState>('On reorderDayTrips call updateDayTripsIndexes',
        setUp: () =>
            when(mockUpdateDayTripsIndexes.call(any)).thenAnswer((_) async => const Right(null)),
        seed: () => TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
        act: (cubit) => cubit.reorderDayTrips(0, 2, tDayTripsSorted),
        build: () => getStandardCubit(),
        expect: () => [TripState.loaded(trip: tTrip, dayTrips: tDayTripsSorted)],
        verify: (_) => verify(mockUpdateDayTripsIndexes.call(any)));
  });

  group('modalBottomEditingDismissed', () {
    blocTest<TripCubit, TripState>(
      'On modalBottomEditingDismissed emit TripState if previous state is TripStateEditing',
      seed: () => TripState.editing(
        trip: tTrip,
        dayTrips: tDayTrips,
        name: tTrip.name,
        description: tTrip.description,
        startDate: tTrip.startDate,
        isPublic: true,
        languageCode: 'en',
      ),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [TripState.loaded(trip: tTrip, dayTrips: tDayTrips)],
      build: () => getStandardCubit(),
    );

    blocTest<TripCubit, TripState>(
      'On modalBottomEditingDismissed emit nothing if previous state is not TripStateEditing',
      seed: () => TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [],
      build: () => getStandardCubit(),
    );
  });

  group('On delete trip', () {
    blocTest<TripCubit, TripState>(
      'emit TripStateDeleting and then TripStateDeleted',
      seed: () => TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
      setUp: () => when(mockDeleteTrip.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.deleteTrip(),
      expect: () => [
        TripState.deleting(trip: tTrip),
        TripState.deleted(trip: tTrip),
      ],
      build: () => getStandardCubit(),
    );

    blocTest<TripCubit, TripState>(
      'emit TripStateError if deleteTrip fails',
      seed: () => TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
      setUp: () => when(mockDeleteTrip.call(any))
          .thenAnswer((_) async => const Left(TripsFailure(message: 'error'))),
      act: (cubit) => cubit.deleteTrip(),
      expect: () => [
        TripState.deleting(trip: tTrip),
        TripState.error(trip: tTrip, errorMessage: 'error', fatal: false),
      ],
      build: () => getStandardCubit(),
    );
  });

  group('On remove trip', () {
    blocTest<TripCubit, TripState>(
      'emit TripStateDeleting and then TripStateDeleted',
      seed: () => TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
      setUp: () => when(mockRemoveUserForShare.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.removeTrip('1'),
      expect: () => [
        TripState.deleting(trip: tTrip),
        TripState.deleted(trip: tTrip),
      ],
      build: () => getStandardCubit(),
    );

    blocTest<TripCubit, TripState>(
      'emit TripStateError if removeUserForShare fails',
      seed: () => TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
      setUp: () => when(mockRemoveUserForShare.call(any))
          .thenAnswer((_) async => const Left(ShareTripFailure(message: 'error'))),
      act: (cubit) => cubit.removeTrip('1'),
      expect: () => [
        TripState.deleting(trip: tTrip),
        TripState.error(trip: tTrip, errorMessage: 'error', fatal: false),
      ],
      build: () => getStandardCubit(),
    );
  });
}
