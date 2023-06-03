import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_planner/core/error/failures.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure implements Failure {
  factory UserFailure() = _UserFailure;
}
