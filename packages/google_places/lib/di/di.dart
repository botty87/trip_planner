import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:google_places/di/di.config.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final getIt = GetIt.instance;
bool _isInitialized = false;

@injectableInit
void configureDependencies() {
  if (!_isInitialized) {
    _isInitialized = true;
    getIt.init();
  }
}

@module
abstract class Network {
  @lazySingleton
  Dio get client => Dio();

  @lazySingleton
  InternetConnection get internetConnection => InternetConnection();
}