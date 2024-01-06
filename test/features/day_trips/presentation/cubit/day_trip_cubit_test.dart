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
import 'package:trip_planner/features/trip_stops/domain/usecases/listen_trip_stops.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/trip_stop_done.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_travel_time.dart';
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
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, hasStartTimeToSave: true),
      setUp: () =>
          when(mockUpdateDayTripStartTime.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) async => expect(await cubit.saveDayTripStopStartTime(forced: true), true),
      expect: () => [
        DayTripState.normal(
            trip: tTrip, dayTrip: tDayTrip, explictitStartTimeSave: true, hasStartTimeToSave: true),
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, explictitStartTimeSave: false),
      ],
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On save DayTripStartTime emit DayTripStateError and then DayTripStateNormal if updateDayTrip fails, and return false',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, hasStartTimeToSave: true),
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

  group('update travel time', () {
    blocTest<DayTripCubit, DayTripState>(
      'On updateTravelTimeToNextStop emit DayTripState with updated tripStops',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockUpdateTravelTime.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.updateTravelTimeToNextStop(tTripStops.first.id, 0),
      expect: () => [],
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockUpdateTravelTime.call(any)).called(1),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On updateTravelTimeToNextStop simulate a wait of 600 milliseconds emit DayTripState isSaving true and then isSaving false',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockUpdateTravelTime.call(any)).thenAnswer((_) async {
        await Future.delayed(const Duration(milliseconds: 600));
        return const Right(null);
      }),
      act: (cubit) => cubit.updateTravelTimeToNextStop(tTripStops.first.id, 0),
      expect: () => [
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, isSaving: true),
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops, isSaving: false),
      ],
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockUpdateTravelTime.call(any)).called(1),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On updateTravelTimeToNextStop emit DayTripStateError and then DayTripStateNormal if updateTravelTime fails',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockUpdateTravelTime.call(any))
          .thenAnswer((_) async => const Left(TripStopsFailure(message: 'error'))),
      act: (cubit) => cubit.updateTravelTimeToNextStop(tTripStops.first.id, 0),
      expect: () => [
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          errorMessage: 'error',
        ),
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      ],
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockUpdateTravelTime.call(any)).called(1),
    );
  });

  group('reorderTripStops', () {
    blocTest<DayTripCubit, DayTripState>(
      'On reorderTripStops call updateTripStopsIndexes with new tripStops order',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () {
        when(mockUpdateTripStopsIndexes.call(any)).thenAnswer((_) async => const Right(null));
        when(mockUpdateTripStopsDirectionsUpToDate.call(any))
            .thenAnswer((_) async => const Right(null));
      },
      act: (cubit) => cubit.reorderTripStops(0, 1),
      expect: () => [],
      verify: (_) {
        verify(mockUpdateTripStopsIndexes.call(any)).called(1);
        verify(mockUpdateTripStopsDirectionsUpToDate.call(any)).called(1);
      },
      build: () => getStandardDayTripCubit(),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On reorderTripStops emit DayTripStateError and then DayTripStateNormal if updateTripStopsIndexes fails',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () {
        when(mockUpdateTripStopsIndexes.call(any))
            .thenAnswer((_) async => const Left(TripStopsFailure(message: 'error')));
        when(mockUpdateTripStopsDirectionsUpToDate.call(any))
            .thenAnswer((_) async => const Right(null));
      },
      act: (cubit) => cubit.reorderTripStops(0, 1),
      expect: () => [
        DayTripState.error(
          trip: tTrip,
          dayTrip: tDayTrip,
          tripStops: tTripStops,
          errorMessage: 'error',
        ),
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
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
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      ],
      build: () => getStandardDayTripCubit(),
    );
  });

  group('update trip stop done', () {
    blocTest<DayTripCubit, DayTripState>(
      'On tripStopDone call tripStopDone usecase',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockTripStopDone.call(any)).thenAnswer((_) async => const Right(null)),
      act: (cubit) => cubit.toggleTripStopDone(true, 0),
      expect: () {
        final updatedTripStop = tTripStops.first.copyWith(isDone: true);
        final updatedTripStops = [updatedTripStop, tTripStops[1]];
        return [
          DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: updatedTripStops),
        ];
      },
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockTripStopDone.call(any)).called(1),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On tripStopDone emit DayTripStateError and then DayTripStateNormal if tripStopDone fails',
      seed: () => DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
      setUp: () => when(mockTripStopDone.call(any))
          .thenAnswer((_) async => const Left(TripStopsFailure(message: 'error'))),
      act: (cubit) => cubit.toggleTripStopDone(true, 0),
      expect: () {
        final updatedTripStop = tTripStops.first.copyWith(isDone: true);
        final updatedTripStops = [updatedTripStop, tTripStops[1]];
        return [
          DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: updatedTripStops),
          DayTripState.error(
            trip: tTrip,
            dayTrip: tDayTrip,
            tripStops: tTripStops,
            errorMessage: 'error',
          ),
          DayTripState.normal(trip: tTrip, dayTrip: tDayTrip, tripStops: tTripStops),
        ];
      },
      build: () => getStandardDayTripCubit(),
      verify: (_) => verify(mockTripStopDone.call(any)).called(1),
    );
  });
}
