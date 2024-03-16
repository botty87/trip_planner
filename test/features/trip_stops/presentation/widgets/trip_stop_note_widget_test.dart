import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/trip_stop_note_widget.dart';

import '../../../../utils.dart';

void main() {
  late MockBackgroundsCubit backgroundsCubit;
  late MockTripStopCubit tripStopCubit;

  setUp(() {
    backgroundsCubit = MockBackgroundsCubit();
    tripStopCubit = MockTripStopCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show TripStopNoteWidget', ($) async {
    whenListen(
      backgroundsCubit,
      Stream.value(tBackgroundsState),
      initialState: tBackgroundsState,
    );

    whenListen(
      tripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    await $.pumpWidget(TestUtils.defaultWidget(
      backgroundsCubit: backgroundsCubit,
      child: BlocProvider<TripStopCubit>(
        create: (context) => tripStopCubit,
        child: const TripStopNoteWidget(),
      ),
    ));

    expect($(LocaleKeys.note.tr()), findsOneWidget);
    expect($(LocaleKeys.noteHint.tr()), findsOneWidget);
    expect($(TextField), findsOneWidget);

    //If I type in the TextField call the noteChanged method
    when(() => tripStopCubit.noteChanged('Some note')).thenReturn(null);

    await $.enterText($(const Key('noteTextField')), 'Some note');

    verify(() => tripStopCubit.noteChanged('Some note')).called(1);
  });

  patrolWidgetTest('Should show TripStopNoteWidget without hint text', ($) async {
    whenListen(
      backgroundsCubit,
      Stream.value(tBackgroundsState),
      initialState: tBackgroundsState,
    );

    whenListen(
      tripStopCubit,
      Stream.value(tTripStopStateNormal.copyWith(tripStop: tTripStop.copyWith(note: 'Some note'))),
      initialState: tTripStopStateNormal.copyWith(tripStop: tTripStop.copyWith(note: 'Some note')),
    );

    await $.pumpWidget(TestUtils.defaultWidget(
      backgroundsCubit: backgroundsCubit,
      child: BlocProvider<TripStopCubit>(
        create: (context) => tripStopCubit,
        child: const TripStopNoteWidget(),
      ),
    ));

    expect($(LocaleKeys.note.tr()), findsOneWidget);
    expect($(TextField), findsOneWidget);
    expect($('Some note'), findsOneWidget);
  });

  //Golden test
  testGoldens('Should render TripStopNoteWidget', (tester) async {
    whenListen(
      backgroundsCubit,
      Stream.value(tBackgroundsState),
      initialState: tBackgroundsState,
    );

    whenListen(
      tripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'TripStopNoteWidget',
        widget: TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: BlocProvider<TripStopCubit>(
            create: (context) => tripStopCubit,
            child: const TripStopNoteWidget(),
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_note_widget');
  });

  testGoldens('Should render TripStopNoteWidget without hint text', (tester) async {
    whenListen(
      backgroundsCubit,
      Stream.value(tBackgroundsState),
      initialState: tBackgroundsState,
    );

    whenListen(
      tripStopCubit,
      Stream.value(tTripStopStateNormal.copyWith(tripStop: tTripStop.copyWith(note: 'Some note'))),
      initialState: tTripStopStateNormal.copyWith(tripStop: tTripStop.copyWith(note: 'Some note')),
    );

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'TripStopNoteWidget',
        widget: TestUtils.defaultWidget(
          backgroundsCubit: backgroundsCubit,
          child: BlocProvider<TripStopCubit>(
            create: (context) => tripStopCubit,
            child: const TripStopNoteWidget(),
          ),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'trip_stop_note_widget_without_hint');
  });
}
