import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/widgets/generic_initial_widget.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/day_trip_page_initial_widget.dart';

import '../../../../../utils.dart';

void main() {
  testWidgets('should show GenericInitialWidget', (WidgetTester tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(TestUtils.defaultWidget(const DayTripPageInitialWidget()));

      expect(find.byType(DayTripPageInitialWidget), findsOneWidget);
      expect(find.byType(GenericInitialWidget), findsOneWidget);
    });
  });
}
