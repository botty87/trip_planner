import 'package:flutter/foundation.dart';

@immutable
final class UnexpectedStateException implements Exception {
  static const String message = 'Unexpected state';

  const UnexpectedStateException();
}
