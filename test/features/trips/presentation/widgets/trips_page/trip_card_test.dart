import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trip_card.dart';

import '../../../../../utils.dart';

void main() {
  late Trip trip;

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    trip = Trip(
      name: 'Trip Name',
      description: 'Trip Description',
      createdAt: DateTime.now(),
      userId: '1',
      startDate: DateTime.now(),
    );
  });

  patrolWidgetTest('renders TripCard with correct trip details', ($) async {
    await $.pumpWidget(TestUtils.defaultWidget(child: TripCard(trip: trip)));

    expect($('Trip Name'), findsOneWidget);
    expect($('Trip Description'), findsOneWidget);
    expect($("${LocaleKeys.createdOn.tr()} ${DateFormat.yMMMMd().format(trip.createdAt)}"),
        findsOneWidget);
  });

  //Golden test
  testGoldens('renders TripCard with correct trip details', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'TripCard',
        widget: TestUtils.defaultWidget(child: TripCard(trip: trip)),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_card');
  });
}
