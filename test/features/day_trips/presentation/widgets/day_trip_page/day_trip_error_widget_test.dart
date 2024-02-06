import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/day_trip_error_widget.dart';

import '../../../../../utils.dart';

class MockDayTripCubit extends MockCubit<DayTripState> implements DayTripCubit {}

void main() {
  late DayTripCubit mockDayTripCubit;

  setUp(() {
    mockDayTripCubit = MockDayTripCubit();
  });

  setUpAll(() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('Should show GenericErrorWidget with message and retry button',
      (WidgetTester tester) async {
    await tester.pumpWidget(TestUtils.defaultWidgetCubit(
      child: const DayTripErrorWidget(message: 'message'),
      cubit: mockDayTripCubit,
    ));

    expect(find.text('message'), findsOneWidget);
    expect(find.text(LocaleKeys.retry), findsOneWidget);
  });

  testWidgets('Should call startListenTripStops and startListenDayTrip when retry button is pressed',
      (WidgetTester tester) async {
    await tester.pumpWidget(TestUtils.defaultWidgetCubit(
      child: const DayTripErrorWidget(message: 'message'),
      cubit: mockDayTripCubit,
    ));

    await tester.tap(find.text(LocaleKeys.retry));
    verify(() => mockDayTripCubit.startListenTripStops()).called(1);
    verify(() => mockDayTripCubit.startListenDayTrip()).called(1);
  });
}
