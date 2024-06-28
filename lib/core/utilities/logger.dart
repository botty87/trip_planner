import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../di/di.dart';

abstract class Logger {
  void warning(String message);
  void debug(String message);
  void info(String message);
  void verbose(String message);
  void critical(String message);
  void error(String message, {Object? exception, StackTrace? stackTrace});
  void handleException(Object exception, {StackTrace? stackTrace, String? message});
}

@LazySingleton(as: Logger)
class LoggerTalker implements Logger {
  final Talker _talker;

  LoggerTalker(this._talker);

  @override
  void warning(String message) {
    _talker.warning(message);
  }

  @override
  void debug(String message) {
    _talker.debug(message);
  }

  @override
  void info(String message) {
    _talker.info(message);
  }

  @override
  void verbose(String message) {
    _talker.verbose(message);
  }

  @override
  void error(String message, {Object? exception, StackTrace? stackTrace}) {
    _talker.error(message, exception, stackTrace);
  }

  @override
  void handleException(Object exception, {StackTrace? stackTrace, String? message}) {
    _talker.handle(exception, stackTrace, message);
  }

  @override
  void critical(String message) {
    _talker.critical(message);
  }
}

@lazySingleton
class CrashlyticsTalkerObserver extends TalkerObserver {
  final FirebaseCrashlytics _crashlytics;

  CrashlyticsTalkerObserver(this._crashlytics);

  @override
  void onError(err) {
    _crashlytics.recordError(
      err.error,
      err.stackTrace,
      reason: err.message,
    );
  }

  @override
  void onException(err) {
    _crashlytics.recordError(
      err.exception,
      err.stackTrace,
      reason: err.message,
    );
  }
}

@module
abstract class TalkerModule {
  @lazySingleton
  Talker get talker => TalkerFlutter.init(observer: getIt<CrashlyticsTalkerObserver>());
}
