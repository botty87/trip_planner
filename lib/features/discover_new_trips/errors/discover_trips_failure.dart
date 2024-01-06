import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/failures.dart';

part 'discover_trips_failure.freezed.dart';

@freezed
class DiscoverTripsFailure with _$DiscoverTripsFailure implements Failure {
  const factory DiscoverTripsFailure({String? message}) = _DiscoverTripsFailure;
}
