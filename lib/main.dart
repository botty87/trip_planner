// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_theme/json_theme.dart';
import 'core/di/di.dart';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

import 'core/my_app.dart';
import 'firebase_options.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  Bloc.observer = getIt<BlocObserver>();

  //Firebase config
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  //Init Crashlytics
  FlutterError.onError = (errorDetails) {
    getIt<FirebaseCrashlytics>().recordFlutterFatalError(errorDetails);
  };

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    getIt<FirebaseCrashlytics>().recordError(error, stack, fatal: true);
    return true;
  };

  if (kDebugMode) {
    await getIt<FirebaseAuth>().useAuthEmulator('localhost', 9099);
    getIt<FirebaseFirestore>().useFirestoreEmulator('localhost', 8080);
    getIt<FirebaseDatabase>().useDatabaseEmulator('localhost', 9000);
  }

  // Require Hybrid Composition mode on Android.
  final GoogleMapsFlutterPlatform mapsImplementation = GoogleMapsFlutterPlatform.instance;
  if (mapsImplementation is GoogleMapsFlutterAndroid) {
    mapsImplementation.useAndroidViewSurface = false;
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
