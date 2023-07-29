import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_trip.freezed.dart';
part 'day_trip.g.dart';

@freezed
sealed class DayTrip with _$DayTrip {
  factory DayTrip({
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') String id,
    required int index,
    String? description,
  }) = _DayTrip;

  factory DayTrip.create({
    String? description,
  }) =>
      DayTrip(
        index: -1,
        description: description,
      );

  factory DayTrip.fromJson(Map<String, dynamic> json) => _$DayTripFromJson(json);
}
