// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/foundation.dart' as _i18;
import 'package:flutter/material.dart' as _i21;
import 'package:trip_planner/core/home_page.dart' as _i6;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i20;
import 'package:trip_planner/features/day_trips/presentation/pages/day_trip_page.dart'
    as _i2;
import 'package:trip_planner/features/day_trips/presentation/pages/new_day_trip_page.dart'
    as _i10;
import 'package:trip_planner/features/discover_new_trips/presentation/pages/discover_new_daily_trips_page.dart'
    as _i3;
import 'package:trip_planner/features/discover_new_trips/presentation/pages/discover_new_trip_stops_page.dart'
    as _i4;
import 'package:trip_planner/features/discover_new_trips/presentation/pages/discover_new_trips_page.dart'
    as _i5;
import 'package:trip_planner/features/import_old_trips/presentation/pages/import_old_trips_page.dart'
    as _i7;
import 'package:trip_planner/features/info_contacts/presentation/pages/info_contacts_page.dart'
    as _i8;
import 'package:trip_planner/features/settings/presentation/pages/settings_page.dart'
    as _i13;
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart'
    as _i23;
import 'package:trip_planner/features/trip_stops/presentation/pages/new_trip_stop_page.dart'
    as _i12;
import 'package:trip_planner/features/trip_stops/presentation/pages/trip_stop_page.dart'
    as _i15;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i19;
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart'
    as _i11;
import 'package:trip_planner/features/trips/presentation/pages/trip_page.dart'
    as _i14;
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart'
    as _i16;
import 'package:trip_planner/features/user_account/domain/entities/user.dart'
    as _i22;
import 'package:trip_planner/features/user_account/presentation/pages/account_page.dart'
    as _i1;
