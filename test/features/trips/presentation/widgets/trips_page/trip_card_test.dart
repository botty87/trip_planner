import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trip_card.dart';

void main() {
  late TripCard tripCard;
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
    tripCard = TripCard(trip: trip);
  });

  testWidgets('renders TripCard with correct trip details', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: tripCard,
        ),
      ),
    );

    expect(find.text('Trip Name'), findsOneWidget);
    expect(find.text('Trip Description'), findsOneWidget);
    expect(find.text("${LocaleKeys.createdOn.tr()} ${DateFormat.yMMMMd().format(trip.createdAt)}"),
        findsOneWidget);
  });
}
