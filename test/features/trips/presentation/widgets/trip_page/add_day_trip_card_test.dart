import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/widgets/trip/add_destination_card.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/add_day_trip_card.dart';

import '../../../../../utils.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('renders AddDayTripCard that contains AddDestinationCard', (tester) async {
    await tester.pumpWidget(
      TestUtils.defaultWidget(const SingleChildScrollView(child: AddDayTripCard())),
    );

    expect(find.byType(AddDestinationCard), findsOneWidget);
  });
}
