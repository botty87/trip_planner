import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_trip.freezed.dart';
part 'day_trip.g.dart';

@freezed
sealed class DayTrip with _$DayTrip {

  factory DayTrip({
    required String id,
    required String name,
    required String description,
  }) = _DayTrip;

  factory DayTrip.fromJson(Map<String, dynamic> json) => _$DayTripFromJson(json);
}