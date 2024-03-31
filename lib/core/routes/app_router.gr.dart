// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;
import 'package:trip_planner/core/home_page.dart' as _i7;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i22;
import 'package:trip_planner/features/day_trips/presentation/pages/day_trip_page.dart'
    as _i2;
import 'package:trip_planner/features/day_trips/presentation/pages/new_day_trip_page.dart'
    as _i11;
import 'package:trip_planner/features/discover_new_trips/presentation/pages/discover_new_daily_trips_page.dart'
    as _i3;
import 'package:trip_planner/features/discover_new_trips/presentation/pages/discover_new_trip_stop_page.dart'
    as _i4;
import 'package:trip_planner/features/discover_new_trips/presentation/pages/discover_new_trip_stops_page.dart'
    as _i5;
import 'package:trip_planner/features/discover_new_trips/presentation/pages/discover_new_trips_page.dart'
    as _i6;
import 'package:trip_planner/features/import_old_trips/presentation/pages/import_old_trips_page.dart'
    as _i8;
import 'package:trip_planner/features/info_contacts/presentation/pages/info_contacts_page.dart'
    as _i9;
import 'package:trip_planner/features/settings/presentation/pages/settings_page.dart'
    as _i14;
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart'
    as _i23;
import 'package:trip_planner/features/trip_stops/presentation/pages/new_trip_stop_page.dart'
    as _i13;
import 'package:trip_planner/features/trip_stops/presentation/pages/trip_stop_page.dart'
    as _i16;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i21;
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart'
    as _i12;
import 'package:trip_planner/features/trips/presentation/pages/trip_page.dart'
    as _i15;
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart'
    as _i17;
import 'package:trip_planner/features/tutorials/presentation/pages/tutorial_page.dart'
    as _i18;
import 'package:trip_planner/features/user_account/domain/entities/user.dart'
    as _i24;
import 'package:trip_planner/features/user_account/presentation/pages/account_page.dart'
    as _i1;
import 'package:trip_planner/features/user_account/presentation/pages/login_signup_page.dart'
    as _i10;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    DayTripRoute.name: (routeData) {
      final args = routeData.argsAs<DayTripRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DayTripPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    DiscoverNewDailyTripsRoute.name: (routeData) {
      final args = routeData.argsAs<DiscoverNewDailyTripsRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DiscoverNewDailyTripsPage(
          key: args.key,
          trip: args.trip,
        ),
      );
    },
    DiscoverNewTripStopRoute.name: (routeData) {
      final args = routeData.argsAs<DiscoverNewTripStopRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DiscoverNewTripStopPage(
          key: args.key,
          tripStop: args.tripStop,
        ),
      );
    },
    DiscoverNewTripStopsRoute.name: (routeData) {
      final args = routeData.argsAs<DiscoverNewTripStopsRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DiscoverNewTripStopsPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    DiscoverNewTripsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DiscoverNewTripsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    ImportOldTripsRoute.name: (routeData) {
      final args = routeData.argsAs<ImportOldTripsRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ImportOldTripsPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    InfoContactsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.InfoContactsPage(),
      );
    },
    LoginSignupRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.LoginSignupPage(),
      );
    },
    NewDayTripRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NewDayTripRouteArgs>(
          orElse: () =>
              NewDayTripRouteArgs(tripId: pathParams.getString('tripId')));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.NewDayTripPage(
          key: args.key,
          tripId: args.tripId,
        ),
      );
    },
    NewTripRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripRouteArgs>(
          orElse: () => const NewTripRouteArgs());
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.NewTripPage(
          key: args.key,
          existingTrip: args.existingTrip,
        ),
      );
    },
    NewTripStopRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripStopRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.NewTripStopPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SettingsPage(),
      );
    },
    TripRoute.name: (routeData) {
      final args = routeData.argsAs<TripRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.TripPage(
          args.trip,
          key: args.key,
        ),
      );
    },
    TripStopRoute.name: (routeData) {
      final args = routeData.argsAs<TripStopRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.TripStopPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
          tripStop: args.tripStop,
        ),
      );
    },
    TripsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.TripsPage(),
      );
    },
    TutorialRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.TutorialPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i19.PageRouteInfo<void> {
  const AccountRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DayTripPage]
class DayTripRoute extends _i19.PageRouteInfo<DayTripRouteArgs> {
  DayTripRoute({
    _i20.Key? key,
    required _i21.Trip trip,
    required _i22.DayTrip dayTrip,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          DayTripRoute.name,
          args: DayTripRouteArgs(
            key: key,
            trip: trip,
            dayTrip: dayTrip,
          ),
          initialChildren: children,
        );

  static const String name = 'DayTripRoute';

  static const _i19.PageInfo<DayTripRouteArgs> page =
      _i19.PageInfo<DayTripRouteArgs>(name);
}

class DayTripRouteArgs {
  const DayTripRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i20.Key? key;

