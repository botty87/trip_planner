import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_theme/json_theme.dart';
import 'core/di/di.dart';

import 'core/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  Bloc.observer = getIt<BlocObserver>();

  //Firebase config
  await Firebase.initializeApp();

  //Init Crashlytics
  FlutterError.onError = (errorDetails) {
    getIt<FirebaseCrashlytics>().recordFlutterFatalError(errorDetails);
  };

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    getIt<FirebaseCrashlytics>().recordError(error, stack, fatal: true);
    return true;
  };

  if (kDebugMode && false) {
    await getIt<FirebaseAuth>().useAuthEmulator('localhost', 9099);
    getIt<FirebaseFirestore>().useFirestoreEmulator('localhost', 8080);
  }

  //Theme
  final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
  final themeJson = jsonDecode(themeStr);
  var theme = ThemeDecoder.decodeThemeData(themeJson)!;
  theme = theme.copyWith(
    textTheme: GoogleFonts.jostTextTheme(theme.textTheme),
  );

  runApp(EasyLocalization(
    supportedLocales: const [Locale('it'), Locale('en')],
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    useOnlyLangCode: true,
    child: MyApp(theme: theme),
  ));
}
