import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_planner/core/error/failures.dart';

part 'trips_failure.freezed.dart';

@freezed
class TripsFailure with _$TripsFailure implements Failure{
  const factory TripsFailure({String? message}) = _TripsFailure;
}