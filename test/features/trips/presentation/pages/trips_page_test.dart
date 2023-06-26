import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart';
import 'package:trip_planner/features/trips/presentation/widgets/no_trips_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_list_widget.dart';

class MockTripsCubit extends MockCubit<TripsState> implements TripsCubit {}

void main() {
  late MockTripsCubit mockTripsCubit;

  final trips = [
    Trip(
      id: '1',
      name: 'test',
      description: 'test',
      userId: '1',
      createdAt: DateTime.now(),
    ),
  ];

  setUp(() async {
    mockTripsCubit = MockTripsCubit();
    await GetIt.I.reset();
    GetIt.I.registerSingleton<TripsCubit>(mockTripsCubit);
  });

  testWidgets('On no trips show no trips widget', (widgetTester) async {
    // arrange
    whenListen(
      mockTripsCubit,
      Stream.fromIterable([const TripsState()]),
      initialState: const TripsState(),
    );
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TripsPage(),
        ),
      ),
    );
    // act
    final noTripsWidget = find.byType(NoTripsWidget);
    // assert
    expect(noTripsWidget, findsOneWidget);
  });

  testWidgets('On trips show trips list', (widgetTester) async {
    // arrange
    whenListen(
      mockTripsCubit,
      Stream.fromIterable([
        TripsState(trips: trips),
      ]),
      initialState: TripsState(trips: trips),
    );
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TripsPage(),
        ),
      ),
    );
    // act
    final tripsList = find.byType(TripsListWidget);
    // assert
    expect(tripsList, findsOneWidget);
  });
}
