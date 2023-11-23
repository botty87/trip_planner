import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trip_card.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trips_list_widget.dart';

class MockTripsCubit extends MockCubit<TripsState> implements TripsCubit {}

void main() {
  late MockTripsCubit mockTripsCubit;

  setUp(() {
    mockTripsCubit = MockTripsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: BlocProvider<TripsCubit>.value(
        value: mockTripsCubit,
        child: Material(
          child: child,
        ),
      ),
    );
  }

  group('TripsListWidget', () {
    testWidgets('renders ListView.separated with correct number of items', (tester) async {
      final initialState = TripsState(trips: [
        Trip(
          id: '1',
          name: 'Trip 1',
          description: 'Trip 1 description',
          startDate: DateTime.now(),
          userId: '1',
          createdAt: DateTime.now(),
        ),
        Trip(
          id: '2',
          name: 'Trip 2',
          description: 'Trip 2 description',
          startDate: DateTime.now(),
          userId: '1',
          createdAt: DateTime.now(),
        ),
        Trip(
          id: '3',
          name: 'Trip 3',
          description: 'Trip 3 description',
          startDate: DateTime.now(),
          userId: '1',
          createdAt: DateTime.now(),
        ),
      ]);

      whenListen(
        mockTripsCubit,
        Stream.fromIterable([
          initialState,
        ]),
        initialState: initialState,
      );

      await tester.pumpWidget(
        makeTestableWidget(child: const TripsListWidget()),
      );

      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(TripCard), findsNWidgets(3));
    });

    testWidgets('renders SafeArea', (tester) async {
      whenListen(
        mockTripsCubit,
        Stream.fromIterable([
          const TripsState(trips: []),
        ]),
        initialState: const TripsState(trips: []),
      );

      await tester.pumpWidget(
        makeTestableWidget(child: const TripsListWidget()),
      );

      expect(find.byType(SafeArea), findsOneWidget);
    });
  });
}
