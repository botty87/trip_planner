import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/loaded_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/no_trips_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trips_list_widget.dart';

import '../../../../../utils.dart';

class MockTripsCubit extends MockCubit<TripsState> implements TripsCubit {}

void main() {
  late TripsCubit mockTripsCubit;

  final tTrips = [
    Trip(
      id: 'id',
      name: 'name',
      description: 'description',
      startDate: DateTime.now(),
      userId: 'userId',
      createdAt: DateTime.now(),
    ),
  ];

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    mockTripsCubit = MockTripsCubit();
  });

  testWidgets('when trips is empty, renders NoTripsWidget', (WidgetTester tester) async {
    whenListen(
      mockTripsCubit,
      Stream.value(const TripsState.loaded(trips: [])),
      initialState: const TripsState.loaded(trips: []),
    );

    await tester.runAsync(() async {
      await tester.pumpWidget(
          TestUtils.defaultWidgetCubits(child: const LoadedWidget(), cubits: [mockTripsCubit]));

      expect(find.byType(NoTripsWidget), findsOneWidget);
    });
  });

  testWidgets('when trips is not empty, renders TripsListWidget', (WidgetTester tester) async {
    whenListen(
      mockTripsCubit,
      Stream.value(TripsState.loaded(trips: tTrips)),
      initialState: TripsState.loaded(trips: tTrips),
    );

    await tester.runAsync(() async {
      await tester.pumpWidget(
          TestUtils.defaultWidgetCubits(child: const LoadedWidget(), cubits: [mockTripsCubit]));

      expect(find.byType(TripsListWidget), findsOneWidget);
    });
  });
}
