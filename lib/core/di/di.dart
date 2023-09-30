import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
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