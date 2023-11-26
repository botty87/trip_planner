import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart';

import 'trips_cubit_test.mocks.dart';

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

@GenerateNiceMocks([MockSpec<ListenTrips>(), MockSpec<FirebaseCrashlytics>()])
void main() {
  late MockUserCubit mockUserCubit;
  late MockListenTrips mockListenTrips;
  late MockFirebaseCrashlytics mockFirebaseCrashlytics;

  final trips = [
    Trip(
      id: '1',
      name: 'test',
      description: 'test',
      userId: '1',
      createdAt: DateTime.now(),
      startDate: DateTime.now(),
    ),
  ];

  setUp(() {
    mockUserCubit = MockUserCubit();
    mockListenTrips = MockListenTrips();
    mockFirebaseCrashlytics = MockFirebaseCrashlytics();
  });

  blocTest<TripsCubit, TripsState>(
    'On mockListenTrips emit trips these must be emitted by cubit',
    setUp: () {
      when(mockListenTrips.call(any)).thenAnswer((_) => Stream.value(right(trips)));
      whenListen(
        mockUserCubit,
        Stream.fromIterable([UserStateLoggedIn(user: User(id: '1', email: '', name: ''))]),
        initialState: UserStateLoggedIn(user: User(id: '1', email: '', name: '')),
      );
    },
    build: () => TripsCubit(mockListenTrips, mockUserCubit, mockFirebaseCrashlytics),
    act: (cubit) => cubit,
    expect: () => [TripsState(trips: trips, isLoading: false)],
  );
}
