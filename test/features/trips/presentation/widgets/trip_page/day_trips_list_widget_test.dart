import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/settings/domain/entities/view_preferences.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/day_trip_card.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/list/day_trips_list_widget.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/list/no_day_trip_widget.dart';
import 'package:trip_planner/gen/assets.gen.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../utils.dart';

class MockTripsCubit extends MockCubit<TripState> implements TripCubit {}

void main() {
  late TripCubit mockTripCubit;
  late MockBackgroundsCubit backgroundsCubit;

  const tDayTrips = [DayTrip(index: 0, description: "description"), DayTrip(index: 1, description: "description")];
  final tTrip = Trip(
    id: 'id',
    name: "name",
    startDate: DateTime.now(),
    userId: 'userId',
    createdAt: DateTime.now(),
  );

  const tViewMode = ViewMode.list;

  setUp(() {
    mockTripCubit = MockTripsCubit();
    backgroundsCubit = MockBackgroundsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  group('DayTripsListWidget', () {
    testWidgets('renders DayTripsListWidget that contains NoDayTrips on empty DayTrips and landscape orientation',
        (tester) async {
      whenListen(
        mockTripCubit,
        Stream.value(TripState.loaded(trip: tTrip, dayTrips: [], viewMode: tViewMode)),
        initialState: TripState.loaded(trip: tTrip, dayTrips: [], viewMode: tViewMode),
      );

      whenListen(
        backgroundsCubit,
        Stream.value(tBackgroundsState),
        initialState: tBackgroundsState,
      );

      await tester.pumpWidget(
        TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: BlocProvider(
            create: (context) => mockTripCubit,
            child: const CustomScrollView(
              slivers: [
                DayTripsListWidget(
                  orientation: Orientation.landscape,
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.byType(NoDayTripsWidget), findsOneWidget);
    });

    testWidgets('renders DayTripsListWidget that contains SizedBox on empty DayTrips and portrait orientation',
        (tester) async {
      whenListen(
        mockTripCubit,
        Stream.value(TripState.loaded(trip: tTrip, dayTrips: [], viewMode: tViewMode)),
        initialState: TripState.loaded(trip: tTrip, dayTrips: [], viewMode: tViewMode),
      );

      await tester.pumpWidget(
        TestUtils.defaultWidget(
          child: BlocProvider(
            create: (context) => mockTripCubit,
            child: const CustomScrollView(
              slivers: [
                DayTripsListWidget(
                  orientation: Orientation.portrait,
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.byType(DayTripsList), findsNothing);
    });

    testWidgets('renders DayTripsListWidget that contains DayTripsList on non empty DayTrips', (tester) async {
      whenListen(
        mockTripCubit,
        Stream.value(TripState.loaded(trip: tTrip, dayTrips: tDayTrips, viewMode: tViewMode)),
        initialState: TripState.loaded(trip: tTrip, dayTrips: tDayTrips, viewMode: tViewMode),
      );

      await tester.pumpWidget(
        TestUtils.defaultWidget(
          child: BlocProvider(
            create: (context) => mockTripCubit,
            child: const CustomScrollView(
              slivers: [
                DayTripsListWidget(
                  orientation: Orientation.portrait,
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.byType(DayTripsList), findsOneWidget);
    });
  });

  group('NoDayTrips', () {
    testWidgets('renders NoDayTrips with correct text and image', (tester) async {
      whenListen(
        backgroundsCubit,
        Stream.value(tBackgroundsState),
        initialState: tBackgroundsState,
      );

      await tester.pumpWidget(
        TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: const NoDayTripsWidget(),
        ),
      );

      final textWidgetPredicate = find.byWidgetPredicate((widget) {
        return widget is Text &&
            widget.style?.fontSize == 25 &&
            widget.style?.fontWeight == FontWeight.bold &&
            widget.textAlign == TextAlign.center;
      });

      final svgPicturePredicate = find.byWidgetPredicate((widget) {
        return widget is SvgPicture &&
            widget.bytesLoader is AssetBytesLoader &&
            (widget.bytesLoader as AssetBytesLoader).assetName == Assets.svg.noTripsSvg;
      });

      expect(find.text(LocaleKeys.noDayTripsYetAddOne.tr()), findsOneWidget);
      expect(textWidgetPredicate, findsOneWidget);
      expect(svgPicturePredicate, findsOneWidget);
    });
  });

  group('DayTripsList', () {
    testWidgets('renders DayTripsList with correct DayTrips', (tester) async {
      whenListen(
        mockTripCubit,
        Stream.value(TripState.loaded(trip: tTrip, dayTrips: tDayTrips, viewMode: tViewMode)),
        initialState: TripState.loaded(trip: tTrip, dayTrips: tDayTrips, viewMode: tViewMode),
      );

      await tester.pumpWidget(
        TestUtils.defaultWidget(
          child: BlocProvider(
            create: (context) => mockTripCubit,
            child: const CustomScrollView(slivers: [DayTripsList()]),
          ),
        ),
      );

      expect(find.byType(DayTripsList), findsOneWidget);
      expect(find.byType(DayTripCard), findsNWidgets(2));
    });
  });
}
