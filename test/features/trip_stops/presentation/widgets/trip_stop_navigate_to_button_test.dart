import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/trip_stop_navigate_to_button.dart';

import '../../../../utils.dart';

void main() {
  late MockBackgroundsCubit backgroundsCubit;

  setUp(() {
    backgroundsCubit = MockBackgroundsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show TripStopNavigateToButton', ($) async {
    whenListen(
      backgroundsCubit,
      Stream.value(tBackgroundsState),
      initialState: tBackgroundsState,
    );

    await $.pumpWidget(TestUtils.defaultWidget(
      backgroundsCubit: backgroundsCubit,
      child: const TripStopNavigateToButton(),
    ));

    expect($(Icons.navigation), findsOneWidget);
    expect($(Text), findsOneWidget);
    expect($(LocaleKeys.navigateToDestination.tr()), findsOneWidget);
  });

  //Golden test
  testGoldens('Should render TripStopNavigateToButton', (tester) async {
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
        name: 'TripStopNavigateToButton',
        widget: TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: const TripStopNavigateToButton(),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_navigate_to_button');
  });
}
