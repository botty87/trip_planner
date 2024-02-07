import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/core/widgets/trip/add_destination_card.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/list_tab/add_day_trip_stop_card.dart';
import 'package:trip_planner/gen/assets.gen.dart';

import '../../../../../../utils.dart';

class MockDayTripCubit extends MockCubit<DayTripState> implements DayTripCubit {}

void main() {
  late DayTripCubit mockDayTripCubit;

  setUp(() {
    mockDayTripCubit = MockDayTripCubit();
  });

  setUpAll(() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('Should show AddDayTripStopCard with title and svg', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1200, 1500);
    
    await tester.pumpWidget(TestUtils.defaultWidgetCubit(
      child: const AddDayTripStopCard(),
      cubit: mockDayTripCubit,
    ));

    expect(find.text(LocaleKeys.addDestination), findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is AddDestinationCard && widget.assetName == Assets.svg.destinationSvg),
        findsOneWidget);
  });
}
