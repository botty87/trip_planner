import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/list_tab/start_time_widget.dart';
import 'package:trip_planner/features/time_picker/widgets/timepicker.dart';

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

  patrolWidgetTest('Should show StartTimeWidget', ($) async {
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
        child: const SingleChildScrollView(child: StartTimeWidget()),
        backgroundsCubit: backgroundsCubit,
      ),
    ));

    expect($(LocaleKeys.startTime), findsOneWidget);
    expect($(TimePicker), findsOneWidget);
  });

  //Golden test
  testGoldens('Should render StartTimeWidget without background', (tester) async {
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
            child: const StartTimeWidget(),
            backgroundsCubit: backgroundsCubit,
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'start_time_widget_no_background');
  });

  testGoldens('Should render StartTimeWidget with background', (tester) async {
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
        name: 'DayTripDescriptionWithBackgrounds',
        widget: BlocProvider<DayTripCubit>(
          create: (context) => mockDayTripCubit,
          child: TestUtils.defaultWidget(
            child: const StartTimeWidget(),
            backgroundsCubit: backgroundsCubit,
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'start_time_widget_with_background');
  });
}
