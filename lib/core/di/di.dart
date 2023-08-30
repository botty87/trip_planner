import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:logger/logger.dart';
import 'package:trip_planner/core/di/di.config.dart';

final getIt = GetIt.instance;

@injectableInit
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
}