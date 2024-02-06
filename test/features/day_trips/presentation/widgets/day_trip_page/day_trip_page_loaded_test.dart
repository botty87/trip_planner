
import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/day_trip_page_loaded.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import '../../../../../utils.dart';

class MockDayTripCubit extends MockCubit<DayTripState> implements DayTripCubit {}
class MockTripStopsMapCubit extends MockCubit<TripStopsMapState> implements TripStopsMapCubit {}

void main() {
  late DayTripCubit mockDayTripCubit;
  late TripStopsMapCubit mockTripStopsMapCubit;

  const tDayTrip = DayTrip(id: 'id', index: 0);
  final tTrip = Trip(
    id: 'id',
    name: "name",
    startDate: DateTime.now(),
    userId: 'userId',
    createdAt: DateTime.now(),
    description: 'description',
  );

  setUp(() {
    mockDayTripCubit = MockDayTripCubit();
    mockTripStopsMapCubit = MockTripStopsMapCubit();
  });

  setUpAll(() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('On portrait should show AbsorbPointer with Column and TabBarView',
      (WidgetTester tester) async {
    whenListen(
      mockDayTripCubit,
      Stream.value(DayTripState.loaded(
          explictitStartTimeSave: false, trip: tTrip, dayTrip: tDayTrip, tripStops: [])),
      initialState: DayTripState.loaded(
          explictitStartTimeSave: false, trip: tTrip, dayTrip: tDayTrip, tripStops: []),
    );

    await tester.pumpWidget(
      TestUtils.defaultWidgetCubit(
        child: const DefaultTabController(
          length: 2,
          child: DayTripPageLoaded(orientation: Orientation.portrait),
        ),
        cubit: mockDayTripCubit,
      ),
    );

    expect(
        find.byWidgetPredicate((widget) =>
            (widget is AbsorbPointer && widget.key == const Key('dayTripPageLoadedAbsorbPointer'))),
        findsOneWidget);
    expect(
        find.byWidgetPredicate(
            (widget) => widget is Column && widget.key == const Key('dayTripPageLoadedColumn')),
        findsOneWidget);

    expect(find.byType(TabBarView), findsOneWidget);


    expect(
        find.byWidgetPredicate((widget) =>
            widget is Row &&
            widget.children.length == 2 &&
            widget.children[0] is Expanded &&
            widget.children[1] is Expanded),
        findsNothing);
  });


  testWidgets('On landscape should show AbsorbPointer with Column and Row',
      (WidgetTester tester) async {
    whenListen(
      mockDayTripCubit,
      Stream.value(DayTripState.loaded(
          explictitStartTimeSave: false, trip: tTrip, dayTrip: tDayTrip, tripStops: [])),
      initialState: DayTripState.loaded(
          explictitStartTimeSave: false, trip: tTrip, dayTrip: tDayTrip, tripStops: []),
    );

    whenListen(
      mockTripStopsMapCubit,
      Stream.value(const TripStopsMapState.normal(dayTrip: tDayTrip)),
      initialState: const TripStopsMapState.normal(dayTrip: tDayTrip),
    );

    await tester.pumpWidget(
      TestUtils.defaultWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => mockDayTripCubit,
            ),
            BlocProvider(
              create: (context) => mockTripStopsMapCubit,
            ),
          ],
          child: const DayTripPageLoaded(orientation: Orientation.landscape),
        ),
      ),
    );

    expect(
        find.byWidgetPredicate((widget) =>
            (widget is AbsorbPointer && widget.key == const Key('dayTripPageLoadedAbsorbPointer'))),
        findsOneWidget);
    expect(
        find.byWidgetPredicate(
            (widget) => widget is Column && widget.key == const Key('dayTripPageLoadedColumn')),
        findsOneWidget);

    expect(find.byWidgetPredicate((widget) => widget is Row && widget.children.length == 2 &&
          widget.children[0] is Expanded &&
          widget.children[1] is Expanded), findsOneWidget);

          expect(find.byType(TabBarView), findsNothing);
  });
}
