// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:trip_planner/core/home_page.dart' as _i1;
import 'package:trip_planner/features/day_trips/presentation/pages/new_day_trip_page.dart'
    as _i6;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i9;
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart'
    as _i5;
import 'package:trip_planner/features/trips/presentation/pages/trip_page.dart'
    as _i3;
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart'
    as _i4;
import 'package:trip_planner/features/user_account/presentation/pages/login_signup_page.dart'
    as _i2;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    LoginSignupRoute.name: (routeData) {
      final args = routeData.argsAs<LoginSignupRouteArgs>(
          orElse: () => const LoginSignupRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.LoginSignupPage(key: args.key),
      );
    },
    TripRoute.name: (routeData) {
      final args = routeData.argsAs<TripRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.TripPage(
          args.trip,
          key: args.key,
        ),
      );
    },
    TripsRoute.name: (routeData) {
      final args = routeData.argsAs<TripsRouteArgs>(
          orElse: () => const TripsRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.TripsPage(key: args.key),
      );
    },
    NewTripRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripRouteArgs>(
          orElse: () => const NewTripRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.NewTripPage(key: args.key),
      );
    },
    NewDayTripRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NewDayTripRouteArgs>(
          orElse: () =>
              NewDayTripRouteArgs(tripId: pathParams.getString('tripId')));
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.NewDayTripPage(
          key: args.key,
          tripId: args.tripId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginSignupPage]
class LoginSignupRoute extends _i7.PageRouteInfo<LoginSignupRouteArgs> {
  LoginSignupRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginSignupRoute.name,
          args: LoginSignupRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginSignupRoute';

  static const _i7.PageInfo<LoginSignupRouteArgs> page =
      _i7.PageInfo<LoginSignupRouteArgs>(name);
}

class LoginSignupRouteArgs {
  const LoginSignupRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginSignupRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.TripPage]
class TripRoute extends _i7.PageRouteInfo<TripRouteArgs> {
  TripRoute({
    required _i9.Trip trip,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          TripRoute.name,
          args: TripRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TripRoute';

  static const _i7.PageInfo<TripRouteArgs> page =
      _i7.PageInfo<TripRouteArgs>(name);
}

class TripRouteArgs {
  const TripRouteArgs({
    required this.trip,
    this.key,
  });

  final _i9.Trip trip;

  final _i8.Key? key;

  @override
  String toString() {
    return 'TripRouteArgs{trip: $trip, key: $key}';
  }
}

/// generated route for
/// [_i4.TripsPage]
class TripsRoute extends _i7.PageRouteInfo<TripsRouteArgs> {
  TripsRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          TripsRoute.name,
          args: TripsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TripsRoute';

  static const _i7.PageInfo<TripsRouteArgs> page =
      _i7.PageInfo<TripsRouteArgs>(name);
}

class TripsRouteArgs {
  const TripsRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'TripsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.NewTripPage]
class NewTripRoute extends _i7.PageRouteInfo<NewTripRouteArgs> {
  NewTripRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          NewTripRoute.name,
          args: NewTripRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const _i7.PageInfo<NewTripRouteArgs> page =
      _i7.PageInfo<NewTripRouteArgs>(name);
}

class NewTripRouteArgs {
  const NewTripRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'NewTripRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.NewDayTripPage]
class NewDayTripRoute extends _i7.PageRouteInfo<NewDayTripRouteArgs> {
  NewDayTripRoute({
    _i8.Key? key,
    required String tripId,
    List<_i7.PageRouteInfo>? children,
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

  static const _i7.PageInfo<NewDayTripRouteArgs> page =
      _i7.PageInfo<NewDayTripRouteArgs>(name);
}

class NewDayTripRouteArgs {
  const NewDayTripRouteArgs({
    this.key,
    required this.tripId,
  });

  final _i8.Key? key;

  final String tripId;

  @override
  String toString() {
    return 'NewDayTripRouteArgs{key: $key, tripId: $tripId}';
  }
}
