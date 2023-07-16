import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/di/di.dart';

import '../features/user_account/presentation/cubit/user/user_cubit.dart';
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
            loggedOut: (_) => router.replaceAll([LoginSignupRoute()]),
            loggedIn: (_) => router.replaceAll([TripsRoute()]),
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
        ),
      ),
    );
  }
}
