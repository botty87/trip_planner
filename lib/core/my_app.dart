import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../features/settings/domain/entities/backgrounds_container.dart';
import '../features/settings/presentation/cubit/settings_cubit.dart';
import '../features/tutorials/presentation/cubit/tutorial_cubit.dart';
import '../ui/cubit/backgrounds_cubit.dart';
import '../ui/widgets/background/background_image_wrapper.dart';
import '../features/user_account/presentation/cubit/user/user_cubit.dart';
import 'di/di.dart';
import 'routes/app_router.dart';
import 'routes/app_router.gr.dart';
import 'utilities/extensions.dart';
import 'utilities/pair.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
          create: (context) => getIt(),
        ),
        BlocProvider<TutorialCubit>(
          create: (context) => getIt(),
        ),
        BlocProvider<SettingsCubit>(
          create: (context) => getIt(),
        ),
        BlocProvider<BackgroundsCubit>(
          create: (context) => getIt(),
        ),
      ],
      child: Builder(builder: (context) {
        return DynamicColorBuilder(
          builder: (lightColorScheme, darkColorScheme) {
            return AdaptiveTheme(
              light: ThemeData.light().copyWith(colorScheme: lightColorScheme),
              dark: ThemeData.dark().copyWith(colorScheme: darkColorScheme),
              initial: context.read<SettingsCubit>().state.settings.themeMode,
              debugShowFloatingThemeButton: false,
              builder: (theme, darkTheme) {
                return MaterialApp.router(
                  title: 'Trip Planner',
                  theme: theme,
                  darkTheme: darkTheme,
                  debugShowCheckedModeBanner: false,
                  routerConfig: getIt<AppRouter>().config(),
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  scrollBehavior: const MaterialScrollBehavior().copyWith(scrollbars: false),
                  builder: (context, child) => MultiBlocListener(
                    listeners: [
                      _userStatusListener(),
                      _settingsListener(),
                      _tutorialsListener(),
                      _backgroundImageListener(context)
                    ],
                    child: BackgroundImageWrapper(child: child!),
                  ),
                );
              },
            );
          },
        );
      }),
    );
  }

  BlocListener _userStatusListener() {
    return BlocListener<UserCubit, UserState>(
      listenWhen: (previous, current) {
        //Avoid to change route if user is already logged in
        if (previous is UserStateLoggedIn && current is UserStateLoggedIn) {
          return false;
        }
        return true;
      },
      listener: (context, state) {
        final router = getIt<AppRouter>();
        if (!kIsWeb) {
          FlutterNativeSplash.remove();
        }
        state.whenOrNull(
          loggedOut: () {
            AdaptiveTheme.of(context).setSystem();
            return router.replaceAll([const LoginSignupRoute()]);
          },
          loggedIn: (user) {
            //Set the user theme
            AdaptiveTheme.of(context).setThemeMode(user.settings.themeMode);

            if (user.oldTripsImported) {
              if (user.tutorialsData.showWelcome) {
                return router.replaceAll([const TutorialRoute()]);
              } else {
                return router.replaceAll([const TripsRoute()]);
              }
            } else {
              return router.replaceAll([ImportOldTripsRoute(user: user)]);
            }
          },
          error: () => throw UnimplementedError(),
        );
      },
    );
  }

  BlocListener _settingsListener() {
    return BlocListener<UserCubit, UserState>(
      listenWhen: (previous, current) {
        final previousSettings = switch (previous) {
          final UserStateLoggedIn loggedInState => loggedInState.user.settings,
          _ => null,
        };
        final currentSettings = switch (current) {
          final UserStateLoggedIn loggedInState => loggedInState.user.settings,
          _ => null,
        };
        return previousSettings != currentSettings;
      },
      listener: (context, state) {
        final settings = switch (state) {
          final UserStateLoggedIn loggedInState => loggedInState.user.settings,
          _ => null,
        };
        context.read<SettingsCubit>().updateSettingsFromUser(settings);
      },
    );
  }

  BlocListener _tutorialsListener() {
    return BlocListener<UserCubit, UserState>(
      listenWhen: (previous, current) {
        final previousTutorialsData = switch (previous) {
          final UserStateLoggedIn loggedInState => loggedInState.user.tutorialsData,
          _ => null,
        };
        final currentTutorialsData = switch (current) {
          final UserStateLoggedIn loggedInState => loggedInState.user.tutorialsData,
          _ => null,
        };
        return previousTutorialsData != currentTutorialsData;
      },
      listener: (context, state) {
        final tutorialsData = switch (state) {
          final UserStateLoggedIn loggedInState => loggedInState.user.tutorialsData,
          _ => null,
        };
        context.read<TutorialCubit>().updateTutorialsDataFromUser(tutorialsData);
      },
    );
  }

  BlocListener _backgroundImageListener(BuildContext context) {
    Pair<int, BackgroundType>? getBackgroundIndexType(SettingsState state) {
      final BackgroundType backgroundType;
      final int? index;

      switch (state.settings.themeMode) {
        case AdaptiveThemeMode.light:
          backgroundType = BackgroundType.light;
          index = state.settings.backgroundsContainer.lightBackgroundIndex;
          break;
        case AdaptiveThemeMode.dark:
          backgroundType = BackgroundType.dark;
          index = state.settings.backgroundsContainer.darkBackgroundIndex;
          break;
        case AdaptiveThemeMode.system:
          backgroundType = context.isDarkMode ? BackgroundType.dark : BackgroundType.light;
          index = context.isDarkMode
              ? state.settings.backgroundsContainer.darkBackgroundIndex
              : state.settings.backgroundsContainer.lightBackgroundIndex;
          break;
      }

      if (index == null || kIsWeb) return null;

      return Pair(index, backgroundType);
    }

    return BlocListener<SettingsCubit, SettingsState>(
      listenWhen: (previous, current) {
        final previousBackgroundIndexType = getBackgroundIndexType(previous);
        final currentBackgroundIndexType = getBackgroundIndexType(current);
        return previousBackgroundIndexType != currentBackgroundIndexType;
      },
      listener: (context, state) {
        final backgroundsCubit = context.read<BackgroundsCubit>();
        final backgroundIndexType = getBackgroundIndexType(state);
        backgroundsCubit.loadCurrentBackgroundFile(backgroundIndexType: backgroundIndexType);
      },
    );
  }
}
