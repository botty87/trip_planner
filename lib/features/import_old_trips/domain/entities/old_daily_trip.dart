import 'package:freezed_annotation/freezed_annotation.dart';

import 'old_place.dart';

part 'old_daily_trip.freezed.dart';

@freezed
class OldDailyTrip with _$OldDailyTrip {
  const factory OldDailyTrip({
    required String name,
    required String? note,
    required int position,
    required int? day,
    required int? month,
    required int? year,
    required List<OldPlace> places,
  }) = _OldDailyTrip;
}

extension OldDailyTripX on OldDailyTrip {
  DateTime get date {
    if (day == null || month == null || year == null) {
      return DateTime.now();
    }
    return DateTime(year!, month!, day!);
  }
}
