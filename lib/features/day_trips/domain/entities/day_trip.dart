import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_trip.freezed.dart';
part 'day_trip.g.dart';

@freezed
sealed class DayTrip with _$DayTrip {
  factory DayTrip({
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') String id,
    required String name,
    String? description,
  }) = _DayTrip;

  factory DayTrip.create({
    required String name,
    String? description,
  }) =>
      DayTrip(
        name: name,
        description: description,
      );

  factory DayTrip.fromJson(Map<String, dynamic> json) => _$DayTripFromJson(json);
}
