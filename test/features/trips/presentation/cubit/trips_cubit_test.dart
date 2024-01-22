import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';

import 'trips_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ListenTrips>(), MockSpec<FirebaseCrashlytics>()])
void main() {
  late MockListenTrips mockListenTrips;
  late MockFirebaseCrashlytics mockFirebaseCrashlytics;

  final tTrips = [
    Trip(
      id: '1',
      name: 'test',
      description: 'test',
      userId: '1',
      createdAt: DateTime.now(),
      startDate: DateTime.now(),
    ),
  ];

  const tUser = User(
    id: '1',
    name: 'test',
    email: 'test',
  );

  TripsCubit getTestCubit() {
    return TripsCubit(
      listenTrips: mockListenTrips,
      crashlytics: mockFirebaseCrashlytics,
      user: tUser,
    );
  }

  setUp(() {
    mockListenTrips = MockListenTrips();
    mockFirebaseCrashlytics = MockFirebaseCrashlytics();
  });

  blocTest<TripsCubit, TripsState>(
    'On startListenTrip emits [TripsState.loaded(trips: trips)] when ListenTrips returns Right(trips)',
    setUp: () {
      when(mockListenTrips(any)).thenAnswer((_) => Stream.value(right(tTrips)));
    },
    build: () => getTestCubit(),
    act: (cubit) => cubit.startListenTrip(),
    expect: () => [TripsState.loaded(trips: tTrips)],
    verify: (_) {
      verify(mockListenTrips(ListenTripsParams(userId: tUser.id))).called(1);
      verifyNoMoreInteractions(mockListenTrips);
    },
  );

  blocTest<TripsCubit, TripsState>(
    'On startListenTrip emits [TripsState.error(message: message)] when ListenTrips returns Left(failure)',
    setUp: () {
      when(mockListenTrips(any))
          .thenAnswer((_) => Stream.value(left(const TripsFailure())));
    },
    build: () => getTestCubit(),
    act: (cubit) => cubit.startListenTrip(),
    expect: () => [const TripsState.error(message: LocaleKeys.dataLoadError)],
    verify: (_) {
      verify(mockListenTrips(ListenTripsParams(userId: tUser.id))).called(1);
      verifyNoMoreInteractions(mockListenTrips);
    },
  );
}
