import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../features/settings/domain/entities/backgrounds_container.dart';
import '../../features/settings/presentation/cubit/settings_cubit.dart';
import '../../features/tutorials/presentation/cubit/tutorial_cubit.dart';
import '../../ui/cubit/backgrounds_cubit.dart';
import '../../ui/widgets/background/background_image_wrapper.dart';
import '../../features/user_account/presentation/cubit/user/user_cubit.dart';
import '../di/di.dart';
import '../routes/app_router.dart';
import '../routes/app_router.gr.dart';
import '../utilities/extensions.dart';
import '../utilities/pair.dart';

part 'listeners/user_status_listener.dart';
part 'listeners/settings_listener.dart';
part 'listeners/tutorials_listener.dart';
part 'listeners/background_image_listener.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                  builder: (context, child) => ResponsiveBreakpoints.builder(
                    breakpoints: [
                      const Breakpoint(start: 0, end: 450, name: MOBILE),
                      const Breakpoint(start: 451, end: 800, name: TABLET),
                      const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                      const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
                    ],
                    child: MultiBlocListener(
                      listeners: [
                        _UserStatusListener(),
                        _SettingsListener(),
                        _TutorialsListener(),
                        _BackgroundImageListener(context: context)
                      ],
                      child: BackgroundImageWrapper(child: child!),
                    ),
                  ),
                );
              },
            );
          },
        );
      }),
    );
  }
}
