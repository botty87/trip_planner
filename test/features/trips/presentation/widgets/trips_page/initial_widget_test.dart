import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trips_page_initial_widget.dart';

void main() {
  Widget defaultWidget(Widget child) => MaterialApp(
        home: Scaffold(
          body: child,
        ),
      );

  testWidgets('renders InitialWidget', (WidgetTester tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(defaultWidget(const TripsPageInitialWidget()));

      expect(find.byType(FutureBuilder), findsOneWidget);
      expect(find.byType(SizedBox), findsOneWidget);
      expect(find.byType(AnimatedSwitcher), findsOneWidget);
    });
  });

  testWidgets('renders CircularProgressIndicator', (WidgetTester tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(defaultWidget(const TripsPageInitialWidget()));
      await Future.delayed(const Duration(milliseconds: 500));
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
