import 'package:alchemist/alchemist.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
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
    await $.pumpWidget(TestUtils.defaultWidget(child: TripCard(trip: trip, fillDescription: false)));

    expect($('Trip Name'), findsOneWidget);
    expect($('Trip Description'), findsOneWidget);
    expect($("${LocaleKeys.createdOn.tr()} ${DateFormat.yMMMMd().format(trip.createdAt)}"), findsOneWidget);
  });

  goldenTest('renders TripCard with correct trip details', fileName: 'trip_card', builder: () {
    return GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'with no description',
          child: TripCard(trip: trip.copyWith(description: null), fillDescription: false),
        ),
        GoldenTestScenario(
          name: 'with description',
          child: TripCard(trip: trip, fillDescription: false),
        ),
        GoldenTestScenario(
          name: 'with public trip',
          child: TripCard(trip: trip.copyWith(isPublic: true), fillDescription: false),
        ),
      ],
    );
  });
}
