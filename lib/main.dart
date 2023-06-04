import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_theme/json_theme.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  //Firebase config
  await Firebase.initializeApp();
  if (kDebugMode) {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  }

  //Theme
  final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
  final themeJson = jsonDecode(themeStr);
  var theme = ThemeDecoder.decodeThemeData(themeJson)!;
  theme = theme.copyWith(
    textTheme: GoogleFonts.outfitTextTheme(theme.textTheme),
  );

  configureDependencies();
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
    return MaterialApp.router(
      title: 'Flutter Demo 2',
      theme: theme,
      routerConfig: getIt<AppRouter>().config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      scrollBehavior: const MaterialScrollBehavior().copyWith(scrollbars: false),
    );
  }
}
