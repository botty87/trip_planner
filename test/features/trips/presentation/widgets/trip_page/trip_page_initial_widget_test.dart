import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/ui/widgets/generics/generic_initial_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/trip_page_initial_widget.dart';

import '../../../../../utils.dart';

void main() {
  patrolWidgetTest('TripPageInitialWidget has a GenericInitialWidget', ($) async {
    await $.tester.runAsync(() {
      return $.pumpWidget(TestUtils.defaultWidget(child: const TripPageInitialWidget()));
    });

    expect(find.byType(GenericInitialWidget), findsOneWidget);
  });
}
