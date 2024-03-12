import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/trip_stop_done_duration_container.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/trip_stop_done_widget.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/trip_stop_duration_widget.dart';

import '../../../../utils.dart';

void main() {
  late TripStopCubit mockTripStopCubit;
  late MockBackgroundsCubit backgroundsCubit;

  setUp(() {
    mockTripStopCubit = MockTripStopCubit();
    backgroundsCubit = MockBackgroundsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show TripStopDoneDurationContainer', ($) async {
    whenListen(
      mockTripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    whenListen(
      backgroundsCubit,
      Stream.value(tBackgroundsState),
      initialState: tBackgroundsState,
    );

    await $.pumpWidget(TestUtils.defaultWidget(
      backgroundsCubit: backgroundsCubit,
      child: AdaptiveTheme(
        light: ThemeData.light(),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) {
          return MaterialApp(
            theme: theme,
            darkTheme: darkTheme,
            home: BlocProvider<TripStopCubit>(
              create: (context) => mockTripStopCubit,
              child: const TripStopDoneDurationContainer(),
            ),
          );
        },
      ),
    ));

    expect($(TripStopDoneDurationContainer), findsOneWidget);
    expect($(TripStopDurationWidget), findsOneWidget);
    expect($(TripStopDoneWidget), findsOneWidget);
  });

  //Golden test
  testGoldens('TripStopDoneDurationContainer with no background', (tester) async {
    whenListen(
      mockTripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState]),
      initialState: tBackgroundsState,
    );

    SharedPreferences.setMockInitialValues({});

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'TripStopDoneDurationContainerNoBackgrounds',
        widget: TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: AdaptiveTheme(
            light: ThemeData.light(),
            initial: AdaptiveThemeMode.light,
            builder: (theme, darkTheme) {
              return MaterialApp(
                theme: theme,
                darkTheme: darkTheme,
                home: BlocProvider<TripStopCubit>(
                  create: (context) => mockTripStopCubit,
                  child: const TripStopDoneDurationContainer(),
                ),
              );
            },
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_done_duration_container_no_background');
  });

  testGoldens('TripStopDoneDurationContainer with background', (tester) async {
    whenListen(
      mockTripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState.copyWith(currentBackgroundImage: File(''))]),
      initialState: tBackgroundsState.copyWith(currentBackgroundImage: File('')),
    );

    SharedPreferences.setMockInitialValues({});

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'TripStopDoneDurationContainerWithBackgrounds',
        widget: TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: AdaptiveTheme(
            light: ThemeData.light(),
            initial: AdaptiveThemeMode.light,
            builder: (theme, darkTheme) {
              return MaterialApp(
                theme: theme,
                darkTheme: darkTheme,
                home: BlocProvider<TripStopCubit>(
                  create: (context) => mockTripStopCubit,
                  child: const TripStopDoneDurationContainer(),
                ),
              );
            },
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_done_duration_container_with_background');
  });
}
