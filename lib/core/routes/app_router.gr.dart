// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:trip_planner/core/home_page.dart' as _i2;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i13;
import 'package:trip_planner/features/day_trips/presentation/pages/day_trip_page.dart'
    as _i1;
import 'package:trip_planner/features/day_trips/presentation/pages/new_day_trip_page.dart'
    as _i4;
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart'
    as _i14;
import 'package:trip_planner/features/trip_stops/presentation/pages/new_trip_stop_page.dart'
    as _i6;
import 'package:trip_planner/features/trip_stops/presentation/pages/trip_stop_page.dart'
    as _i8;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i12;
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart'
    as _i5;
import 'package:trip_planner/features/trips/presentation/pages/trip_page.dart'
    as _i7;
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart'
    as _i9;
import 'package:trip_planner/features/user_account/presentation/pages/login_signup_page.dart'
    as _i3;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    DayTripRoute.name: (routeData) {
      final args = routeData.argsAs<DayTripRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DayTripPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LoginSignupRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginSignupPage(),
      );
    },
    NewDayTripRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NewDayTripRouteArgs>(
          orElse: () =>
              NewDayTripRouteArgs(tripId: pathParams.getString('tripId')));
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.NewDayTripPage(
          key: args.key,
          tripId: args.tripId,
        ),
      );
    },
    NewTripRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewTripPage(),
      );
    },
    NewTripStopRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripStopRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.NewTripStopPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
    TripRoute.name: (routeData) {
      final args = routeData.argsAs<TripRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.TripPage(
          args.trip,
          key: args.key,
        ),
      );
    },
    TripStopRoute.name: (routeData) {
      final args = routeData.argsAs<TripStopRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.TripStopPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
          tripStop: args.tripStop,
        ),
      );
    },
    TripsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TripsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DayTripPage]
class DayTripRoute extends _i10.PageRouteInfo<DayTripRouteArgs> {
  DayTripRoute({
    _i11.Key? key,
    required _i12.Trip trip,
    required _i13.DayTrip dayTrip,
    List<_i10.PageRouteInfo>? children,
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

  static const _i10.PageInfo<DayTripRouteArgs> page =
      _i10.PageInfo<DayTripRouteArgs>(name);
}

class DayTripRouteArgs {
  const DayTripRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i11.Key? key;

  final _i12.Trip trip;

  final _i13.DayTrip dayTrip;

  @override
  String toString() {
    return 'DayTripRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginSignupPage]
class LoginSignupRoute extends _i10.PageRouteInfo<void> {
  const LoginSignupRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginSignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginSignupRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NewDayTripPage]
class NewDayTripRoute extends _i10.PageRouteInfo<NewDayTripRouteArgs> {
  NewDayTripRoute({
    _i11.Key? key,
    required String tripId,
    List<_i10.PageRouteInfo>? children,
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

  static const _i10.PageInfo<NewDayTripRouteArgs> page =
      _i10.PageInfo<NewDayTripRouteArgs>(name);
}

class NewDayTripRouteArgs {
  const NewDayTripRouteArgs({
    this.key,
    required this.tripId,
  });

  final _i11.Key? key;

  final String tripId;

  @override
  String toString() {
    return 'NewDayTripRouteArgs{key: $key, tripId: $tripId}';
  }
}

/// generated route for
/// [_i5.NewTripPage]
class NewTripRoute extends _i10.PageRouteInfo<void> {
  const NewTripRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NewTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NewTripStopPage]
class NewTripStopRoute extends _i10.PageRouteInfo<NewTripStopRouteArgs> {
  NewTripStopRoute({
    _i11.Key? key,
    required String trip,
    required String dayTrip,
    List<_i10.PageRouteInfo>? children,
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

  static const _i10.PageInfo<NewTripStopRouteArgs> page =
      _i10.PageInfo<NewTripStopRouteArgs>(name);
}

class NewTripStopRouteArgs {
  const NewTripStopRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i11.Key? key;

  final String trip;

  final String dayTrip;

  @override
  String toString() {
    return 'NewTripStopRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}

/// generated route for
/// [_i7.TripPage]
class TripRoute extends _i10.PageRouteInfo<TripRouteArgs> {
  TripRoute({
    required _i12.Trip trip,
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          TripRoute.name,
          args: TripRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TripRoute';

  static const _i10.PageInfo<TripRouteArgs> page =
      _i10.PageInfo<TripRouteArgs>(name);
}

class TripRouteArgs {
  const TripRouteArgs({
    required this.trip,
    this.key,
  });

  final _i12.Trip trip;

  final _i11.Key? key;

  @override
  String toString() {
    return 'TripRouteArgs{trip: $trip, key: $key}';
  }
}

/// generated route for
/// [_i8.TripStopPage]
class TripStopRoute extends _i10.PageRouteInfo<TripStopRouteArgs> {
  TripStopRoute({
    _i11.Key? key,
    required _i12.Trip trip,
    required _i13.DayTrip dayTrip,
    required _i14.TripStop tripStop,
    List<_i10.PageRouteInfo>? children,
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

  static const _i10.PageInfo<TripStopRouteArgs> page =
      _i10.PageInfo<TripStopRouteArgs>(name);
}

class TripStopRouteArgs {
  const TripStopRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
    required this.tripStop,
  });

  final _i11.Key? key;

  final _i12.Trip trip;

  final _i13.DayTrip dayTrip;

  final _i14.TripStop tripStop;

  @override
  String toString() {
    return 'TripStopRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip, tripStop: $tripStop}';
  }
}

/// generated route for
/// [_i9.TripsPage]
class TripsRoute extends _i10.PageRouteInfo<void> {
  const TripsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          TripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TripsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
