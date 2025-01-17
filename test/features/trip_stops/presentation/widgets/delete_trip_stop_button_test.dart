import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/trip_stop_page/delete_trip_stop_button.dart';

import '../../../../utils.dart';

void main() {
  late TripStopCubit mockTripStopCubit;

  setUp(() {
    mockTripStopCubit = MockTripStopCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show DeleteTripStopButton', ($) async {
    whenListen(
      mockTripStopCubit,
      Stream.value(tTripStopStateNormal),
      initialState: tTripStopStateNormal,
    );

    await $.pumpWidget(TestUtils.defaultWidget(
      child: BlocProvider<TripStopCubit>(
        create: (context) => mockTripStopCubit,
        child: const DeleteTripStopButton(),
      ),
    ));

    expect($(LocaleKeys.deleteTripStop.tr()), findsOneWidget);
  });
}
