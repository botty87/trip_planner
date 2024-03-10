import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/new_edit_trip_stop_form/new_edit_trip_stop_form.dart';

import '../../../../utils.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show DurationWidget', ($) async {
    await $.pumpWidget(TestUtils.defaultWidget(
      child: DurationWidget(
        onHourDurationChanged: (value) {},
        onMinuteDurationChanged: (value) {},
        hourDuration: const Stream.empty(),
        minuteDuration: const Stream.empty(),
        initialHourDuration: 1,
        initialMinuteDuration: 10,
      ),
    ));

    expect($(LocaleKeys.tripStopEstimatedDuration.tr()), findsOneWidget);
    expect($(LocaleKeys.hours.tr()), findsOneWidget);
    expect($(LocaleKeys.minutes.tr()), findsOneWidget);
    expect($('1'), findsOneWidget);
    expect($('10'), findsOneWidget);
  });

  //Golden test
  testGoldens('Should render DurationWidget', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'DurationWidget',
        widget: DurationWidget(
          onHourDurationChanged: (value) {},
          onMinuteDurationChanged: (value) {},
          hourDuration: const Stream.empty(),
          minuteDuration: const Stream.empty(),
          initialHourDuration: 1,
          initialMinuteDuration: 10,
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'duration_widget');
  });
}
