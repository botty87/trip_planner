import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/ui/widgets/trip/generic_trip_card.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/day_trip_card.dart';

import '../../../../../utils.dart';

void main() {
  const tDayTrip = DayTrip(index: 0, description: "description");
  final tTripStartDate = DateTime.now();

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('renders DayTripCard that conains GenericTripCard', ($) async {
    await $.pumpWidget(
      TestUtils.defaultWidget(
        child: DayTripCard(
          key: ValueKey(tDayTrip.id),
          dayTrip: tDayTrip,
          tripStartDate: tTripStartDate,
        ),
      ),
    );

    expect(find.byType(GenericTripCard), findsOneWidget);
    expect($("${LocaleKeys.day.tr()} 1"), findsOneWidget);
    expect($(DateFormat.yMMMMd().format(tTripStartDate)), findsOneWidget);
    expect($(tDayTrip.description), findsOneWidget);
  });

  testGoldens('renders DayTripCard that conains GenericTripCard', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        widget: TestUtils.defaultWidget(
          child: DayTripCard(
            key: ValueKey(tDayTrip.id),
            dayTrip: tDayTrip,
            tripStartDate: tTripStartDate,
          ),
        ),
        name: 'day_trip_card',
      );

    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'day_trip_card');
  });
}
