import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/failures.dart';

part 'day_trips_failure.freezed.dart';

@freezed
class DayTripsFailure with _$DayTripsFailure implements Failure {
  const factory DayTripsFailure({String? message}) = _DayTripsFailure;
}
