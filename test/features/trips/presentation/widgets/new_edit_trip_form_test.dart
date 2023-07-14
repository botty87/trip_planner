import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/widgets/new_edit_trip_form/new_edit_trip_form.dart';

void main() {
  testWidgets('renders NewEditTripForm', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onStartDateChanged: (value) {},
              isLoading: Stream.value(false),
              isStartDateBeforeToday: Stream.value(false)),
        ),
      ),
    );
    expect(find.byType(NewEditTripForm), findsOneWidget);
    expect(find.byKey(Key('tripNameTextField')), findsOneWidget);
    expect(find.byKey(Key('tripDescriptionTextField')), findsOneWidget);
    expect(find.byKey(Key('startDatePicker')), findsOneWidget);
  });

  testWidgets('renders LinearProgressIndicator when isLoading is true', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onStartDateChanged: (value) {},
              isLoading: Stream.value(true),
              isStartDateBeforeToday: Stream.value(false)),
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
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onStartDateChanged: (value) {},
              isLoading: Stream.value(false),
              isStartDateBeforeToday: Stream.value(false)),
        ),
      ),
    );
    await tester.pump();
    expect(find.byType(LinearProgressIndicator), findsNothing);
  });

  testWidgets('renders error message when isStartDateBeforeToday is true', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onStartDateChanged: (value) {},
              isLoading: Stream.value(false),
              isStartDateBeforeToday: Stream.value(true)),
        ),
      ),
    );
    await tester.pump();
    expect(find.text(LocaleKeys.startDateBeforeTodayWarning), findsOneWidget);
  });
}
