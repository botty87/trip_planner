import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/failures.dart';

part 'google_places_failure.freezed.dart';

@freezed
sealed class GooglePlacesFailure with _$GooglePlacesFailure implements Failure {
  const factory GooglePlacesFailure.noInternetConnection() = _NoInternetConnection;
  const factory GooglePlacesFailure.requestDenied({required String message}) = _RequestDenied;
  const factory GooglePlacesFailure.requestCancelled() = _RequestCancelled;
  const factory GooglePlacesFailure.unknownError({String? message}) = _UnknownError;
}
