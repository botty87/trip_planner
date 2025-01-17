import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/ads/domain/entities/ads.dart';
import 'package:trip_planner/features/ads/presentation/cubit/ads_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/no_trips_widget.dart';

import '../../../../../utils.dart';

class MockAdsCubit extends MockCubit<AdsState> implements AdsCubit {}

void main() {
  late MockBackgroundsCubit backgroundsCubit;
  late MockAdsCubit mockAdsCubit;

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() async {
    backgroundsCubit = MockBackgroundsCubit();
    mockAdsCubit = MockAdsCubit();

    await GetIt.I.reset();
    GetIt.I.registerSingleton<AdsTrips>(AdsTrips());
    GetIt.I.registerFactoryParam<AdsCubit, Ads, void>((ads, _) => mockAdsCubit);
  });

  patrolWidgetTest('renders NoTripsWidget', ($) async {
    whenListen(
      backgroundsCubit,
      Stream.fromIterable([tBackgroundsState]),
      initialState: tBackgroundsState,
    );

    whenListen(
      mockAdsCubit,
      Stream.fromIterable([AdsState.initial()]),
      initialState: AdsState.initial(),
    );

    await $.pumpWidgetAndSettle(TestUtils.defaultWidget(
      child: const NoTripsWidget(),
      backgroundsCubit: backgroundsCubit,
    ));

    expect($(NoTripsWidget), findsOneWidget);
    expect($(LocaleKeys.noTripAddOne), findsOneWidget);
    expect($(SvgPicture), findsNWidgets(2));
  });
}
