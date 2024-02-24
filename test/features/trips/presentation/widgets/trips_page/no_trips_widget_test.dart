import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/no_trips_widget.dart';

void main() {

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });
  

  //TODO refactor this test
  /* testWidgets('renders NoTripsWidget', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: NoTripsWidget(),
        ),
      ),
    );

    expect(find.byType(SafeArea), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(Center), findsOneWidget);
    expect(find.byType(Text), findsOneWidget);
    expect(find.byType(Expanded), findsOneWidget);
    expect(find.byType(SvgPicture), findsNWidgets(2));
  }); */
}