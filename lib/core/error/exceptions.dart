import 'package:flutter/foundation.dart';

@immutable
final class UnexpectedStateException implements Exception {
  final String message;

  const UnexpectedStateException({this.message = 'An unexpected state was encountered.'});
}
