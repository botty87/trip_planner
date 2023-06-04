import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_planner/core/error/failures.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure implements Failure {
  factory UserFailure({
    UserFailureCode? code,
  }) = _UserFailure;
}

enum UserFailureCode {
  userNotFound,
  emailAlreadyInUse,
  weakPassword,
  wrongPassword,
  tooManyRequests,
  userDisabled,
  networkRequestFailed,
}