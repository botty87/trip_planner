import 'package:alchemist/alchemist.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/features/settings/domain/entities/settings.dart';
import 'package:trip_planner/features/settings/domain/entities/view_preferences.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/delete_trip_button.dart';
import 'package:trip_planner/features/tutorials/domain/entities/tutorials_data.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart';
import 'package:trip_planner/ui/widgets/trip/generic_delete_trip_button.dart';

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
    settings: Settings(),
    viewPreferences: ViewPreferences(),
  );

  const tViewMode = ViewMode.list;

  setUp(() {
    mockTripCubit = MockTripsCubit();
    mockUserCubit = MockUserCubit();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('renders DeleteTripButton that contains GenericDeleteTripButton', ($) async {
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: [], viewMode: tViewMode)),
      initialState: TripState.loaded(trip: tTrip, dayTrips: [], viewMode: tViewMode),
    );

    whenListen(
      mockUserCubit,
      Stream.value(const UserState.loggedIn(user: tUser)),
      initialState: const UserState.loggedIn(user: tUser),
    );

    await $.pumpWidget(TestUtils.defaultWidget(
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

    expect($(GenericDeleteTripButton), findsOneWidget);
  });

  goldenTest('renders DeleteTripButton that contains GenericDeleteTripButton', fileName: 'delete_trip_button',
      builder: () {
    
    whenListen(
      mockTripCubit,
      Stream.value(TripState.loaded(trip: tTrip, dayTrips: [], viewMode: tViewMode)),
      initialState: TripState.loaded(trip: tTrip, dayTrips: [], viewMode: tViewMode),
    );

    whenListen(
      mockUserCubit,
      Stream.value(const UserState.loggedIn(user: tUser)),
      initialState: const UserState.loggedIn(user: tUser),
    );

    return GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'normal',
          child: TestUtils.defaultWidgetNoScaffold(
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
          ),
        ),
      ],
    );
  });
}
