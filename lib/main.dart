import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_theme/json_theme.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/routes/app_router.dart';

import 'features/user_account/presentation/cubit/user/user_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Firebase config
  await Firebase.initializeApp();
  if (kDebugMode) {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  }

  //Theme
  final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  configureDependencies();
  runApp(MyApp(theme: theme));
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
    );
  }
}