import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trips.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/save_trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';

import 'trip_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SaveTrip>(), MockSpec<DeleteTrip>(), MockSpec<ListenDayTrips>()])
void main() {
  late MockSaveTrip mockSaveTrip;
  late MockDeleteTrip mockDeleteTrip;
  late MockListenDayTrips mockListenDayTrips;

  final trip = Trip(
    id: '1',
    name: 'name',
    description: 'description',
    createdAt: DateTime.now(),
    userId: '1',
    startDate: DateTime.now(),
  );

  setUp(() {
    mockSaveTrip = MockSaveTrip();
    mockDeleteTrip = MockDeleteTrip();
    mockListenDayTrips = MockListenDayTrips();
  });

  blocTest<TripCubit, TripState>(
    'On edit emit TripStateEditing',
    act: (cubit) => cubit.edit(),
    expect: () => [TripState.editing(trip: trip, name: trip.name, description: trip.description)],
    build: () => TripCubit(
        trip: trip,
        saveTrip: mockSaveTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On nameChanged emit TripStateEditing with name changed',
    seed: () => TripState.editing(trip: trip, name: trip.name, description: trip.description),
    act: (cubit) => cubit.nameChanged('new name'),
    expect: () => [TripState.editing(trip: trip, name: 'new name', description: trip.description)],
    build: () => TripCubit(
        trip: trip,
        saveTrip: mockSaveTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On descriptionChanged emit TripStateEditing with description changed',
    seed: () => TripState.editing(trip: trip, name: trip.name, description: trip.description),
    act: (cubit) => cubit.descriptionChanged('new description'),
    expect: () => [
      TripState.editing(trip: trip, name: trip.name, description: 'new description'),
    ],
    build: () => TripCubit(
        trip: trip,
        saveTrip: mockSaveTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On editCancel emit TripState with original trip',
    seed: () => TripState.editing(trip: trip, name: trip.name, description: trip.description),
    act: (cubit) => cubit.editCancel(),
    expect: () => [TripState(trip: trip)],
    build: () => TripCubit(
        trip: trip,
        saveTrip: mockSaveTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );

  blocTest<TripCubit, TripState>(
    'On save emit TripState with updated trip',
    seed: () => TripState.editing(trip: trip, name: 'new name', description: trip.description),
    setUp: () => when(mockSaveTrip.call(any))
        .thenAnswer((_) async => Right(trip.copyWith(name: 'new name'))),
    act: (cubit) => cubit.save(),
    expect: () => [
      TripState.editing(
          trip: trip, name: 'new name', description: trip.description, isSaving: true),
      TripState(trip: trip.copyWith(name: 'new name'))
    ],
    build: () => TripCubit(
        trip: trip,
        saveTrip: mockSaveTrip,
        deleteTrip: mockDeleteTrip,
        listenDayTrips: mockListenDayTrips),
  );
}
