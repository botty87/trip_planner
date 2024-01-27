import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/loaded_widget/trip_page_loaded_horizontal_layout.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/loaded_widget/trip_page_loaded_vertical_layout.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/loaded_widget/trip_page_loaded_widget.dart';

import '../../../../../utils.dart';

class MockTripCubit extends MockCubit<TripState> implements TripCubit {}

void main() {
  late TripCubit mockTripCubit;

  final tTrip = Trip(
    id: 'id',
    name: "name",
    startDate: DateTime.now(),
    userId: 'userId',
    createdAt: DateTime.now(),
  );

  final tDayTrips = [const DayTrip(id: 'id', index: 0)];

  setUp(() {
    mockTripCubit = MockTripCubit();
  });

  setUpAll(() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('should display TripPageLoadedVerticalLayout when orientation is portrait',
      (WidgetTester tester) async {
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: tDayTrips)),
      initialState: TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
    );

    await tester.pumpWidget(
      TestUtils.defaultWidget(
        BlocProvider(
          create: (context) => mockTripCubit,
          child: const TripPageLoadedWidget(),
        ),
      ),
    );

    expect(find.byType(TripPageLoadedVerticalLayout), findsOneWidget);
    expect(find.byType(TripPageLoadedHorizontalLayout), findsNothing);
  });

  testWidgets('should display TripPageLoadedHorizontalLayout when orientation is landscape',
      (WidgetTester tester) async {
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: tDayTrips)),
      initialState: TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
    );

    // Set screen size to landscape
    tester.view.physicalSize = const Size(1500, 800);


    await tester.pumpWidget(
      TestUtils.defaultWidget(
        BlocProvider(
          create: (context) => mockTripCubit,
          child: const TripPageLoadedWidget(isTest: true),
        ),
      ),
    );

    expect(find.byType(TripPageLoadedVerticalLayout), findsNothing);
    expect(find.byType(TripPageLoadedHorizontalLayout), findsOneWidget);
  });
}
