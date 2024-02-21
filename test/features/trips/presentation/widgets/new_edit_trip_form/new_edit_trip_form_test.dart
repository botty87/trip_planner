import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/trips/presentation/widgets/new_edit_trip_form/new_edit_trip_form.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('renders NewEditTripForm', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onStartDateChanged: (value) {},
              onIsPublicChanged: (value) {},
              onLanguageCodeChanged: (value) {},
              isSaving: Stream.value(false)),
        ),
      ),
    );
    expect(find.byType(NewEditTripForm), findsOneWidget);
    expect(find.byKey(const Key('tripNameTextField')), findsOneWidget);
    expect(find.byKey(const Key('tripDescriptionTextField')), findsOneWidget);
    expect(find.byKey(const Key('startDatePicker')), findsOneWidget);
  });

  testWidgets('renders LinearProgressIndicator when isLoading is true', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onIsPublicChanged: (value) {},
              onStartDateChanged: (value) {},
              onLanguageCodeChanged: (value) {},
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
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onIsPublicChanged: (value) {},
              onStartDateChanged: (value) {},
              onLanguageCodeChanged: (value) {},
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
          body: NewEditTripForm(
              saveSection: const SizedBox(key: Key('saveSectionKey')),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onStartDateChanged: (value) {},
              onIsPublicChanged: (value) {},
              onLanguageCodeChanged: (value) {},
              isSaving: Stream.value(false)),
        ),
      ),
    );
    expect(find.byKey(const Key('saveSectionKey')), findsOneWidget);
  });

  testWidgets('renders initial trip name', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onStartDateChanged: (value) {},
              onIsPublicChanged: (value) {},
              onLanguageCodeChanged: (value) {},
              isSaving: Stream.value(false),
              initialTripName: 'name'),
        ),
      ),
    );
    expect(find.text('name'), findsOneWidget);
  });

  testWidgets('renders initial day trip description', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NewEditTripForm(
              saveSection: const SizedBox(),
              onNameChanged: (value) {},
              onDescriptionChanged: (value) {},
              onStartDateChanged: (value) {},
              onIsPublicChanged: (value) {},
              onLanguageCodeChanged: (value) {},
              isSaving: Stream.value(false),
              initialTripDescription: 'description'),
        ),
      ),
    );
    expect(find.text('description'), findsOneWidget);
  });
}
