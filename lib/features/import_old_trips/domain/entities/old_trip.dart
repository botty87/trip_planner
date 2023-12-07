import 'package:freezed_annotation/freezed_annotation.dart';

import 'old_daily_trip.dart';

part 'old_trip.freezed.dart';

@freezed
class OldTrip with _$OldTrip {
  const factory OldTrip({
    required String id,
    required String name,
    required List<OldDailyTrip> dailyTrips,
  }) = _OldTrip;
}
