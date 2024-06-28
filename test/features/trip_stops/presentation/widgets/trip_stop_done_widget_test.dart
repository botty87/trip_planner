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
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/trip_stop_done_widget.dart';

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

  patrolWidgetTest('Should show TripStopDoneWidget', ($) async {
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
              child: const TripStopDoneWidget(),
            ),
          );
        },
      ),
    ));

    expect($(TripStopDoneWidget), findsOneWidget);
    expect($(LocaleKeys.completed.tr()), findsOneWidget);
    expect($(Checkbox), findsOneWidget);
  });

  //Golden test
  testGoldens('Should render TripStopDoneWidget', (tester) async {
    SharedPreferences.setMockInitialValues({});

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

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'default',
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
                  child: const TripStopDoneWidget(),
                ),
              );
            },
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_done_widget');
  });
}
