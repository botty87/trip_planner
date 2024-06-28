import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/failures.dart';

part 'trips_failure.freezed.dart';

@freezed
class TripsFailure with _$TripsFailure implements Failure {
  const factory TripsFailure({String? message}) = _TripsFailure;

  const factory TripsFailure.noInternetConnection({String? message}) =
      TripsFailureNoInternetConnection;
}

@freezed
class ShareTripFailure with _$ShareTripFailure implements Failure {
  const factory ShareTripFailure({String? message}) = _ShareTripFailure;

  const factory ShareTripFailure.userNotFound({String? message}) = ShareTripFailureUserNotFound;

  const factory ShareTripFailure.noInternetConnection({String? message}) =
      ShareTripFailureNoInternetConnection;
}
