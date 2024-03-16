import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/trip_stop_duration_widget.dart';
import 'package:trip_planner/features/ui/presentation/widgets/trip/generic_duration_widget.dart';

import '../../../../utils.dart';

void main() {
  late TripStopCubit mockTripStopCubit;
  late MockBackgroundsCubit backgroundsCubit;

  setUp(() {
    mockTripStopCubit = MockTripStopCubit();
    backgroundsCubit = MockBackgroundsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show TripStopDurationWidget', ($) async {
    whenListen(
      mockTripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    whenListen(
      backgroundsCubit,
      Stream.value(tBackgroundsState),
      initialState: tBackgroundsState,
    );

    await $.pumpWidget(TestUtils.defaultWidget(
      backgroundsCubit: backgroundsCubit,
      child: BlocProvider<TripStopCubit>(
        create: (context) => mockTripStopCubit,
        child: const TripStopDurationWidget(),
      ),
    ));

    expect($(GenericDurationWidget), findsOneWidget);
    expect($(TripStopDurationWidget), findsOneWidget);
    expect($('${tTripStop.duration}m'), findsOneWidget);
  });

  //Golden test
  testGoldens('Should render TripStopDurationWidget', (tester) async {
    whenListen(
      mockTripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    whenListen(
      backgroundsCubit,
      Stream.value(tBackgroundsState),
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
        name: 'TripStopDurationWidget',
        widget: TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: BlocProvider<TripStopCubit>(
            create: (context) => mockTripStopCubit,
            child: const TripStopDurationWidget(),
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_duration_widget');
  });
}
