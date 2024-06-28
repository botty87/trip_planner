import 'package:freezed_annotation/freezed_annotation.dart';

part 'trips_exception.freezed.dart';

@freezed
class TripsException with _$TripsException implements Exception {
  const factory TripsException({String? message}) = _TripsException;

  const factory TripsException.noInternetConnection() = _NoInternetConnection;
}

@freezed
class ShareTripException with _$ShareTripException implements Exception {
  const factory ShareTripException({String? message}) = _ShareTripException;

  const factory ShareTripException.userNotFound() = _UserNotFound;

  const factory ShareTripException.noInternetConnection() = _SNoInternetConnection;
}
