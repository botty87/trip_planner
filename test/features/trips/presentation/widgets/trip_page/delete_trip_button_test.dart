import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/widgets/trip/generic_delete_trip_button.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/delete_trip_button.dart';

import '../../../../../utils.dart';

class MockTripsCubit extends MockCubit<TripState> implements TripCubit {}

void main() {
  late TripCubit mockTripCubit;

  final tTrip = Trip(
    id: 'id',
    name: "name",
    startDate: DateTime.now(),
    userId: 'userId',
    createdAt: DateTime.now(),
  );

  setUp(() {
    mockTripCubit = MockTripsCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('renders DeleteTripButton that contains GenericDeleteTripButton', (tester) async {
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: [])),
      initialState: TripState.loaded(trip: tTrip, dayTrips: []),
    );

    await tester.pumpWidget(TestUtils.defaultWidget(
      BlocProvider(
        create: (context) => mockTripCubit,
        child: const DeleteTripButton(),
      ),
    ));

    expect(find.byType(GenericDeleteTripButton), findsOneWidget);
  });
}
