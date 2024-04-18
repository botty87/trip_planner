import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_exception.freezed.dart';

@freezed
class UserException with _$UserException implements Exception {
  const factory UserException({String? message}) = _UserException;

  const factory UserException.noInternetConnection() = _NoInternetConnection;
}
