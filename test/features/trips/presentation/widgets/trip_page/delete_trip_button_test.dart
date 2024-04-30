import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:trip_planner/features/tutorials/domain/entities/tutorials_data.dart';
import 'package:trip_planner/features/ui/presentation/widgets/trip/generic_delete_trip_button.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/delete_trip_button.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart';

import '../../../../../utils.dart';

class MockTripsCubit extends MockCubit<TripState> implements TripCubit {}

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

void main() {
  late TripCubit mockTripCubit;
  late UserCubit mockUserCubit;

  final tTrip = Trip(
    id: 'id',
    name: "name",
    startDate: DateTime.now(),
    userId: 'userId',
    createdAt: DateTime.now(),
  );

  const tUser = User(
    id: 'id',
    email: 'email',
    name: 'name',
    tutorialsData: TutorialsData(),
  );

  setUp(() {
    mockTripCubit = MockTripsCubit();
    mockUserCubit = MockUserCubit();
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

    whenListen(
      mockUserCubit,
      Stream.value(const UserState.loggedIn(user: tUser)),
      initialState: const UserState.loggedIn(user: tUser),
    );

    await tester.pumpWidget(TestUtils.defaultWidget(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<TripCubit>(
            create: (context) => mockTripCubit,
          ),
          BlocProvider<UserCubit>(
            create: (context) => mockUserCubit,
          ),
        ],
        child: const DeleteTripButton(),
      ),
    ));

    expect(find.byType(GenericDeleteTripButton), findsOneWidget);
  });

  testGoldens('renders DeleteTripButton that contains GenericDeleteTripButton', (tester) async {
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: [])),
      initialState: TripState.loaded(trip: tTrip, dayTrips: []),
    );

    whenListen(
      mockUserCubit,
      Stream.value(const UserState.loggedIn(user: tUser)),
      initialState: const UserState.loggedIn(user: tUser),
    );

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'delete_trip_button',
        widget: (TestUtils.defaultWidget(
          child: MultiBlocProvider(
            providers: [
              BlocProvider<TripCubit>(
                create: (context) => mockTripCubit,
              ),
              BlocProvider<UserCubit>(
                create: (context) => mockUserCubit,
              ),
            ],
            child: const DeleteTripButton(),
          ),
        )),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'delete_trip_button');
  });
}
