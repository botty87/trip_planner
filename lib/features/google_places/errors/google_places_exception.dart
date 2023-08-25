import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_places_exception.freezed.dart';

@freezed
sealed class GooglePlacesException with _$GooglePlacesException implements Exception {
  const factory GooglePlacesException.noInternetConnection() = _NoInternetConnection;
  const factory GooglePlacesException.requestDenied({required String message}) = _RequestDenied;
  const factory GooglePlacesException.requestCancelled() = _RequestCancelled;
  const factory GooglePlacesException.unknownError({String? message}) = _UnknownError;
}
