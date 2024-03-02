import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/no_trips_widget.dart';
import 'package:trip_planner/features/ui/presentation/cubit/backgrounds_cubit.dart';

import '../../../../../utils.dart';

void main() {
  late MockBackgroundsCubit backgroundsCubit;

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    backgroundsCubit = MockBackgroundsCubit();
  });

  patrolWidgetTest('renders NoTripsWidget', ($) async {
    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState]),
      initialState: tBackgroundsState,
    );

    await $.pumpWidgetAndSettle(TestUtils.defaultWidget(
      child: const NoTripsWidget(),
      backgroundsCubit: backgroundsCubit,
    ));

    expect($(LocaleKeys.noTripAddOne), findsOneWidget);
    expect(find.byType(SvgPicture), findsNWidgets(2));
  });
}
