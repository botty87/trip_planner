import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/list_tab/add_day_trip_stop_card.dart';
import 'package:trip_planner/features/ui/presentation/widgets/trip/add_destination_card.dart';

import '../../../../../../utils.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show AddDestinationCard', ($) async {
    await $.pumpWidget(
        TestUtils.defaultWidget(child: const SingleChildScrollView(child: AddDayTripStopCard())));

    expect($(LocaleKeys.addDestination), findsOneWidget);
    expect($(AddDestinationCard), findsOneWidget);
  });

  //Golden test
  testGoldens('AddDayTripStopCard', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'DayTripErrorWidget',
        widget: TestUtils.defaultWidget(child: const AddDayTripStopCard()),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'add_day_trip_stop_card');
  });
}
