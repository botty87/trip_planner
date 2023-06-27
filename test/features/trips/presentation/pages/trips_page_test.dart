import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/no_trips_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trips_list_widget.dart';

class MockTripsCubit extends MockCubit<TripsState> implements TripsCubit {}

void main() {
  late MockTripsCubit mockTripsCubit;

  final trips = [
    Trip(
      id: '1',
      name: 'test',
      description: 'test',
      userId: '1',
      createdAt: DateTime.now(),
    ),
  ];

  setUp(() async {
    mockTripsCubit = MockTripsCubit();
    await GetIt.I.reset();
    GetIt.I.registerSingleton<TripsCubit>(mockTripsCubit);
  });

  testWidgets('On no trips show no trips widget', (widgetTester) async {
    // arrange
    whenListen(
      mockTripsCubit,
      Stream.fromIterable([const TripsState()]),
      initialState: const TripsState(),
    );
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TripsPage(),
        ),
      ),
    );
    // act
    final noTripsWidget = find.byType(NoTripsWidget);
    // assert
    expect(noTripsWidget, findsOneWidget);
  });

  testWidgets('On trips show trips list', (widgetTester) async {
    // arrange
    whenListen(
      mockTripsCubit,
      Stream.fromIterable([
        TripsState(trips: trips),
      ]),
      initialState: TripsState(trips: trips),
    );
    await widgetTester.runAsync(() async {
      SharedPreferences.setMockInitialValues({});

      await EasyLocalization.ensureInitialized();
      await widgetTester.pumpWidget(EasyLocalization(
        supportedLocales: [Locale('it'), Locale('en')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        useOnlyLangCode: true,
        child: Builder(builder: (context) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: Scaffold(
              body: TripsPage(),
            ),
          );
        }),
      ));

      await widgetTester.pumpAndSettle();

      // act
      final tripsList = find.byType(TripsListWidget);
      // assert
      expect(tripsList, findsOneWidget);
    });
  });
}