  final _i21.Trip trip;

  final _i22.DayTrip dayTrip;

  @override
  String toString() {
    return 'DayTripRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i3.DiscoverNewDailyTripsPage]
class DiscoverNewDailyTripsRoute
    extends _i19.PageRouteInfo<DiscoverNewDailyTripsRouteArgs> {
  DiscoverNewDailyTripsRoute({
    _i20.Key? key,
    required _i21.Trip trip,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          DiscoverNewDailyTripsRoute.name,
          args: DiscoverNewDailyTripsRouteArgs(
            key: key,
            trip: trip,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscoverNewDailyTripsRoute';

  static const _i19.PageInfo<DiscoverNewDailyTripsRouteArgs> page =
      _i19.PageInfo<DiscoverNewDailyTripsRouteArgs>(name);
}

class DiscoverNewDailyTripsRouteArgs {
  const DiscoverNewDailyTripsRouteArgs({
    this.key,
    required this.trip,
  });

  final _i20.Key? key;

  final _i21.Trip trip;

  @override
  String toString() {
    return 'DiscoverNewDailyTripsRouteArgs{key: $key, trip: $trip}';
  }
}

/// generated route for
/// [_i4.DiscoverNewTripStopPage]
class DiscoverNewTripStopRoute
    extends _i19.PageRouteInfo<DiscoverNewTripStopRouteArgs> {
  DiscoverNewTripStopRoute({
    _i20.Key? key,
    required _i23.TripStop tripStop,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          DiscoverNewTripStopRoute.name,
          args: DiscoverNewTripStopRouteArgs(
            key: key,
            tripStop: tripStop,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscoverNewTripStopRoute';

  static const _i19.PageInfo<DiscoverNewTripStopRouteArgs> page =
      _i19.PageInfo<DiscoverNewTripStopRouteArgs>(name);
}

class DiscoverNewTripStopRouteArgs {
  const DiscoverNewTripStopRouteArgs({
    this.key,
    required this.tripStop,
  });

  final _i20.Key? key;

  final _i23.TripStop tripStop;

  @override
  String toString() {
    return 'DiscoverNewTripStopRouteArgs{key: $key, tripStop: $tripStop}';
  }
}

/// generated route for
/// [_i5.DiscoverNewTripStopsPage]
class DiscoverNewTripStopsRoute
    extends _i19.PageRouteInfo<DiscoverNewTripStopsRouteArgs> {
  DiscoverNewTripStopsRoute({
    _i20.Key? key,
    required _i21.Trip trip,
    required _i22.DayTrip dayTrip,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          DiscoverNewTripStopsRoute.name,
          args: DiscoverNewTripStopsRouteArgs(
            key: key,
            trip: trip,
            dayTrip: dayTrip,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscoverNewTripStopsRoute';

  static const _i19.PageInfo<DiscoverNewTripStopsRouteArgs> page =
      _i19.PageInfo<DiscoverNewTripStopsRouteArgs>(name);
}

class DiscoverNewTripStopsRouteArgs {
  const DiscoverNewTripStopsRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i20.Key? key;

  final _i21.Trip trip;

  final _i22.DayTrip dayTrip;

  @override
  String toString() {
    return 'DiscoverNewTripStopsRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i6.DiscoverNewTripsPage]
class DiscoverNewTripsRoute extends _i19.PageRouteInfo<void> {
  const DiscoverNewTripsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          DiscoverNewTripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverNewTripsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ImportOldTripsPage]
class ImportOldTripsRoute extends _i19.PageRouteInfo<ImportOldTripsRouteArgs> {
  ImportOldTripsRoute({
    _i20.Key? key,
    required _i24.User user,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          ImportOldTripsRoute.name,
          args: ImportOldTripsRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ImportOldTripsRoute';

  static const _i19.PageInfo<ImportOldTripsRouteArgs> page =
      _i19.PageInfo<ImportOldTripsRouteArgs>(name);
}

class ImportOldTripsRouteArgs {
  const ImportOldTripsRouteArgs({
    this.key,
    required this.user,
  });

  final _i20.Key? key;

  final _i24.User user;

  @override
  String toString() {
    return 'ImportOldTripsRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i9.InfoContactsPage]
class InfoContactsRoute extends _i19.PageRouteInfo<void> {
  const InfoContactsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          InfoContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoContactsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.LoginSignupPage]
class LoginSignupRoute extends _i19.PageRouteInfo<void> {
  const LoginSignupRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginSignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginSignupRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NewDayTripPage]
class NewDayTripRoute extends _i19.PageRouteInfo<NewDayTripRouteArgs> {
  NewDayTripRoute({
    _i20.Key? key,
    required String tripId,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          NewDayTripRoute.name,
          args: NewDayTripRouteArgs(
            key: key,
            tripId: tripId,
          ),
          rawPathParams: {'tripId': tripId},
          initialChildren: children,
        );

  static const String name = 'NewDayTripRoute';

  static const _i19.PageInfo<NewDayTripRouteArgs> page =
      _i19.PageInfo<NewDayTripRouteArgs>(name);
}

class NewDayTripRouteArgs {
  const NewDayTripRouteArgs({
    this.key,
    required this.tripId,
  });

  final _i20.Key? key;

  final String tripId;

  @override
  String toString() {
    return 'NewDayTripRouteArgs{key: $key, tripId: $tripId}';
  }
}

/// generated route for
/// [_i12.NewTripPage]
class NewTripRoute extends _i19.PageRouteInfo<NewTripRouteArgs> {
  NewTripRoute({
    _i20.Key? key,
    _i21.Trip? existingTrip,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          NewTripRoute.name,
          args: NewTripRouteArgs(
            key: key,
            existingTrip: existingTrip,
          ),
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const _i19.PageInfo<NewTripRouteArgs> page =
      _i19.PageInfo<NewTripRouteArgs>(name);
}

class NewTripRouteArgs {
  const NewTripRouteArgs({
    this.key,
    this.existingTrip,
  });

  final _i20.Key? key;

  final _i21.Trip? existingTrip;

  @override
  String toString() {
    return 'NewTripRouteArgs{key: $key, existingTrip: $existingTrip}';
  }
}

/// generated route for
/// [_i13.NewTripStopPage]
class NewTripStopRoute extends _i19.PageRouteInfo<NewTripStopRouteArgs> {
  NewTripStopRoute({
    _i20.Key? key,
    required String trip,
    required String dayTrip,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          NewTripStopRoute.name,
          args: NewTripStopRouteArgs(
            key: key,
            trip: trip,
            dayTrip: dayTrip,
          ),
          initialChildren: children,
        );

  static const String name = 'NewTripStopRoute';

  static const _i19.PageInfo<NewTripStopRouteArgs> page =
      _i19.PageInfo<NewTripStopRouteArgs>(name);
}

class NewTripStopRouteArgs {
  const NewTripStopRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i20.Key? key;

  final String trip;

  final String dayTrip;

  @override
  String toString() {
    return 'NewTripStopRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i14.SettingsPage]
class SettingsRoute extends _i19.PageRouteInfo<void> {
  const SettingsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i15.TripPage]
class TripRoute extends _i19.PageRouteInfo<TripRouteArgs> {
  TripRoute({
    required _i21.Trip trip,
    _i20.Key? key,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          TripRoute.name,
          args: TripRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TripRoute';

  static const _i19.PageInfo<TripRouteArgs> page =
      _i19.PageInfo<TripRouteArgs>(name);
}

class TripRouteArgs {
  const TripRouteArgs({
    required this.trip,
    this.key,
  });

  final _i21.Trip trip;

  final _i20.Key? key;

  @override
  String toString() {
    return 'TripRouteArgs{trip: $trip, key: $key}';
  }
}

/// generated route for
/// [_i16.TripStopPage]
class TripStopRoute extends _i19.PageRouteInfo<TripStopRouteArgs> {
  TripStopRoute({
    _i20.Key? key,
    required _i21.Trip trip,
    required _i22.DayTrip dayTrip,
    required _i23.TripStop tripStop,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          TripStopRoute.name,
          args: TripStopRouteArgs(
            key: key,
            trip: trip,
            dayTrip: dayTrip,
            tripStop: tripStop,
          ),
          initialChildren: children,
        );

  static const String name = 'TripStopRoute';

  static const _i19.PageInfo<TripStopRouteArgs> page =
      _i19.PageInfo<TripStopRouteArgs>(name);
}

class TripStopRouteArgs {
  const TripStopRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
    required this.tripStop,
  });

  final _i20.Key? key;

  final _i21.Trip trip;

  final _i22.DayTrip dayTrip;

  final _i23.TripStop tripStop;

  @override
  String toString() {
    return 'TripStopRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip, tripStop: $tripStop}';
  }
}

/// generated route for
/// [_i17.TripsPage]
class TripsRoute extends _i19.PageRouteInfo<void> {
  const TripsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          TripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TripsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.TutorialPage]
class TutorialRoute extends _i19.PageRouteInfo<void> {
  const TutorialRoute({List<_i19.PageRouteInfo>? children})
      : super(
          TutorialRoute.name,
          initialChildren: children,
        );

  static const String name = 'TutorialRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
