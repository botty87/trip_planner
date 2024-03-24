import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/day_trip_page/day_trip_error_widget.dart';
import 'package:trip_planner/features/ui/presentation/widgets/generics/generic_error_widget.dart';

import '../../../../../utils.dart';

class MockDayTripCubit extends MockCubit<DayTripState> implements DayTripCubit {}

void main() {
  late MockBackgroundsCubit backgroundsCubit;
  late MockDayTripCubit dayTripCubit;

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    backgroundsCubit = MockBackgroundsCubit();
    dayTripCubit = MockDayTripCubit();
  });

  patrolWidgetTest('Should show GenericErrorWidget', ($) async {
    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState]),
      initialState: tBackgroundsState,
    );

    await $.pumpWidget(TestUtils.defaultWidget(
      child: const DayTripErrorWidget(message: 'Error'),
      backgroundsCubit: backgroundsCubit,
    ));
    expect($('Error'), findsOneWidget);
    expect($(LocaleKeys.retry), findsOneWidget);
    expect($(GenericErrorWidget), findsOneWidget);
  });

  patrolWidgetTest('On retry should call startListenTripStops and startListenDayTrip', ($) async {
    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState]),
      initialState: tBackgroundsState,
    );

    when(() => dayTripCubit.startListenTripStops()).thenAnswer((_) async {});
    when(() => dayTripCubit.startListenDayTrip()).thenAnswer((_) async {});

    await $.pumpWidget(BlocProvider<DayTripCubit>(
      create: (context) => dayTripCubit,
      child: TestUtils.defaultWidget(
        child: const DayTripErrorWidget(message: 'Error'),
        backgroundsCubit: backgroundsCubit,
      ),
    ));

    await $(LocaleKeys.retry).tap();
    verify(() => dayTripCubit.startListenTripStops()).called(1);
    verify(() => dayTripCubit.startListenDayTrip()).called(1);
  });

  //Golden test
  testGoldens('DayTripErrorWidget', (tester) async {
    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState]),
      initialState: tBackgroundsState,
    );

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'DayTripErrorWidget',
        widget: TestUtils.defaultWidget(
          child: const DayTripErrorWidget(message: 'Error'),
          backgroundsCubit: backgroundsCubit,
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'day_trip_error_widget');
  });
}
