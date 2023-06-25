// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:trip_planner/core/home_page.dart' as _i1;
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart'
    as _i4;
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart'
    as _i3;
import 'package:trip_planner/features/user_account/presentation/pages/login_signup_page.dart'
    as _i2;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    LoginSignupRoute.name: (routeData) {
      final args = routeData.argsAs<LoginSignupRouteArgs>(
          orElse: () => const LoginSignupRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.LoginSignupPage(key: args.key),
      );
    },
    TripsRoute.name: (routeData) {
      final args = routeData.argsAs<TripsRouteArgs>(
          orElse: () => const TripsRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.TripsPage(key: args.key),
      );
    },
    NewTripRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripRouteArgs>(
          orElse: () => const NewTripRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.NewTripPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginSignupPage]
class LoginSignupRoute extends _i5.PageRouteInfo<LoginSignupRouteArgs> {
  LoginSignupRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          LoginSignupRoute.name,
          args: LoginSignupRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginSignupRoute';

  static const _i5.PageInfo<LoginSignupRouteArgs> page =
      _i5.PageInfo<LoginSignupRouteArgs>(name);
}

class LoginSignupRouteArgs {
  const LoginSignupRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginSignupRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.TripsPage]
class TripsRoute extends _i5.PageRouteInfo<TripsRouteArgs> {
  TripsRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          TripsRoute.name,
          args: TripsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TripsRoute';

  static const _i5.PageInfo<TripsRouteArgs> page =
      _i5.PageInfo<TripsRouteArgs>(name);
}

class TripsRouteArgs {
  const TripsRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'TripsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.NewTripPage]
class NewTripRoute extends _i5.PageRouteInfo<NewTripRouteArgs> {
  NewTripRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          NewTripRoute.name,
          args: NewTripRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const _i5.PageInfo<NewTripRouteArgs> page =
      _i5.PageInfo<NewTripRouteArgs>(name);
}

class NewTripRouteArgs {
  const NewTripRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'NewTripRouteArgs{key: $key}';
  }
}
