import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/widgets/generic_initial_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/trip_page_initial_widget.dart';

import '../../../../../utils.dart';

void main() {
  testWidgets('TripPageInitialWidget has a GenericInitialWidget', (WidgetTester tester) async {
    await tester.runAsync(() {
      return tester.pumpWidget(TestUtils.defaultWidget(const TripPageInitialWidget()));
    });

    expect(find.byType(GenericInitialWidget), findsOneWidget);
  });
}
