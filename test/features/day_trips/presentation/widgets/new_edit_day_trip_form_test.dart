import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/new_edit_day_trip_form/new_edit_day_trip_form.dart';
import 'package:easy_logger/easy_logger.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('renders NewEditDayTripForm', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditDayTripForm(
              saveSection: const SizedBox(),
              onDescriptionChanged: (value) {},
              isSaving: Stream.value(false)),
        ),
      ),
    );
    expect(find.byType(NewEditDayTripForm), findsOneWidget);
    expect(find.byKey(Key('descriptionWidget')), findsOneWidget);
  });

  testWidgets('renders LinearProgressIndicator when isLoading is true', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditDayTripForm(
              saveSection: const SizedBox(),
              onDescriptionChanged: (value) {},
              isSaving: Stream.value(true)),
        ),
      ),
    );
    await tester.pump();
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets('does not render LinearProgressIndicator when isLoading is false', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditDayTripForm(
              saveSection: const SizedBox(),
              onDescriptionChanged: (value) {},
              isSaving: Stream.value(false)),
        ),
      ),
    );
    await tester.pump();
    expect(find.byType(LinearProgressIndicator), findsNothing);
  });

  testWidgets('renders saveSection', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditDayTripForm(
              saveSection: const SizedBox(key: Key('saveSectionKey')),
              onDescriptionChanged: (value) {},
              isSaving: Stream.value(false)),
        ),
      ),
    );
    expect(find.byKey(Key('saveSectionKey')), findsOneWidget);
  });

  testWidgets('renders initial trip description', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditDayTripForm(
              saveSection: const SizedBox(),
              onDescriptionChanged: (value) {},
              isSaving: Stream.value(false),
              initialTripDescription: 'description'),
        ),
      ),
    );
    expect(find.text('description'), findsOneWidget);
  });
}
