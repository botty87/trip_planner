import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/widgets/generic_error_widget.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trips_error_widget.dart';

import '../../../../../utils.dart';

class MockTripsCubit extends MockCubit<TripsState> implements TripsCubit {}

void main() {
  late TripsCubit mockTripsCubit;

  setUp(() {
    mockTripsCubit = MockTripsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('render GenericErrorWidget', (WidgetTester tester) async {
    whenListen(
      mockTripsCubit,
      Stream.value(const TripsState.error(message: 'message')),
      initialState: const TripsState.error(message: 'message'),
    );

    await tester.runAsync(() async {
      await tester.pumpWidget(TestUtils.defaultWidgetCubit(
        child: const TripsErrorWidget(message: 'message'),
        cubit: mockTripsCubit,
      ));

      expect(find.byType(GenericErrorWidget), findsOneWidget);
    });
  });
}
