// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:trip_planner/core/home_page.dart' as _i1;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i11;
import 'package:trip_planner/features/day_trips/presentation/pages/day_trip_page.dart'
    as _i7;
import 'package:trip_planner/features/day_trips/presentation/pages/new_day_trip_page.dart'
    as _i2;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i10;
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart'
    as _i6;
import 'package:trip_planner/features/trips/presentation/pages/trip_page.dart'
    as _i4;
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart'
    as _i5;
import 'package:trip_planner/features/user_account/presentation/pages/login_signup_page.dart'
    as _i3;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    NewDayTripRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NewDayTripRouteArgs>(
          orElse: () =>
              NewDayTripRouteArgs(tripId: pathParams.getString('tripId')));
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.NewDayTripPage(
          key: args.key,
          tripId: args.tripId,
        ),
      );
    },
    LoginSignupRoute.name: (routeData) {
      final args = routeData.argsAs<LoginSignupRouteArgs>(
          orElse: () => const LoginSignupRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginSignupPage(key: args.key),
      );
    },
    TripRoute.name: (routeData) {
      final args = routeData.argsAs<TripRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.TripPage(
          args.trip,
          key: args.key,
        ),
      );
    },
    TripsRoute.name: (routeData) {
      final args = routeData.argsAs<TripsRouteArgs>(
          orElse: () => const TripsRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.TripsPage(key: args.key),
      );
    },
    NewTripRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.NewTripPage(),
      );
    },
    DayTripRoute.name: (routeData) {
      final args = routeData.argsAs<DayTripRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DayTripPage(
          key: args.key,
          trip: args.trip,
          dayTrip: args.dayTrip,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewDayTripPage]
class NewDayTripRoute extends _i8.PageRouteInfo<NewDayTripRouteArgs> {
  NewDayTripRoute({
    _i9.Key? key,
    required String tripId,
    List<_i8.PageRouteInfo>? children,
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

  static const _i8.PageInfo<NewDayTripRouteArgs> page =
      _i8.PageInfo<NewDayTripRouteArgs>(name);
}

class NewDayTripRouteArgs {
  const NewDayTripRouteArgs({
    this.key,
    required this.tripId,
  });

  final _i9.Key? key;

  final String tripId;

  @override
  String toString() {
    return 'NewDayTripRouteArgs{key: $key, tripId: $tripId}';
  }
}

/// generated route for
/// [_i3.LoginSignupPage]
class LoginSignupRoute extends _i8.PageRouteInfo<LoginSignupRouteArgs> {
  LoginSignupRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LoginSignupRoute.name,
          args: LoginSignupRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginSignupRoute';

  static const _i8.PageInfo<LoginSignupRouteArgs> page =
      _i8.PageInfo<LoginSignupRouteArgs>(name);
}

class LoginSignupRouteArgs {
  const LoginSignupRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginSignupRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.TripPage]
class TripRoute extends _i8.PageRouteInfo<TripRouteArgs> {
  TripRoute({
    required _i10.Trip trip,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          TripRoute.name,
          args: TripRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TripRoute';

  static const _i8.PageInfo<TripRouteArgs> page =
      _i8.PageInfo<TripRouteArgs>(name);
}

class TripRouteArgs {
  const TripRouteArgs({
    required this.trip,
    this.key,
  });

  final _i10.Trip trip;

  final _i9.Key? key;

  @override
  String toString() {
    return 'TripRouteArgs{trip: $trip, key: $key}';
  }
}

/// generated route for
/// [_i5.TripsPage]
class TripsRoute extends _i8.PageRouteInfo<TripsRouteArgs> {
  TripsRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          TripsRoute.name,
          args: TripsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TripsRoute';

  static const _i8.PageInfo<TripsRouteArgs> page =
      _i8.PageInfo<TripsRouteArgs>(name);
}

class TripsRouteArgs {
  const TripsRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'TripsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.NewTripPage]
class NewTripRoute extends _i8.PageRouteInfo<void> {
  const NewTripRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NewTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.DayTripPage]
class DayTripRoute extends _i8.PageRouteInfo<DayTripRouteArgs> {
  DayTripRoute({
    _i9.Key? key,
    required _i10.Trip trip,
    required _i11.DayTrip dayTrip,
    List<_i8.PageRouteInfo>? children,
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

  static const _i8.PageInfo<DayTripRouteArgs> page =
      _i8.PageInfo<DayTripRouteArgs>(name);
}

class DayTripRouteArgs {
  const DayTripRouteArgs({
    this.key,
    required this.trip,
    required this.dayTrip,
  });

  final _i9.Key? key;

  final _i10.Trip trip;

  final _i11.DayTrip dayTrip;

  @override
  String toString() {
    return 'DayTripRouteArgs{key: $key, trip: $trip, dayTrip: $dayTrip}';
  }
}
