import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/add_day_trip_card.dart';
import 'package:trip_planner/ui/widgets/trip/add_destination_card.dart';

import '../../../../../utils.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('renders AddDayTripCard that contains AddDestinationCard', ($) async {
    await $.pumpWidget(
      TestUtils.defaultWidget(child: const SingleChildScrollView(child: AddDayTripCard())),
    );

    expect(find.byType(AddDestinationCard), findsOneWidget);
    expect($(LocaleKeys.addDayTrip), findsOneWidget);
    expect(find.byType(SvgPicture), findsOneWidget);
  });
}
