import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/delete_day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import 'day_trip_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UpdateDayTrip>(),
  MockSpec<DeleteDayTrip>(),
])
void main() {
  late MockUpdateDayTrip mockUpdateDayTrip;
  late MockDeleteDayTrip mockDeleteDayTrip;

  final tTrip = Trip(
    id: '1',
    name: 'name',
    description: 'description',
    createdAt: DateTime.now(),
    userId: '1',
    startDate: DateTime.now(),
  );

  final tDayTrip = DayTrip(
    id: '1',
    description: 'description',
    index: 0,
  );

  setUp(() {
    mockUpdateDayTrip = MockUpdateDayTrip();
    mockDeleteDayTrip = MockDeleteDayTrip();
  });

  blocTest<DayTripCubit, DayTripState>(
    'On edit emit DayTripStateEditing',
    seed: () =>
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
    act: (cubit) => cubit.edit(),
    expect: () => [DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description)],
    build: () => DayTripCubit(
        trip: tTrip,
        dayTrip: tDayTrip,
        updateDayTrip: mockUpdateDayTrip,
        deleteDayTrip: mockDeleteDayTrip),
  );

  blocTest<DayTripCubit, DayTripState>(
    'On descriptionChanged emit DayTripStateEditing with new description',
    seed: () =>
        DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
    act: (cubit) => cubit.descriptionChanged('new description'),
    expect: () => [DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: 'new description')],
    build: () => DayTripCubit(
        trip: tTrip,
        dayTrip: tDayTrip,
        updateDayTrip: mockUpdateDayTrip,
        deleteDayTrip: mockDeleteDayTrip),
  );
  blocTest<DayTripCubit, DayTripState>(
    'On cancelEditing emit DayTripState with original Daytrip',
    seed: () =>
        DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
    act: (cubit) => cubit.cancelEditing(),
    expect: () => [DayTripState.normal(trip: tTrip, dayTrip: tDayTrip)],
    build: () => DayTripCubit(
        trip: tTrip,
        dayTrip: tDayTrip,
        updateDayTrip: mockUpdateDayTrip,
        deleteDayTrip: mockDeleteDayTrip),
  );

  group('saveChanges', () { 
    blocTest<DayTripCubit, DayTripState>(
      'On save emit DayTripState with updated DayTrip',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: 'new description'),
      setUp: () => when(mockUpdateDayTrip.call(any))
          .thenAnswer((_) async => Right(tDayTrip.copyWith(description: 'new description'))),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        DayTripState.editing(
            trip: tTrip, dayTrip: tDayTrip, isSaving: true, description: 'new description'),
        DayTripState.normal(trip: tTrip, dayTrip: tDayTrip.copyWith(description: 'new description')),
      ],
      build: () => DayTripCubit(
          trip: tTrip,
          dayTrip: tDayTrip,
          updateDayTrip: mockUpdateDayTrip,
          deleteDayTrip: mockDeleteDayTrip),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On save emit DayTripStateError and then DayTripStateEditing if updateDayTrip fails',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      setUp: () => when(mockUpdateDayTrip.call(any))
          .thenAnswer((_) async => Left(DayTripsFailure(message: 'error'))),
      act: (cubit) => cubit.saveChanges(),
      expect: () => [
        DayTripState.editing(
            trip: tTrip, dayTrip: tDayTrip, isSaving: true, description: tDayTrip.description),
        DayTripState.error(
            trip: tTrip,
            dayTrip: tDayTrip,
            errorMessage: 'error',
        ),
        DayTripState.editing(
            trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      ],
      build: () => DayTripCubit(
          trip: tTrip,
          dayTrip: tDayTrip,
          updateDayTrip: mockUpdateDayTrip,
          deleteDayTrip: mockDeleteDayTrip),
    );
  });

  group('modalBottomEditingDismissed', () { 
    blocTest<DayTripCubit, DayTripState>(
      'On modalBottomEditingDismissed emit DayTripState if previous state is DayTripStateEditing',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [DayTripState.normal(trip: tTrip, dayTrip: tDayTrip)],
      build: () => DayTripCubit(
          trip: tTrip,
          dayTrip: tDayTrip,
          updateDayTrip: mockUpdateDayTrip,
          deleteDayTrip: mockDeleteDayTrip),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On modalBottomEditingDismissed emit nothing if previous state is not DayTripStateEditing',
      seed: () =>
          DayTripState.normal(trip: tTrip, dayTrip: tDayTrip),
      act: (cubit) => cubit.modalBottomEditingDismissed(),
      expect: () => [],
      build: () => DayTripCubit(
          trip: tTrip,
          dayTrip: tDayTrip,
          updateDayTrip: mockUpdateDayTrip,
          deleteDayTrip: mockDeleteDayTrip),
    );
  });

  group('delete day trip', () {
    blocTest<DayTripCubit, DayTripState>(
      'On delete emit DayTripStateDeleting and then DayTripStateDeleted if deleteDayTrip succeeds',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      setUp: () => when(mockDeleteDayTrip.call(any))
          .thenAnswer((_) async => Right(null)),
      act: (cubit) => cubit.deleteDayTrip(),
      expect: () => [
        DayTripState.deleting(trip: tTrip, dayTrip: tDayTrip),
        DayTripState.deleted(trip: tTrip, dayTrip: tDayTrip),
      ],
      build: () => DayTripCubit(
          trip: tTrip,
          dayTrip: tDayTrip,
          updateDayTrip: mockUpdateDayTrip,
          deleteDayTrip: mockDeleteDayTrip),
    );

    blocTest<DayTripCubit, DayTripState>(
      'On delete emit DayTripStateDeleting and then DayTripStateError and DayTripStateNormal if deleteDayTrip fails',
      seed: () =>
          DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
      setUp: () => when(mockDeleteDayTrip.call(any))
          .thenAnswer((_) async => Left(DayTripsFailure(message: 'error'))),
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
      build: () => DayTripCubit(
          trip: tTrip,
          dayTrip: tDayTrip,
          updateDayTrip: mockUpdateDayTrip,
          deleteDayTrip: mockDeleteDayTrip),
    );
  });
}
