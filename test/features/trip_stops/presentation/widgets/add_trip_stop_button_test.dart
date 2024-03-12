import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/new_trip_stop_page/add_trip_stop_button.dart';

import '../../../../utils.dart';

void main() {
  late NewTripStopCubit mockNewTripStopCubit;

  setUp(() {
    mockNewTripStopCubit = MockNewTripStopCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show AddTripStopButton', ($) async {
    when(() => mockNewTripStopCubit.createTripStop()).thenAnswer((_) async {});

    await $.pumpWidget(TestUtils.defaultWidget(
      child: BlocProvider<NewTripStopCubit>(
        create: (context) => mockNewTripStopCubit,
        child: const AddTripStopButton(
          isSaving: Stream.empty(),
        ),
      ),
    ));

    expect($(LocaleKeys.addTripStop.tr()), findsOneWidget);

    await $.tap($(const Key('addTripStopButton')));
    verify(() => mockNewTripStopCubit.createTripStop()).called(1);
  });

  //Golden test
  testGoldens('Should render AddTripStopButton', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'AddTripStopButton',
        widget: BlocProvider<NewTripStopCubit>(
          create: (context) => mockNewTripStopCubit,
          child: const AddTripStopButton(
            isSaving: Stream.empty(),
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'add_trip_stop_button');
  });
}
