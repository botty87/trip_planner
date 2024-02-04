import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/widgets/trip/generic_trip_card.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/day_trip_card.dart';

import '../../../../../utils.dart';

void main() {
  const tDayTrip = DayTrip(index: 0, description: "description");
  final tTripStartDate = DateTime.now();

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('renders DayTripCard that conains GenericTripCard', (tester) async {
    await tester.pumpWidget(
      TestUtils.defaultWidget(
        ImplicitlyAnimatedReorderableList<DayTrip>(
          items: const [tDayTrip],
          areItemsTheSame: (oldItem, newItem) => oldItem == newItem,
          itemBuilder: (context, animation, item, i) {
            return Reorderable(
              key: const Key("reorderable"),
              child: DayTripCard(
                dayTrip: tDayTrip,
                tripStartDate: tTripStartDate,
              ),
            );
          },
          onReorderFinished: (item, from, to, newItems) {},
        ),
      ),
    );

    expect(find.byType(GenericTripCard), findsOneWidget);
  });
}