import 'package:trip_planner/features/user_account/presentation/pages/login_signup_page.dart'
    as _i9;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    DayTripRoute.name: (routeData) {
      final args = routeData.argsAs<DayTripRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
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
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DiscoverNewDailyTripsPage(
          key: args.key,
          trip: args.trip,
        ),
      );
    },
    DiscoverNewTripStopsRoute.name: (routeData) {
      final args = routeData.argsAs<DiscoverNewTripStopsRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DiscoverNewTripStopsPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    DiscoverNewTripsRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DiscoverNewTripsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    ImportOldTripsRoute.name: (routeData) {
      final args = routeData.argsAs<ImportOldTripsRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ImportOldTripsPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    InfoContactsRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.InfoContactsPage(),
      );
    },
    LoginSignupRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginSignupPage(),
      );
    },
    NewDayTripRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NewDayTripRouteArgs>(
          orElse: () =>
              NewDayTripRouteArgs(tripId: pathParams.getString('tripId')));
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.NewDayTripPage(
          key: args.key,
          tripId: args.tripId,
        ),
      );
    },
    NewTripRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.NewTripPage(),
      );
    },
    NewTripStopRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripStopRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.NewTripStopPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SettingsPage(),
      );
    },
    TripRoute.name: (routeData) {
      final args = routeData.argsAs<TripRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.TripPage(
          args.trip,
          key: args.key,
        ),
      );
    },
    TripStopRoute.name: (routeData) {
      final args = routeData.argsAs<TripStopRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.TripStopPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
          tripStop: args.tripStop,
        ),
      );
    },
    TripsRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.TripsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i17.PageRouteInfo<void> {
  const AccountRoute({List<_i17.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DayTripPage]
class DayTripRoute extends _i17.PageRouteInfo<DayTripRouteArgs> {
  DayTripRoute({
    _i18.Key? key,
    required _i19.Trip trip,
    required _i20.DayTrip dayTrip,
    List<_i17.PageRouteInfo>? children,
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

  static const _i17.PageInfo<DayTripRouteArgs> page =
      _i17.PageInfo<DayTripRouteArgs>(name);
}

class DayTripRouteArgs {
  const DayTripRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i18.Key? key;

  final _i19.Trip trip;

  final _i20.DayTrip dayTrip;

  @override
  String toString() {
    return 'DayTripRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i3.DiscoverNewDailyTripsPage]
class DiscoverNewDailyTripsRoute
    extends _i17.PageRouteInfo<DiscoverNewDailyTripsRouteArgs> {
  DiscoverNewDailyTripsRoute({
    _i21.Key? key,
    required _i19.Trip trip,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          DiscoverNewDailyTripsRoute.name,
          args: DiscoverNewDailyTripsRouteArgs(
            key: key,
            trip: trip,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscoverNewDailyTripsRoute';

  static const _i17.PageInfo<DiscoverNewDailyTripsRouteArgs> page =
      _i17.PageInfo<DiscoverNewDailyTripsRouteArgs>(name);
}

class DiscoverNewDailyTripsRouteArgs {
  const DiscoverNewDailyTripsRouteArgs({
    this.key,
    required this.trip,
  });

  final _i21.Key? key;

  final _i19.Trip trip;

  @override
  String toString() {
    return 'DiscoverNewDailyTripsRouteArgs{key: $key, trip: $trip}';
  }
}

/// generated route for
/// [_i4.DiscoverNewTripStopsPage]
class DiscoverNewTripStopsRoute
    extends _i17.PageRouteInfo<DiscoverNewTripStopsRouteArgs> {
  DiscoverNewTripStopsRoute({
    _i18.Key? key,
    required _i19.Trip trip,
    required _i20.DayTrip dayTrip,
    List<_i17.PageRouteInfo>? children,
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

  static const _i17.PageInfo<DiscoverNewTripStopsRouteArgs> page =
      _i17.PageInfo<DiscoverNewTripStopsRouteArgs>(name);
}

class DiscoverNewTripStopsRouteArgs {
  const DiscoverNewTripStopsRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i18.Key? key;

  final _i19.Trip trip;

  final _i20.DayTrip dayTrip;

  @override
  String toString() {
    return 'DiscoverNewTripStopsRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i5.DiscoverNewTripsPage]
class DiscoverNewTripsRoute extends _i17.PageRouteInfo<void> {
  const DiscoverNewTripsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          DiscoverNewTripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverNewTripsRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ImportOldTripsPage]
class ImportOldTripsRoute extends _i17.PageRouteInfo<ImportOldTripsRouteArgs> {
  ImportOldTripsRoute({
    _i21.Key? key,
    required _i22.User user,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          ImportOldTripsRoute.name,
          args: ImportOldTripsRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ImportOldTripsRoute';

  static const _i17.PageInfo<ImportOldTripsRouteArgs> page =
      _i17.PageInfo<ImportOldTripsRouteArgs>(name);
}

class ImportOldTripsRouteArgs {
  const ImportOldTripsRouteArgs({
    this.key,
    required this.user,
  });

  final _i21.Key? key;

  final _i22.User user;

  @override
  String toString() {
    return 'ImportOldTripsRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i8.InfoContactsPage]
class InfoContactsRoute extends _i17.PageRouteInfo<void> {
  const InfoContactsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          InfoContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoContactsRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginSignupPage]
class LoginSignupRoute extends _i17.PageRouteInfo<void> {
  const LoginSignupRoute({List<_i17.PageRouteInfo>? children})
      : super(
          LoginSignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginSignupRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i10.NewDayTripPage]
class NewDayTripRoute extends _i17.PageRouteInfo<NewDayTripRouteArgs> {
  NewDayTripRoute({
    _i21.Key? key,
    required String tripId,
    List<_i17.PageRouteInfo>? children,
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

  static const _i17.PageInfo<NewDayTripRouteArgs> page =
      _i17.PageInfo<NewDayTripRouteArgs>(name);
}

class NewDayTripRouteArgs {
  const NewDayTripRouteArgs({
    this.key,
    required this.tripId,
  });

  final _i21.Key? key;

  final String tripId;

  @override
  String toString() {
    return 'NewDayTripRouteArgs{key: $key, tripId: $tripId}';
  }
}

/// generated route for
/// [_i11.NewTripPage]
class NewTripRoute extends _i17.PageRouteInfo<void> {
  const NewTripRoute({List<_i17.PageRouteInfo>? children})
      : super(
          NewTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.NewTripStopPage]
class NewTripStopRoute extends _i17.PageRouteInfo<NewTripStopRouteArgs> {
  NewTripStopRoute({
    _i21.Key? key,
    required String trip,
    required String dayTrip,
    List<_i17.PageRouteInfo>? children,
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

  static const _i17.PageInfo<NewTripStopRouteArgs> page =
      _i17.PageInfo<NewTripStopRouteArgs>(name);
}

class NewTripStopRouteArgs {
  const NewTripStopRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i21.Key? key;

  final String trip;

  final String dayTrip;

  @override
  String toString() {
    return 'NewTripStopRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i13.SettingsPage]
class SettingsRoute extends _i17.PageRouteInfo<void> {
  const SettingsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i14.TripPage]
class TripRoute extends _i17.PageRouteInfo<TripRouteArgs> {
  TripRoute({
    required _i19.Trip trip,
    _i21.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          TripRoute.name,
          args: TripRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TripRoute';

  static const _i17.PageInfo<TripRouteArgs> page =
      _i17.PageInfo<TripRouteArgs>(name);
}

class TripRouteArgs {
  const TripRouteArgs({
    required this.trip,
    this.key,
  });

  final _i19.Trip trip;

  final _i21.Key? key;

  @override
  String toString() {
    return 'TripRouteArgs{trip: $trip, key: $key}';
  }
}

/// generated route for
/// [_i15.TripStopPage]
class TripStopRoute extends _i17.PageRouteInfo<TripStopRouteArgs> {
  TripStopRoute({
    _i18.Key? key,
    required _i19.Trip trip,
    required _i20.DayTrip dayTrip,
    required _i23.TripStop tripStop,
    List<_i17.PageRouteInfo>? children,
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

  static const _i17.PageInfo<TripStopRouteArgs> page =
      _i17.PageInfo<TripStopRouteArgs>(name);
}

class TripStopRouteArgs {
  const TripStopRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
    required this.tripStop,
  });

  final _i18.Key? key;

  final _i19.Trip trip;

  final _i20.DayTrip dayTrip;

  final _i23.TripStop tripStop;

  @override
  String toString() {
    return 'TripStopRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip, tripStop: $tripStop}';
  }
}

/// generated route for
/// [_i16.TripsPage]
class TripsRoute extends _i17.PageRouteInfo<void> {
  const TripsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          TripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TripsRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}
