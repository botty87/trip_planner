import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/initial_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/loaded_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trips_error_widget.dart';

import '../../../../utils.dart';

class MockTripsCubit extends MockCubit<TripsState> implements TripsCubit {}

void main() {
  late TripsCubit tripsCubit;

  final getIt = GetIt.instance;

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    tripsCubit = MockTripsCubit();
    getIt.registerSingleton<TripsCubit>(tripsCubit);
  });

  tearDown(() {
    getIt.reset();
  });

  group('TripsPage', () {
    testWidgets('should render InitialWidget when state is initial', (WidgetTester tester) async {
      whenListen(tripsCubit, Stream.fromIterable([const TripsState.initial()]),
          initialState: const TripsState.initial());

      await tester.runAsync(() async {
        await tester.pumpWidget(defaultWidget(const TripsPage()));

        expect(find.byType(InitialWidget), findsOneWidget);
        expect(find.byType(FloatingActionButton), findsOneWidget);
      });
    });

    testWidgets('should render LoadedWidget when state is loaded', (WidgetTester tester) async {
      whenListen(tripsCubit, Stream.fromIterable([const TripsState.loaded(trips: [])]),
          initialState: const TripsState.loaded(trips: []));

      await tester.runAsync(() async {
        await tester.pumpWidget(defaultWidget(const TripsPage()));

        expect(find.byType(LoadedWidget), findsOneWidget);
        expect(find.byType(FloatingActionButton), findsOneWidget);
      });
    });

    testWidgets('should render TripsErrorWidget when state is error', (WidgetTester tester) async {
      whenListen(tripsCubit, Stream.fromIterable([const TripsState.error(message: 'message')]),
          initialState: const TripsState.error(message: 'message'));

      await tester.runAsync(() async {
        await tester.pumpWidget(defaultWidget(const TripsPage()));

        expect(find.byType(TripsErrorWidget), findsOneWidget);
        expect(find.byType(FloatingActionButton), findsOneWidget);
      });
    });
  });
}
