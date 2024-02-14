import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../features/settings/presentation/cubit/settings_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>.value(
          value: getIt(),
        ),
        BlocProvider<SettingsCubit>.value(
          value: getIt(),
        ),
      ],
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
          FlutterNativeSplash.remove();
          state.whenOrNull(
            loggedOut: () => router.replaceAll([const LoginSignupRoute()]),
            loggedIn: (user) {
              if (user.oldTripsImported) {
                return router.replaceAll([const TripsRoute()]);
              } else {
                return router.replaceAll([ImportOldTripsRoute(user: user)]);
              }
            },
            error: () => throw UnimplementedError(),
          );
        },
        child: Builder(
          builder: (context) {
            return DynamicColorBuilder(
              builder: (lightColorScheme, darkColorScheme) {
                return AdaptiveTheme(
                  light: ThemeData.light().copyWith(
                    colorScheme: lightColorScheme,
                  ),
                  dark: ThemeData.dark().copyWith(
                    colorScheme: darkColorScheme,
                  ),
                  initial: context.read<SettingsCubit>().state.settings.themeMode,
                  debugShowFloatingThemeButton: true,
                  builder: (theme, darkTheme) {
                    return MaterialApp.router(
                      title: 'Trip Planner',
                      //theme: theme,
                      theme: theme,
                      darkTheme: darkTheme,
                      debugShowCheckedModeBanner: false,
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
                                  Condition.equals(name: MOBILE, value: 400),
                                  Condition.equals(name: TABLET, value: 800),
                                  Condition.equals(name: DESKTOP, value: 1200),
                                  Condition.equals(name: '4K', value: 2000),
                                ],
                              ).value,
                              child: child!,
                            );
                          },
                        ),
                        breakpoints: const [
                          Breakpoint(start: 0, end: 450, name: MOBILE),
                          Breakpoint(start: 451, end: 1000, name: TABLET),
                          Breakpoint(start: 1001, end: 1920, name: DESKTOP),
                          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          }
        ),
      ),
    );
  }
}
