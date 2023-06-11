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
import 'package:trip_planner/features/trips/presentation/cubit/new_trip_cubit.dart'
    as _i8;
import 'package:trip_planner/features/trips/presentation/pages/new_trip_page.dart'
    as _i4;
import 'package:trip_planner/features/trips/presentation/pages/trips_page.dart'
    as _i3;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i7;
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
        child: _i2.LoginSignupPage(
          key: args.key,
          cubit: args.cubit,
        ),
      );
    },
    TripsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.TripsPage(),
      );
    },
    NewTripRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripRouteArgs>(
          orElse: () => const NewTripRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.NewTripPage(
          cubit: args.cubit,
          key: args.key,
        ),
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
    _i7.LoginSignupCubit? cubit,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          LoginSignupRoute.name,
          args: LoginSignupRouteArgs(
            key: key,
            cubit: cubit,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginSignupRoute';

  static const _i5.PageInfo<LoginSignupRouteArgs> page =
      _i5.PageInfo<LoginSignupRouteArgs>(name);
}

class LoginSignupRouteArgs {
  const LoginSignupRouteArgs({
    this.key,
    this.cubit,
  });

  final _i6.Key? key;

  final _i7.LoginSignupCubit? cubit;

  @override
  String toString() {
    return 'LoginSignupRouteArgs{key: $key, cubit: $cubit}';
  }
}

/// generated route for
/// [_i3.TripsPage]
class TripsRoute extends _i5.PageRouteInfo<void> {
  const TripsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          TripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TripsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NewTripPage]
class NewTripRoute extends _i5.PageRouteInfo<NewTripRouteArgs> {
  NewTripRoute({
    _i8.NewTripCubit? cubit,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          NewTripRoute.name,
          args: NewTripRouteArgs(
            cubit: cubit,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const _i5.PageInfo<NewTripRouteArgs> page =
      _i5.PageInfo<NewTripRouteArgs>(name);
}

class NewTripRouteArgs {
  const NewTripRouteArgs({
    this.cubit,
    this.key,
  });

  final _i8.NewTripCubit? cubit;

  final _i6.Key? key;

  @override
  String toString() {
    return 'NewTripRouteArgs{cubit: $cubit, key: $key}';
  }
}
