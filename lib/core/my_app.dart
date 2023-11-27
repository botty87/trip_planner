import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../features/user_account/presentation/cubit/user/user_cubit.dart';
import 'di/di.dart';
import 'routes/app_router.dart';
import 'routes/app_router.gr.dart';

class MyApp extends StatelessWidget {
  final ThemeData theme;

  const MyApp({super.key, required this.theme});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>.value(
      value: getIt(),
      child: BlocListener<UserCubit, UserState>(
        listenWhen: (previous, current) {
          //Avoid to change route if user is already logged in
          if (previous is UserStateLoggedIn && current is UserStateLoggedIn) {
            return false;
          }
          return true;
        },
        listener: (context, state) {
          final router = getIt<AppRouter>();
          state.mapOrNull(
            loggedOut: (_) => router.replaceAll([const LoginSignupRoute()]),
            loggedIn: (_) => router.replaceAll([const TripsRoute()]),
            error: (_) => throw UnimplementedError(),
          );
        },
        child: MaterialApp.router(
          title: 'Trip Planner',
          theme: theme,
          routerConfig: getIt<AppRouter>().config(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          scrollBehavior: const MaterialScrollBehavior().copyWith(scrollbars: false),
          builder: (context, child) => ResponsiveBreakpoints.builder(
            child: Builder(
              builder: (context) {
                return ResponsiveScaledBox(
                  width: ResponsiveValue<double>(
                    context,
                    conditionalValues: [
                      Condition.equals(name: MOBILE, value: 450),
                      Condition.between(start: 800, end: 1100, value: 800),
                      Condition.between(start: 1000, end: 1200, value: 700),
                    ],
                  ).value,
                  child: child!,
                );
              },
            ),
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),
        ),
      ),
    );
  }
}
