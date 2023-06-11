import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/trips/presentation/cubit/new_trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart';


class MockNewTripCubit extends MockCubit<NewTripState> implements NewTripCubit {}

void main() {
  testWidgets(
    'We have the trip image, trip name text field, trip description text field and create trip button',
    (widgetTester) async {
      // arrange
      final mockNewTripCubit = MockNewTripCubit();
      whenListen(
        mockNewTripCubit,
        Stream.fromIterable([const NewTripState()]),
        initialState: const NewTripState(),
      );
      await widgetTester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: NewTripPage(
              cubit: mockNewTripCubit,
            ),
          ),
        ),
      );
      // act
      final tripImage = find.byKey(const Key('tripImage'));
      final tripNameTextField = find.byKey(const Key('tripNameTextField'));
      final tripDescriptionTextField = find.byKey(const Key('tripDescriptionTextField'));
      final createTripButton = find.byKey(const Key('createTripButton'));
      // assert
      expect(tripImage, findsOneWidget);
      expect(tripNameTextField, findsOneWidget);
      expect(tripDescriptionTextField, findsOneWidget);
      expect(createTripButton, findsOneWidget);
    },
  );
}
