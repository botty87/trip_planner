// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

import 'core/di/di.dart';
import 'core/my_app.dart';
import 'firebase_options.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    MobileAds.instance.initialize();
  }

  await EasyLocalization.ensureInitialized();
  await configureDependencies();
  Bloc.observer = getIt<BlocObserver>();

  //Firebase config
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (kDebugMode) {
    await getIt<FirebaseAuth>().useAuthEmulator('localhost', 9099);
    getIt<FirebaseFirestore>().useFirestoreEmulator('localhost', 8080);
    getIt<FirebaseDatabase>().useDatabaseEmulator('localhost', 9000);
    getIt<FirebaseStorage>().useStorageEmulator('localhost', 9199);
  } else {
    //Init Crashlytics
    FlutterError.onError = (errorDetails) {
      getIt<FirebaseCrashlytics>().recordFlutterFatalError(errorDetails);
    };

    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      getIt<FirebaseCrashlytics>().recordError(error, stack, fatal: true);
      return true;
    };

    //Add patch number to the crash log
    try {
      final patchNumber = await ShorebirdCodePush().currentPatchNumber();

      FirebaseCrashlytics.instance.setCustomKey(
        'shorebird_patch_number',
        '$patchNumber',
      );
    } catch (_) {}
  }

  // Require Hybrid Composition mode on Android.
  final GoogleMapsFlutterPlatform mapsImplementation = GoogleMapsFlutterPlatform.instance;
  if (mapsImplementation is GoogleMapsFlutterAndroid) {
    mapsImplementation.useAndroidViewSurface = false;
  }

  runApp(DevicePreview(
    enabled: !kIsWeb && !kReleaseMode && (Platform.isLinux || Platform.isMacOS || Platform.isWindows),
    builder: (context) => EasyLocalization(
      supportedLocales: const [Locale('it'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      child: const MyApp(),
    ),
  ));
}
