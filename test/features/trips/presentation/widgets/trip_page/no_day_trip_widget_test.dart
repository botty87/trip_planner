import 'package:alchemist/alchemist.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/list/no_day_trip_widget.dart';
import 'package:trip_planner/gen/assets.gen.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../utils.dart';

void main() {
  late MockBackgroundsCubit backgroundsCubit;

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    backgroundsCubit = MockBackgroundsCubit();
  });

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

  goldenTest(
    'renders NoDayTrips with correct text and image',
    fileName: 'no_day_trips_widget',
    builder: () {
      whenListen(
        backgroundsCubit,
        Stream.value(tBackgroundsState),
        initialState: tBackgroundsState,
      );

      return GoldenTestGroup(
        scenarioConstraints: const BoxConstraints(maxWidth: 400, maxHeight: 400),
        children: [
          GoldenTestScenario(
            name: 'normal',
            child: TestUtils.defaultWidgetNoScaffold(
              backgroundsCubit: backgroundsCubit,
              child: const NoDayTripsWidget(),
            ),
          ),
        ],
      );
    },
  );
}
