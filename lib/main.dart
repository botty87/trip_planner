import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_theme/json_theme.dart';
import 'package:trip_planner/core/bloc_observer.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/routes/app_router.dart';

import 'core/routes/app_router.gr.dart';
import 'features/user_account/presentation/cubit/user/user_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  Bloc.observer = getIt<BlocObserver>();

  //Firebase config
  await Firebase.initializeApp();
  if (kDebugMode) {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }

  //Theme
  final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
  final themeJson = jsonDecode(themeStr);
  var theme = ThemeDecoder.decodeThemeData(themeJson)!;
  theme = theme.copyWith(
    textTheme: GoogleFonts.jostTextTheme(theme.textTheme),
  );

  
  runApp(EasyLocalization(
    supportedLocales: [Locale('it'), Locale('en')],
    path: 'assets/translations',
    fallbackLocale: Locale('en'),
    useOnlyLangCode: true,
    child: MyApp(theme: theme),
  ));
}

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
          title: 'Flutter Demo 2',
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
