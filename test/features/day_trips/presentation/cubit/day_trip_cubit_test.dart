import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';

import 'day_trip_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UpdateDayTrip>(),
])
void main() {
  late MockUpdateDayTrip mockUpdateDayTrip;

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
  });

  blocTest<DayTripCubit, DayTripState>(
    'On editCancel emit DayTripState with original Daytrip',
    seed: () =>
        DayTripState.editing(trip: tTrip, dayTrip: tDayTrip, description: tDayTrip.description),
    act: (cubit) => cubit.cancelEditing(),
    expect: () => [DayTripState(trip: tTrip, dayTrip: tDayTrip)],
    build: () => DayTripCubit(trip: tTrip, dayTrip: tDayTrip, updateDayTrip: mockUpdateDayTrip),
  );

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
      DayTripState(trip: tTrip, dayTrip: tDayTrip.copyWith(description: 'new description')),
    ],
    build: () => DayTripCubit(
      trip: tTrip,
      dayTrip: tDayTrip,
      updateDayTrip: mockUpdateDayTrip,
    ),
  );
}
