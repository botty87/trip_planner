import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trips.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/update_trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';

import 'trip_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UpdateTrip>(), MockSpec<DeleteTrip>(), MockSpec<ListenDayTrips>()])
void main() {
  late MockUpdateTrip mockUpdateTrip;
  late MockDeleteTrip mockDeleteTrip;
  late MockListenDayTrips mockListenDayTrips;

  final tStartDate = DateTime.now();

  final tTrip = Trip(
    id: '1',
    name: 'name',
    description: 'description',
    createdAt: DateTime.now(),
    userId: '1',
    startDate: tStartDate,
  );

  setUp(() {
    mockUpdateTrip = MockUpdateTrip();
    mockDeleteTrip = MockDeleteTrip();
    mockListenDayTrips = MockListenDayTrips();
  });

  blocTest<TripCubit, TripState>(
    'On edit emit TripStateEditing',
    act: (cubit) => cubit.edit(),
    expect: () => [
      TripState.editing(
          trip: tTrip, name: tTrip.name, description: tTrip.description, startDate: tTrip.startDate)
    ],
    build: () => TripCubit(
        trip: tTrip,
        saveTrip: mockUpdateTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On nameChanged emit TripStateEditing with name changed',
    seed: () => TripState.editing(
        trip: tTrip, name: tTrip.name, description: tTrip.description, startDate: tTrip.startDate),
    act: (cubit) => cubit.nameChanged('new name'),
    expect: () => [
      TripState.editing(
          trip: tTrip, name: 'new name', description: tTrip.description, startDate: tTrip.startDate)
    ],
    build: () => TripCubit(
        trip: tTrip,
        saveTrip: mockUpdateTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On descriptionChanged emit TripStateEditing with description changed',
    seed: () => TripState.editing(
        trip: tTrip, name: tTrip.name, description: tTrip.description, startDate: tTrip.startDate),
    act: (cubit) => cubit.descriptionChanged('new description'),
    expect: () => [
      TripState.editing(
          trip: tTrip, name: tTrip.name, description: 'new description', startDate: tTrip.startDate),
    ],
    build: () => TripCubit(
        trip: tTrip,
        saveTrip: mockUpdateTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On startDateChanged emit TripStateEditing with startDate changed',
    seed: () => TripState.editing(
        trip: tTrip, name: tTrip.name, description: tTrip.description, startDate: DateTime.now()),
    act: (cubit) => cubit.startDateChanged(tStartDate),
    expect: () => [
      TripState.editing(
          trip: tTrip,
          name: tTrip.name,
          description: tTrip.description,
          startDate: tStartDate),
    ],
    build: () => TripCubit(
        trip: tTrip,
        saveTrip: mockUpdateTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On editCancel emit TripState with original trip',
    seed: () => TripState.editing(
        trip: tTrip, name: tTrip.name, description: tTrip.description, startDate: tTrip.startDate),
    act: (cubit) => cubit.cancelEditing(),
    expect: () => [TripState(trip: tTrip)],
    build: () => TripCubit(
        trip: tTrip,
        saveTrip: mockUpdateTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On save emit TripState with updated trip',
    seed: () => TripState.editing(
        trip: tTrip, name: 'new name', description: tTrip.description, startDate: tTrip.startDate),
    setUp: () => when(mockUpdateTrip.call(any))
        .thenAnswer((_) async => Right(tTrip.copyWith(name: 'new name'))),
    act: (cubit) => cubit.saveChanges(),
    expect: () => [
      TripState.editing(
          trip: tTrip,
          name: 'new name',
          description: tTrip.description,
          isSaving: true,
          startDate: tTrip.startDate),
      TripState(trip: tTrip.copyWith(name: 'new name'))
    ],
    build: () => TripCubit(
        trip: tTrip,
        saveTrip: mockUpdateTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );
}
