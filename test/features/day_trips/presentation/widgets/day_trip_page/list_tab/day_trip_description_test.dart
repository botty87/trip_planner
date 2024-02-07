import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/widgets/trip/generic_trip_header.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/list_tab/day_trip_description.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import '../../../../../../utils.dart';

class MockDayTripCubit extends MockCubit<DayTripState> implements DayTripCubit {}

void main() {
  late DayTripCubit mockDayTripCubit;

  final tTrip = Trip(
    id: '1',
    name: 'Trip 1',
    description: 'Trip 1 description',
    userId: '1',
    startDate: DateTime.now(),
    createdAt: DateTime.now(),
  );

  const tDayTripEmptyDescription = DayTrip(
    id: '1',
    description: '',
    index: 0,
  );

  const tDayTrip = DayTrip(
    id: '1',
    description: 'Day trip 1 description',
    index: 0,
  );

  setUp(() {
    mockDayTripCubit = MockDayTripCubit();
  });

  setUpAll(() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets(
    'Should show DayTripDescription with sizedbox shrink when description is empty',
    (WidgetTester tester) async {
      whenListen(
        mockDayTripCubit,
        Stream.value(DayTripState.loaded(trip: tTrip, dayTrip: tDayTripEmptyDescription, tripStops: [])),
        initialState: DayTripState.loaded(trip: tTrip, dayTrip: tDayTripEmptyDescription, tripStops: [])
      );

      await tester.pumpWidget(TestUtils.defaultWidgetCubit(
        child: const DayTripDescription(),
        cubit: mockDayTripCubit,
      ));

      expect(find.byType(SizedBox), findsOneWidget);
    },
  );

  testWidgets(
    'Should show DayTripDescription with description when description is not empty',
    (WidgetTester tester) async {
      whenListen(
        mockDayTripCubit,
        Stream.value(DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: [])),
        initialState: DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: [])
      );

      await tester.pumpWidget(TestUtils.defaultWidgetCubit(
        child: const DayTripDescription(),
        cubit: mockDayTripCubit,
      ));

      expect(find.text(tDayTrip.description!), findsOneWidget);
      expect(find.byType(GenericTripDescription), findsOneWidget);
    },
  );
}
