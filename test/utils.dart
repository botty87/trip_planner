import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart';
import 'package:trip_planner/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/tutorials/presentation/cubit/tutorial_cubit.dart';
import 'package:trip_planner/features/ui/presentation/cubit/backgrounds_cubit.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart';

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

class MockTutorialCubit extends MockCubit<TutorialState> implements TutorialCubit {}

class MockSettingsCubit extends MockCubit<SettingsState> implements SettingsCubit {}

class MockBackgroundsCubit extends MockCubit<BackgroundsState> implements BackgroundsCubit {}

class MockDayTripCubit extends MockCubit<DayTripState> implements DayTripCubit {}

class MockNewTripStopCubit extends MockCubit<NewTripStopState> implements NewTripStopCubit {}

class MockTripStopCubit extends MockCubit<TripStopState> implements TripStopCubit {}

const tBackgroundsState = BackgroundsState();

const tDayTrip = DayTrip(
  id: 'id',
  index: 0,
  description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis, justo in aliquet.',
);

final tTrip = Trip(
  id: 'id',
  name: 'name',
  description: 'description',
  userId: 'userId',
  createdAt: DateTime.now(),
  startDate: DateTime.now(),
);

const tTripStop = TripStop(
  id: 'id',
  name: 'name',
  description: 'description',
  travelTimeToNextStop: 10,
  index: 0,
  duration: 10,
  location: LatLng(0, 0),
);

final tDayTripStateLoaded = DayTripState.loaded(trip: tTrip, dayTrip: tDayTrip, tripStops: []);

final tTripStopStateNormal =
    TripStopState.normal(tripStop: tTripStop, trip: tTrip, dayTrip: tDayTrip);

class TestUtils {
  static Widget defaultWidget({
    required Widget child,
    UserCubit? userCubit,
    TutorialCubit? tutorialCubit,
    SettingsCubit? settingsCubit,
    BackgroundsCubit? backgroundsCubit,
  }) =>
      defaultWidgetNoScaffold(
        child: Scaffold(body: child),
        userCubit: userCubit,
        tutorialCubit: tutorialCubit,
        settingsCubit: settingsCubit,
        backgroundsCubit: backgroundsCubit,
      );

  static Widget defaultWidgetNoScaffold({
    required Widget child,
    UserCubit? userCubit,
    TutorialCubit? tutorialCubit,
    SettingsCubit? settingsCubit,
    BackgroundsCubit? backgroundsCubit,
  }) =>
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => userCubit ?? MockUserCubit()),
          BlocProvider(create: (context) => tutorialCubit ?? MockTutorialCubit()),
          BlocProvider(create: (context) => settingsCubit ?? MockSettingsCubit()),
          BlocProvider(create: (context) => backgroundsCubit ?? MockBackgroundsCubit()),
        ],
        child: MaterialApp(
          home: ResponsiveBreakpoints(
            breakpoints: const [
              Breakpoint(start: 0, end: 450, name: MOBILE),
              Breakpoint(start: 451, end: 1000, name: TABLET),
              Breakpoint(start: 1001, end: 1920, name: DESKTOP),
              Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
            child: child,
          ),
        ),
      );
}
