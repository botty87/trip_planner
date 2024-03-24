import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/list_tab/trip_stop_card.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';

import '../../../../../../utils.dart';

void main() {
  late MockDayTripCubit mockDayTripCubit;
  late MockBackgroundsCubit backgroundsCubit;

  final tStartEndTime = StartEndTime(startTime: DateTime.now(), endTime: DateTime.now());

  setUp(() {
    mockDayTripCubit = MockDayTripCubit();
    backgroundsCubit = MockBackgroundsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show TripStopCard', ($) async {
    whenListen(
      mockDayTripCubit,
      Stream.fromIterable([tDayTripStateLoaded]),
      initialState: tDayTripStateLoaded,
    );

    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState]),
      initialState: tBackgroundsState,
    );

    await $.pumpWidget(BlocProvider<DayTripCubit>(
      create: (context) => mockDayTripCubit,
      child: TestUtils.defaultWidget(
        child: ImplicitlyAnimatedReorderableList<TripStop>(
          shrinkWrap: true,
          items: const [tTripStop],
          itemBuilder: (context, itemAnimation, tripStopItem, index) {
            return Reorderable(
              key: const ValueKey(tTripStop),
              child: TripStopCard(
                tripStop: tTripStop,
                tripStartEndTimes: tStartEndTime,
                slidableController: null,
              ),
            );
          },
          areItemsTheSame: (a, b) => a == b,
          onReorderFinished: (TripStop item, int from, int to, List<TripStop> newItems) {},
        ),
        backgroundsCubit: backgroundsCubit,
      ),
    ));

    expect($(tTripStop.name), findsOneWidget);
  });

  //Golden test
  testGoldens('Should render TripStopCard', (tester) async {
    whenListen(
      mockDayTripCubit,
      Stream.fromIterable([tDayTripStateLoaded]),
      initialState: tDayTripStateLoaded,
    );

    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState]),
      initialState: tBackgroundsState,
    );

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'TripStopCard',
        widget: BlocProvider<DayTripCubit>(
          create: (context) => mockDayTripCubit,
          child: TestUtils.defaultWidget(
            child: ImplicitlyAnimatedReorderableList<TripStop>(
              shrinkWrap: true,
              items: const [tTripStop],
              itemBuilder: (context, itemAnimation, tripStopItem, index) {
                return Reorderable(
                  key: const ValueKey(tTripStop),
                  child: TripStopCard(
                    tripStop: tTripStop,
                    tripStartEndTimes: tStartEndTime,
                    slidableController: null,
                  ),
                );
              },
              areItemsTheSame: (a, b) => a == b,
              onReorderFinished: (TripStop item, int from, int to, List<TripStop> newItems) {},
            ),
            backgroundsCubit: backgroundsCubit,
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_card');
  });
}
