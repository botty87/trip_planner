import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:trip_planner/core/widgets/generic_error_widget.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/trip_error_widget.dart';

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

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    mockTripCubit = MockTripCubit();
  });

  testWidgets('renders TripErrorWidget that contains GenericErrorWidget',
      (WidgetTester tester) async {
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: [])),
      initialState: TripState.loaded(trip: tTrip, dayTrips: []),
    );

    await tester.pumpWidget(TestUtils.defaultWidget(
      BlocProvider(
        create: (context) => mockTripCubit,
        child: const TripErrorWidget(message: 'message'),
      ),
    ));

    expect(find.byType(GenericErrorWidget), findsOneWidget);
  });

  testWidgets('on TripErrorWidget on tap retry call startListenDayTrips',
      (WidgetTester tester) async {
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: [])),
      initialState: TripState.loaded(trip: tTrip, dayTrips: []),
    );

    await tester.pumpWidget(TestUtils.defaultWidget(
      BlocProvider(
        create: (context) => mockTripCubit,
        child: const TripErrorWidget(message: 'message'),
      ),
    ));

    final retryButton = find.byKey(const Key('retryButton'));

    await tester.tap(retryButton);
    verify(() => mockTripCubit.startListenDayTrips()).called(1);
  });
}
