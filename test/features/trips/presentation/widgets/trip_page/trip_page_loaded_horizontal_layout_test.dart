import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/add_day_trip_card.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/day_trips_list_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/delete_trip_button.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/loaded_widget/trip_page_loaded_horizontal_layout.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/trip_header.dart';

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
    description: 'description',
  );

  const tDayTrips = [DayTrip(id: 'id', index: 0)];

  setUp(() {
    mockTripCubit = MockTripCubit();
  });

  setUpAll(() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets(
      'should show Row with DayTripsListWidget, SizedBox, and ListView with TripHeader, AddDayTripCard, SizedBox, and DeleteTripButton',
      (WidgetTester tester) async {
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: tDayTrips)),
      initialState: TripState.loaded(trip: tTrip, dayTrips: tDayTrips),
    );

    // Set screen size to landscape
    tester.view.physicalSize = const Size(1500, 1200);

    await tester.pumpWidget(
      TestUtils.defaultWidget(
        BlocProvider(
          create: (context) => mockTripCubit,
          child: const TripPageLoadedHorizontalLayout(),
        ),
      ),
    );

    expect(find.byType(Row), findsOneWidget);
    expect(find.byType(DayTripsListWidget), findsOneWidget);

    expect(find.byType(TripHeader), findsOneWidget);
    expect(find.byType(AddDayTripCard), findsOneWidget);
    expect(find.byType(DeleteTripButton), findsOneWidget);
  });
}
