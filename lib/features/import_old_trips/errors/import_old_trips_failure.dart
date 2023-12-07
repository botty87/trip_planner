import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/failures.dart';

part 'import_old_trips_failure.freezed.dart';

@freezed
class ImportOldTripsFailure with _$ImportOldTripsFailure implements Failure {
  const factory ImportOldTripsFailure({String? message}) = _ImportOldTripsFailure;
}
