import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trip_card.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trips_list_widget.dart';

import '../../../../../utils.dart';

class MockTripsCubit extends MockCubit<TripsState> implements TripsCubit {}

void main() {
  late TripsCubit mockTripsCubit;

  final tTrips = [
    Trip(
      id: 'id1',
      name: 'name1',
      description: 'description1',
      startDate: DateTime.now(),
      userId: 'userId',
      createdAt: DateTime.now(),
    ),
    Trip(
      id: 'id2',
      name: 'name2',
      description: 'description2',
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

  testWidgets('render listview with TripCard', (WidgetTester tester) async {
    whenListen(
      mockTripsCubit,
      Stream.value(TripsState.loaded(trips: tTrips)),
      initialState: TripsState.loaded(trips: tTrips),
    );

    await tester.runAsync(() async {
      await tester.pumpWidget(TestUtils.defaultWidgetCubit(const TripsListWidget(), mockTripsCubit));

      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(TripCard), findsNWidgets(2));
    });
  });
}
