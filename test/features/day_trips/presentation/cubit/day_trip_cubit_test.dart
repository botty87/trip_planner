import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/delete_day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_start_time.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/delete_trip_stop.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/listen_trip_stops.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/trip_stop_done.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_travel_time.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stop_placeholder.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stops_indexes.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import 'day_trip_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UpdateDayTrip>(),
  MockSpec<DeleteDayTrip>(),
  MockSpec<ListenTripStops>(),
  MockSpec<UpdateDayTripStartTime>(),
  MockSpec<UpdateTripStopsIndexes>(),
  MockSpec<UpdateTravelTime>(),
  MockSpec<TripStopDone>(),
  MockSpec<ListenDayTrip>(),
  MockSpec<FirebaseCrashlytics>(),
  MockSpec<UpdateTripStopsDirectionsUpToDate>(),
  MockSpec<DeleteTripStop>(),
  MockSpec<UpdateTripStopPlaceholder>(),
])
void main() {
  late MockUpdateDayTrip mockUpdateDayTrip;
  late MockDeleteDayTrip mockDeleteDayTrip;
  late MockListenTripStops mockListenTripStops;
  late MockUpdateDayTripStartTime mockUpdateDayTripStartTime;
  late MockUpdateTripStopsIndexes mockUpdateTripStopsIndexes;
  late MockUpdateTravelTime mockUpdateTravelTime;
  late MockTripStopDone mockTripStopDone;
  late MockListenDayTrip mockListenDayTrip;
  late MockFirebaseCrashlytics mockFirebaseCrashlytics;
  late MockUpdateTripStopsDirectionsUpToDate mockUpdateTripStopsDirectionsUpToDate;
  late MockDeleteTripStop mockDeleteTripStop;
  late MockUpdateTripStopPlaceholder mockUpdateTripStopPlaceholder;

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
    const TripStop(
      id: '2',
      name: 'name',
      description: 'description',
      index: 1,
      duration: 0,
      location: LatLng(0.0, 0.0),
    ),
  ];

  const tTripStopPlaceHolder = TripStopPlaceholder(
    name: 'name',
    duration: 0,
  );

  setUp(() {
    mockUpdateDayTrip = MockUpdateDayTrip();
    mockDeleteDayTrip = MockDeleteDayTrip();
    mockListenTripStops = MockListenTripStops();
    mockUpdateDayTripStartTime = MockUpdateDayTripStartTime();
    mockUpdateTripStopsIndexes = MockUpdateTripStopsIndexes();
    mockUpdateTravelTime = MockUpdateTravelTime();
    mockTripStopDone = MockTripStopDone();
    mockListenDayTrip = MockListenDayTrip();
    mockFirebaseCrashlytics = MockFirebaseCrashlytics();
    mockUpdateTripStopsDirectionsUpToDate = MockUpdateTripStopsDirectionsUpToDate();
    mockDeleteTripStop = MockDeleteTripStop();
    mockUpdateTripStopPlaceholder = MockUpdateTripStopPlaceholder();
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
      updateTravelTime: mockUpdateTravelTime,
      tripStopDone: mockTripStopDone,
      listenDayTrip: mockListenDayTrip,
      crashlytics: mockFirebaseCrashlytics,
      updateTripStopsDirectionsUpToDate: mockUpdateTripStopsDirectionsUpToDate,
      deleteTripStop: mockDeleteTripStop,
      updateTripStopPlaceholder: mockUpdateTripStopPlaceholder,
    );
  }

  blocTest<DayTripCubit, DayTripState>(
    'On edit emit DayTripStateEditing',
    seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
    act: (cubit) => cubit.edit(),
    expect: () => [
      DayTripState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          description: tDayTrip.description,
          tripStops: tTripStops,
          hasStartTimeToSave: false),
    ],
    build: () => getStandardDayTripCubit(),
  );

  blocTest<DayTripCubit, DayTripState>(
    'On descriptionChanged emit DayTripStateEditing with new description',
    seed: () => DayTripState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        description: tDayTrip.description,
        tripStops: tTripStops,
        hasStartTimeToSave: false),
    act: (cubit) => cubit.descriptionChanged('new description'),
    expect: () => [
      DayTripState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          description: 'new description',
          tripStops: tTripStops,
          hasStartTimeToSave: false)
    ],
    build: () => getStandardDayTripCubit(),
  );
  blocTest<DayTripCubit, DayTripState>(
    'On cancelEditing emit DayTripState with original Daytrip',
    seed: () => DayTripState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        description: tDayTrip.description,
        tripStops: tTripStops,
        hasStartTimeToSave: false),
    act: (cubit) => cubit.cancelEditing(),
    expect: () => [DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops)],
    build: () => getStandardDayTripCubit(),
  );

  group('saveChanges', () {
    blocTest<DayTripCubit, DayTripState>(
      'On save emit DayTripState with updated DayTrip',
      seed: () => DayTripState.editing(
        trip: tTrip,
        dayTrip: tDayTrip,
        description: 'new description',
        tripStops: tTripStops,
        hasStartTimeToSave: false,
      ),
      setUp: () => when(mockUpdateDayTrip.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        DayTripState.editing(
            trip: tTrip,
            dayTrip: tDayTrip,
            isSaving: true,
            description: 'new description',
            tripStops: tTripStops,
            hasStartTimeToSave: false),
        DayTripState.loaded(
            trip: tTrip,
            dayTrip: tDayTrip.copyWith(description: 'new description'),
            tripStops: tTripStops),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On save emit DayTripStateError and then DayTripStateEditing if updateDayTrip fails',
      seed: () => DayTripState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          description: tDayTrip.description,
          tripStops: tTripStops,
          hasStartTimeToSave: false),
      setUp: () => when(mockUpdateDayTrip.call(any))
          .thenAnswer((_) async => const Left(DayTripsFailure(message: 'error'))),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        DayTripState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          isSaving: true,
          description: tDayTrip.description,
          tripStops: tTripStops,
          hasStartTimeToSave: false,
        ),
        DayTripState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          description: tDayTrip.description,
          tripStops: tTripStops,
          hasStartTimeToSave: false,
          errorMessage: 'error',
          isSaving: false,
        ),
      ],
      build: () => getStandardDayTripCubit(),
    );
  });

  group('saveDayTripStartTime', () {
    blocTest<DayTripCubit, DayTripState>(
      'On save DayTripStartTime emit nothing and return true if updateDayTripStartTime succeeds',
      seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () =>
          when(mockUpdateDayTripStartTime.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) async => expect(await cubit.saveDayTripStopStartTime(), true),
      expect: () => [],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On save forced DayTripStartTime emit DayTripStateNormal explictitStartTimeSave true, and return true if updateDayTripStartTime succeeds',
      seed: () => DayTripState.loaded(
          trip: tTrip, dayTrip: tDayTrip, hasStartTimeToSave: true, tripStops: tTripStops),
      setUp: () =>
          when(mockUpdateDayTripStartTime.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) async => expect(await cubit.saveDayTripStopStartTime(forced: true), true),
      expect: () => [
        DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          explictitStartTimeSave: true,
          hasStartTimeToSave: true,
          tripStops: tTripStops,
        ),
        DayTripState.loaded(
            trip: tTrip,
            dayTrip: tDayTrip,
            explictitStartTimeSave: false,
            hasStartTimeToSave: false,
            tripStops: tTripStops),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On save DayTripStartTime emit DayTripStateError and then DayTripStateNormal if updateDayTrip fails, and return false',
      seed: () => DayTripState.loaded(
          trip: tTrip, dayTrip: tDayTrip, hasStartTimeToSave: true, tripStops: tTripStops),
      setUp: () => when(mockUpdateDayTripStartTime.call(any))
          .thenAnswer((_) async => const Left(DayTripsFailure(message: 'error'))),
      act: (cubit) async => expect(await cubit.saveDayTripStopStartTime(), false),
      expect: () => [
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          errorMessage: 'error',
          fatal: false,
          hasStartTimeToSave: false,
        ),
        DayTripState.loaded(
            trip: tTrip, dayTrip: tDayTrip, hasStartTimeToSave: false, tripStops: tTripStops),
      ],
      build: () => getStandardDayTripCubit(),
    );
  });

  group('modalBottomEditingDismissed', () {
    blocTest<DayTripCubit, DayTripState>(
      'On modalBottomEditingDismissed emit DayTripState if previous state is DayTripStateEditing',
      seed: () => DayTripState.editing(
          trip: tTrip,
          dayTrip: tDayTrip,
          description: tDayTrip.description,
          tripStops: tTripStops,
          hasStartTimeToSave: false),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [
        DayTripState.loaded(
            trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, hasStartTimeToSave: false)
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On modalBottomEditingDismissed emit nothing if previous state is not DayTripStateEditing',
      seed: () => DayTripState.loaded(
          trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, hasStartTimeToSave: false),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [],
      build: () => getStandardDayTripCubit(),
    );
  });

  group('delete day trip', () {
    blocTest<DayTripCubit, DayTripState>(
      'On delete emit DayTripStateDeleting and then DayTripStateDeleted if deleteDayTrip succeeds',
      seed: () => DayTripState.loaded(
          trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, hasStartTimeToSave: false),
      setUp: () => when(mockDeleteDayTrip.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.deleteDayTrip(),
      expect: () => [
        DayTripState.deleting(
            trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, hasStartTimeToSave: false),
        DayTripState.deleted(trip: tTrip, dayTrip: tDayTrip),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On delete emit DayTripStateDeleting and then DayTripStateError and DayTripStateNormal if deleteDayTrip fails',
      seed: () => DayTripState.loaded(
          trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, hasStartTimeToSave: false),
      setUp: () => when(mockDeleteDayTrip.call(any))
          .thenAnswer((_) async => const Left(DayTripsFailure(message: 'error'))),
      act: (cubit) => cubit.deleteDayTrip(),
      expect: () => [
        DayTripState.deleting(
            trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, hasStartTimeToSave: false),
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          errorMessage: 'error',
          fatal: false,
          hasStartTimeToSave: false,
        ),
        DayTripState.loaded(
            trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, hasStartTimeToSave: false),
      ],
      build: () => getStandardDayTripCubit(),
    );
  });

  group('update travel time', () {
    blocTest<DayTripCubit, DayTripState>(
      'On updateTravelTimeToNextStop emit DayTripState with updated tripStops',
      seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockUpdateTravelTime.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.updateTravelTimeToNextStop(tTripStops.first.id, 0),
      expect: () => [],
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockUpdateTravelTime.call(any)).called(1),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On updateTravelTimeToNextStop emit nothing if updateTravelTime succeeds',
      seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockUpdateTravelTime.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.updateTravelTimeToNextStop(tTripStops.first.id, 0),
      expect: () => [],
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockUpdateTravelTime.call(any)).called(1),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On updateTravelTimeToNextStop emit DayTripStateError and then DayTripStateNormal if updateTravelTime fails',
      seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockUpdateTravelTime.call(any))
          .thenAnswer((_) async => const Left(TripStopsFailure(message: 'error'))),
      act: (cubit) => cubit.updateTravelTimeToNextStop(tTripStops.first.id, 0),
      expect: () => [
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          errorMessage: 'error',
          fatal: false,
          hasStartTimeToSave: false,
        ),
        DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      ],
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockUpdateTravelTime.call(any)).called(1),
    );
  });

  group('reorderTripStops', () {
    final updatedTripStops = [tTripStops[1], tTripStops[0]];
    blocTest<DayTripCubit, DayTripState>(
      'On reorderTripStops call updateTripStopsIndexes with new tripStops order and emit loaded state with new tripStops order',
      seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () {
        when(mockUpdateTripStopsIndexes.call(any)).thenAnswer((_) async => const Right(null));
        when(mockUpdateTripStopsDirectionsUpToDate.call(any))
            .thenAnswer((_) async => const Right(null));
      },
      act: (cubit) => cubit.reorderTripStops(0, 1, updatedTripStops),
      expect: () =>
          [DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: updatedTripStops)],
      verify: (_) {
        verify(mockUpdateTripStopsIndexes.call(any)).called(1);
        verify(mockUpdateTripStopsDirectionsUpToDate.call(any)).called(1);
      },
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On reorderTripStops emit loaded state with updated tripStops order and then error state if updateTripStopsIndexes fails',
      seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () {
        when(mockUpdateTripStopsIndexes.call(any))
            .thenAnswer((_) async => const Left(TripStopsFailure(message: 'error')));
        when(mockUpdateTripStopsDirectionsUpToDate.call(any))
            .thenAnswer((_) async => const Right(null));
      },
      act: (cubit) => cubit.reorderTripStops(0, 1, updatedTripStops),
      expect: () => [
        DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: updatedTripStops),
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          errorMessage: 'error',
          fatal: false,
          hasStartTimeToSave: false,
        ),
        DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      ],
      verify: (_) {
        verify(mockUpdateTripStopsIndexes.call(any)).called(1);
        verifyNever(mockUpdateTripStopsDirectionsUpToDate.call(any));
      },
      build: () => getStandardDayTripCubit(),
    );
  });

  group('listen tripStops', () {
    blocTest<DayTripCubit, DayTripState>(
      'On listenTripStops emit DayTripState with tripStops',
      setUp: () =>
          when(mockListenTripStops.call(any)).thenAnswer((_) => Stream.value(right(tTripStops))),
      expect: () => [
        DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      ],
      act: (cubit) => cubit.startListenTripStops(),
      build: () => getStandardDayTripCubit(),
    );
  });

  group('update trip stop done', () {
    blocTest<DayTripCubit, DayTripState>(
      'On tripStopDone call tripStopDone usecase',
      seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockTripStopDone.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.toggleTripStopDone(true, 0),
      expect: () {
        final updatedTripStop = tTripStops.first.copyWith(isDone: true);
        final updatedTripStops = [updatedTripStop, tTripStops[1]];
        return [
          DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: updatedTripStops),
        ];
      },
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockTripStopDone.call(any)).called(1),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On tripStopDone emit DayTripStateError and then DayTripStateNormal if tripStopDone fails',
      seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockTripStopDone.call(any))
          .thenAnswer((_) async => const Left(TripStopsFailure(message: 'error'))),
      act: (cubit) => cubit.toggleTripStopDone(true, 0),
      expect: () {
        final updatedTripStop = tTripStops.first.copyWith(isDone: true);
        final updatedTripStops = [updatedTripStop, tTripStops[1]];
        return [
          DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: updatedTripStops),
          DayTripState.error(
            trip: tTrip,
            dayTrip: tDayTrip,
            errorMessage: 'error',
            fatal: false,
            hasStartTimeToSave: false,
          ),
          DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
        ];
      },
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockTripStopDone.call(any)).called(1),
    );
  });

  blocTest<DayTripCubit, DayTripState>(
    'On toggleTripStopDelete emit DayTripState with updated tripStops',
    seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
    setUp: () => when(mockDeleteTripStop.call(any)).thenAnswer((_) async => const Right(null)),
    act: (cubit) => cubit.toggleTripStopDelete(0),
    expect: () {
      final updatedTripStops = [tTripStops[1]];
      return [
        DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: updatedTripStops),
      ];
    },
    build: () => getStandardDayTripCubit(),
    verify: (_) => verify(mockDeleteTripStop.call(any)).called(1),
  );

  blocTest<DayTripCubit, DayTripState>(
    'On toggleTripStopDelete emit DayTripStateError and then DayTripStateNormal if deleteTripStop fails',
    seed: () => DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
    setUp: () => when(mockDeleteTripStop.call(any))
        .thenAnswer((_) async => const Left(TripStopsFailure(message: 'error'))),
    act: (cubit) => cubit.toggleTripStopDelete(0),
    expect: () {
      final updatedTripStops = [tTripStops[1]];
      return [
        DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: updatedTripStops),
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          errorMessage: 'error',
          fatal: false,
          hasStartTimeToSave: false,
        ),
        DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      ];
    },
    build: () => getStandardDayTripCubit(),
    verify: (_) => verify(mockDeleteTripStop.call(any)).called(1),
  );

  group('update tripStopPlaceholder', () {
    blocTest<DayTripCubit, DayTripState>(
      'on showEditTripStopPlaceholderDialog emit empty placeholder',
      seed: () => DayTripState.loaded(
          trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, tripStopPlaceholderEditing: null),
      act: (cubit) => cubit.showEditTripStopPlaceholderDialog(tTripStops.first),
      expect: () => [
        DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          tripStopPlaceholderEditing: TripStopPlaceholder.create(),
        ),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'on updateTripStopPlaceholderName emit updated name',
      seed: () => DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          tripStopPlaceholderEditing: tTripStopPlaceHolder),
      act: (cubit) => cubit.updateTripStopPlaceholderName('new name'),
      expect: () => [
        DayTripState.loaded(
            trip: tTrip,
            dayTrip: tDayTrip,
            tripStops: tTripStops,
            tripStopPlaceholderEditing: tTripStopPlaceHolder.copyWith(name: 'new name')),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'on updateTripStopPlaceholderDuration emit updated duration',
      seed: () => DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          tripStopPlaceholderEditing: tTripStopPlaceHolder),
      act: (cubit) => cubit.updateTripStopPlaceholderDuration(10),
      expect: () => [
        DayTripState.loaded(
            trip: tTrip,
            dayTrip: tDayTrip,
            tripStops: tTripStops,
            tripStopPlaceholderEditing: tTripStopPlaceHolder.copyWith(duration: 10)),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'on cancelEditTripStopPlaceholderDialog emit null placeholder',
      seed: () => DayTripState.loaded(
        trip: tTrip,
        dayTrip: tDayTrip,
        tripStops: tTripStops,
        tripStopPlaceholderEditing: TripStopPlaceholder.create(),
      ),
      act: (cubit) => cubit.cancelEditTripStopPlaceholderDialog(),
      expect: () => [
        DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          tripStopPlaceholderEditing: null,
        ),
      ],
      build: () => getStandardDayTripCubit(),
    );

    group('on addPlaceholderToTripStop', () {
      blocTest(
        'on success emit tripStopPlaceholderEditing null',
        build: () => getStandardDayTripCubit(),
        seed: () => DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          tripStopPlaceholderEditing: TripStopPlaceholder.create(),
        ),
        act: (cubit) => cubit.addPlaceholderToTripStop(tTripStops.first.id),
        setUp: () => when(mockUpdateTripStopPlaceholder.call(any))
            .thenAnswer((_) async => const Right(null)),
        expect: () => [
          DayTripState.loaded(
              trip: tTrip,
              dayTrip: tDayTrip,
              tripStops: tTripStops,
              tripStopPlaceholderEditing: null),
        ],
        verify: (_) => verify(mockUpdateTripStopPlaceholder.call(any)).called(1),
      );

      blocTest(
        'on failure emit error state',
        build: () => getStandardDayTripCubit(),
        seed: () => DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          tripStopPlaceholderEditing: TripStopPlaceholder.create(),
        ),
        act: (cubit) => cubit.addPlaceholderToTripStop(tTripStops.first.id),
        setUp: () => when(mockUpdateTripStopPlaceholder.call(any)).thenAnswer(
          (_) async => const Left(TripStopsFailure(message: 'error')),
        ),
        expect: () => [
          DayTripState.error(
            trip: tTrip,
            dayTrip: tDayTrip,
            fatal: false,
            errorMessage: 'error',
            hasStartTimeToSave: false,
          ),
        ],
        verify: (_) => verify(mockUpdateTripStopPlaceholder.call(any)).called(1),
      );
    });

    group('on removePlaceholderFromTripStop', () {
      blocTest(
        'on success emit nothing',
        build: () => getStandardDayTripCubit(),
        seed: () => DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          tripStopPlaceholderEditing: TripStopPlaceholder.create(),
        ),
        act: (cubit) => cubit.removePlaceholderFromTripStop(tTripStops.first.id),
        setUp: () => when(mockUpdateTripStopPlaceholder.call(any))
            .thenAnswer((_) async => const Right(null)),
        expect: () => [],
        verify: (_) => verify(mockUpdateTripStopPlaceholder.call(any)).called(1),
      );

      blocTest(
        'on failure emit error state',
        build: () => getStandardDayTripCubit(),
        seed: () => DayTripState.loaded(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          tripStopPlaceholderEditing: TripStopPlaceholder.create(),
        ),
        act: (cubit) => cubit.removePlaceholderFromTripStop(tTripStops.first.id),
        setUp: () => when(mockUpdateTripStopPlaceholder.call(any)).thenAnswer(
          (_) async => const Left(TripStopsFailure(message: 'error')),
        ),
        expect: () => [
          DayTripState.error(
            trip: tTrip,
            dayTrip: tDayTrip,
            fatal: false,
            errorMessage: 'error',
            hasStartTimeToSave: false,
          ),
        ],
        verify: (_) => verify(mockUpdateTripStopPlaceholder.call(any)).called(1),
      );
    });
  });
}
