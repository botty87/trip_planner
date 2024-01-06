// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/foundation.dart' as _i16;
import 'package:flutter/material.dart' as _i19;
import 'package:trip_planner/core/home_page.dart' as _i4;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i18;
import 'package:trip_planner/features/day_trips/presentation/pages/day_trip_page.dart'
    as _i2;
import 'package:trip_planner/features/day_trips/presentation/pages/new_day_trip_page.dart'
    as _i8;
import 'package:trip_planner/features/discover_new_trips/presentation/pages/discover_new_trips_page.dart'
    as _i3;
import 'package:trip_planner/features/import_old_trips/presentation/pages/import_old_trips_page.dart'
    as _i5;
import 'package:trip_planner/features/info_contacts/presentation/pages/info_contacts_page.dart'
    as _i6;
import 'package:trip_planner/features/settings/presentation/pages/settings_page.dart'
    as _i11;
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart'
    as _i21;
import 'package:trip_planner/features/trip_stops/presentation/pages/new_trip_stop_page.dart'
    as _i10;
import 'package:trip_planner/features/trip_stops/presentation/pages/trip_stop_page.dart'
    as _i13;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i17;
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart'
    as _i9;
import 'package:trip_planner/features/trips/presentation/pages/trip_page.dart'
    as _i12;
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart'
    as _i14;
import 'package:trip_planner/features/user_account/domain/entities/user.dart'
    as _i20;
import 'package:trip_planner/features/user_account/presentation/pages/account_page.dart'
    as _i1;
import 'package:trip_planner/features/user_account/presentation/pages/login_signup_page.dart'
    as _i7;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    DayTripRoute.name: (routeData) {
      final args = routeData.argsAs<DayTripRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DayTripPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    DiscoverNewTripsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DiscoverNewTripsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    ImportOldTripsRoute.name: (routeData) {
      final args = routeData.argsAs<ImportOldTripsRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ImportOldTripsPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    InfoContactsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.InfoContactsPage(),
      );
    },
    LoginSignupRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginSignupPage(),
      );
    },
    NewDayTripRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NewDayTripRouteArgs>(
          orElse: () =>
              NewDayTripRouteArgs(tripId: pathParams.getString('tripId')));
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NewDayTripPage(
          key: args.key,
          tripId: args.tripId,
        ),
      );
    },
    NewTripRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NewTripPage(),
      );
    },
    NewTripStopRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripStopRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.NewTripStopPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SettingsPage(),
      );
    },
    TripRoute.name: (routeData) {
      final args = routeData.argsAs<TripRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.TripPage(
          args.trip,
          key: args.key,
        ),
      );
    },
    TripStopRoute.name: (routeData) {
      final args = routeData.argsAs<TripStopRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.TripStopPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
          tripStop: args.tripStop,
        ),
      );
    },
    TripsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.TripsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i15.PageRouteInfo<void> {
  const AccountRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DayTripPage]
class DayTripRoute extends _i15.PageRouteInfo<DayTripRouteArgs> {
  DayTripRoute({
    _i16.Key? key,
    required _i17.Trip trip,
    required _i18.DayTrip dayTrip,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<DayTripRouteArgs> page =
      _i15.PageInfo<DayTripRouteArgs>(name);
}

class DayTripRouteArgs {
  const DayTripRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i16.Key? key;

  final _i17.Trip trip;

  final _i18.DayTrip dayTrip;

  @override
  String toString() {
    return 'DayTripRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i3.DiscoverNewTripsPage]
class DiscoverNewTripsRoute extends _i15.PageRouteInfo<void> {
  const DiscoverNewTripsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          DiscoverNewTripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverNewTripsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ImportOldTripsPage]
class ImportOldTripsRoute extends _i15.PageRouteInfo<ImportOldTripsRouteArgs> {
  ImportOldTripsRoute({
    _i19.Key? key,
    required _i20.User user,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ImportOldTripsRoute.name,
          args: ImportOldTripsRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ImportOldTripsRoute';

  static const _i15.PageInfo<ImportOldTripsRouteArgs> page =
      _i15.PageInfo<ImportOldTripsRouteArgs>(name);
}

class ImportOldTripsRouteArgs {
  const ImportOldTripsRouteArgs({
    this.key,
    required this.user,
  });

  final _i19.Key? key;

  final _i20.User user;

  @override
  String toString() {
    return 'ImportOldTripsRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i6.InfoContactsPage]
class InfoContactsRoute extends _i15.PageRouteInfo<void> {
  const InfoContactsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          InfoContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoContactsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginSignupPage]
class LoginSignupRoute extends _i15.PageRouteInfo<void> {
  const LoginSignupRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginSignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginSignupRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NewDayTripPage]
class NewDayTripRoute extends _i15.PageRouteInfo<NewDayTripRouteArgs> {
  NewDayTripRoute({
    _i19.Key? key,
    required String tripId,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<NewDayTripRouteArgs> page =
      _i15.PageInfo<NewDayTripRouteArgs>(name);
}

class NewDayTripRouteArgs {
  const NewDayTripRouteArgs({
    this.key,
    required this.tripId,
  });

  final _i19.Key? key;

  final String tripId;

  @override
  String toString() {
    return 'NewDayTripRouteArgs{key: $key, tripId: $tripId}';
  }
}

/// generated route for
/// [_i9.NewTripPage]
class NewTripRoute extends _i15.PageRouteInfo<void> {
  const NewTripRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NewTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.NewTripStopPage]
class NewTripStopRoute extends _i15.PageRouteInfo<NewTripStopRouteArgs> {
  NewTripStopRoute({
    _i19.Key? key,
    required String trip,
    required String dayTrip,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<NewTripStopRouteArgs> page =
      _i15.PageInfo<NewTripStopRouteArgs>(name);
}

class NewTripStopRouteArgs {
  const NewTripStopRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i19.Key? key;

  final String trip;

  final String dayTrip;

  @override
  String toString() {
    return 'NewTripStopRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i11.SettingsPage]
class SettingsRoute extends _i15.PageRouteInfo<void> {
  const SettingsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.TripPage]
class TripRoute extends _i15.PageRouteInfo<TripRouteArgs> {
  TripRoute({
    required _i17.Trip trip,
    _i19.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          TripRoute.name,
          args: TripRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TripRoute';

  static const _i15.PageInfo<TripRouteArgs> page =
      _i15.PageInfo<TripRouteArgs>(name);
}

class TripRouteArgs {
  const TripRouteArgs({
    required this.trip,
    this.key,
  });

  final _i17.Trip trip;

  final _i19.Key? key;

  @override
  String toString() {
    return 'TripRouteArgs{trip: $trip, key: $key}';
  }
}

/// generated route for
/// [_i13.TripStopPage]
class TripStopRoute extends _i15.PageRouteInfo<TripStopRouteArgs> {
  TripStopRoute({
    _i16.Key? key,
    required _i17.Trip trip,
    required _i18.DayTrip dayTrip,
    required _i21.TripStop tripStop,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<TripStopRouteArgs> page =
      _i15.PageInfo<TripStopRouteArgs>(name);
}

class TripStopRouteArgs {
  const TripStopRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
    required this.tripStop,
  });

  final _i16.Key? key;

  final _i17.Trip trip;

  final _i18.DayTrip dayTrip;

  final _i21.TripStop tripStop;

  @override
  String toString() {
    return 'TripStopRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip, tripStop: $tripStop}';
  }
}

/// generated route for
/// [_i14.TripsPage]
class TripsRoute extends _i15.PageRouteInfo<void> {
  const TripsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          TripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TripsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
