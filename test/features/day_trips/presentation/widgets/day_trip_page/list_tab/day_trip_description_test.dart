import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/list_tab/day_trip_description.dart';
import 'package:trip_planner/features/ui/presentation/widgets/trip/generic_trip_description.dart';

import '../../../../../../utils.dart';

void main() {
  late MockDayTripCubit mockDayTripCubit;
  late MockBackgroundsCubit backgroundsCubit;

  setUp(() {
    mockDayTripCubit = MockDayTripCubit();
    backgroundsCubit = MockBackgroundsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show DayTripDescription', ($) async {
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
        child: const SingleChildScrollView(child: DayTripDescription()),
        backgroundsCubit: backgroundsCubit,
      ),
    ));

    expect($(GenericTripDescription), findsOneWidget);
    expect($(tDayTrip.description), findsOneWidget);
  });

  //Golden test
  testGoldens('DayTripDescription with no background', (tester) async {
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
        name: 'DayTripDescriptionNoBackgrounds',
        widget: BlocProvider<DayTripCubit>(
          create: (context) => mockDayTripCubit,
          child: TestUtils.defaultWidget(
            child: const DayTripDescription(),
            backgroundsCubit: backgroundsCubit,
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'day_trip_description_no_background');
  });

  testGoldens('DayTripDescription with background', (tester) async {
    whenListen(
      mockDayTripCubit,
      Stream.fromIterable([tDayTripStateLoaded]),
      initialState: tDayTripStateLoaded,
    );

    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState.copyWith(currentBackgroundImage: File(''))]),
      initialState: tBackgroundsState.copyWith(currentBackgroundImage: File('')),
    );

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'DayTripDescriptionBackgrounds',
        widget: BlocProvider<DayTripCubit>(
          create: (context) => mockDayTripCubit,
          child: TestUtils.defaultWidget(
            child: const DayTripDescription(),
            backgroundsCubit: backgroundsCubit,
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'day_trip_description_background');
  });
}
