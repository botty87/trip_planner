import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/trip_stop_description.dart';
import 'package:trip_planner/features/ui/presentation/widgets/trip/generic_trip_description.dart';

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

  patrolWidgetTest('Should show TripStopDescription', ($) async {
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
        child: const TripStopDescription(),
      ),
    ));

    expect($(GenericTripDescription), findsOneWidget);
    expect($(tTripStop.description), findsOneWidget);
  });

  //Golden test
  testGoldens('TripStopDescription with no background', (tester) async {
    whenListen(
      mockTripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

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
        name: 'TripStopDescriptionNoBackgrounds',
        widget: TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: BlocProvider<TripStopCubit>(
            create: (context) => mockTripStopCubit,
            child: const TripStopDescription(),
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_description_no_backgrounds');
  });

  testGoldens('TripStopDescription with background', (tester) async {
    whenListen(
      mockTripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState.copyWith(currentBackgroundImage: File(''))]),
      initialState: tBackgroundsState.copyWith(currentBackgroundImage: File('')),
    );

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'TripStopDescriptionWithBackgrounds',
        widget: TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: BlocProvider<TripStopCubit>(
            create: (context) => mockTripStopCubit,
            child: const TripStopDescription(),
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_description_with_backgrounds');
  });
}
