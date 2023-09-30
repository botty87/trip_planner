import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/failures.dart';

part 'trip_stops_failure.freezed.dart';

@freezed
class TripStopsFailure with _$TripStopsFailure implements Failure {
  const factory TripStopsFailure({String? message}) = _TripStopsFailure;
}
