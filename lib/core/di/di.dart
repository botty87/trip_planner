import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:logger/logger.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../keys/env.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => Logger();
}

@module
abstract class Network {
  @lazySingleton
  Dio get client => Dio();

  @lazySingleton
  InternetConnection get internetConnection => InternetConnection();

  @injectable
  WebViewController get webViewController =>
      WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted);
}

@module
abstract class FirebaseModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;

  @lazySingleton
  FirebaseDatabase get firebaseDatabase => FirebaseDatabase.instance;
}

@module
abstract class GooglePlacesModule {
  @lazySingleton
  PolylinePoints get polylinePoints => PolylinePoints();

  @Named('googlePlacesKey')
  @lazySingleton
  String get googlePlacesKey => Env.googlePlacesKey;

  @Named('googleMapKey')
  @lazySingleton
  String get googleMapKey => Env.googleMapKey;

  @Named('proxyUrl')
  @lazySingleton
  String get proxyUrl => Env.proxyUrl;
}

