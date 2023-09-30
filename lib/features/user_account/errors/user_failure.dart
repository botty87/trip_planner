import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/failures.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure implements Failure {
  factory UserFailure({
    UserFailureCode? code,
  }) = _UserFailure;
}

enum UserFailureCode {
  emailAlreadyInUse,
  weakPassword,
  userNotFound,
  wrongPassword,
  tooManyRequests,
  userDisabled,
  networkRequestFailed,
}