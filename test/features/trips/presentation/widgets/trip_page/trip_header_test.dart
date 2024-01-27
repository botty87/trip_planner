import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/widgets/trip/generic_trip_header.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/trip_header.dart';

import '../../../../../utils.dart';

class MockTripCubit extends MockCubit<TripState> implements TripCubit {}

void main() {
  late TripCubit mockTripCubit;

  final tTrip = Trip(
    id: 'id',
    name: "name",
    startDate: DateTime.now(),
    userId: 'userId',
    createdAt: DateTime.now(),
  );

  final tTripWithDescription = Trip(
    id: 'id',
    name: "name",
    startDate: DateTime.now(),
    userId: 'userId',
    createdAt: DateTime.now(),
    description: 'description',
  );

  setUp(() {
    mockTripCubit = MockTripCubit();
  });

  group('TripHeader', () {
    testWidgets('should render GenericTripDescription when trip has description',
        (WidgetTester tester) async {
      whenListen(
        mockTripCubit,
        Stream.value(TripState.loaded(trip: tTripWithDescription, dayTrips: [])),
        initialState: TripState.loaded(trip: tTripWithDescription, dayTrips: []),
      );

      await tester.pumpWidget(
        TestUtils.defaultWidget(
          BlocProvider(
            create: (context) => mockTripCubit,
            child: const TripHeader(),
          ),
        ),
      );
      expect(find.byType(GenericTripDescription), findsOneWidget);
      expect(find.byType(SizedBox), findsNothing);
    });

    testWidgets('should not render GenericTripDescription when trip has no description',
        (WidgetTester tester) async {
      whenListen(
        mockTripCubit,
        Stream.value(TripState.loaded(trip: tTrip, dayTrips: [])),
        initialState: TripState.loaded(trip: tTrip, dayTrips: []),
      );
      await tester.pumpWidget(
        TestUtils.defaultWidget(
          BlocProvider(
            create: (context) => mockTripCubit,
            child: const TripHeader(),
          ),
        ),
      );
      expect(find.byType(GenericTripDescription), findsNothing);
      expect(find.byType(SizedBox), findsOneWidget);
    });
  });
}
