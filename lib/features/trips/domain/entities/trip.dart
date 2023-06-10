import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';


@freezed
sealed class Trip with _$Trip {
  factory Trip({
    @JsonKey(includeFromJson: false, includeToJson: false)
    String? id,
    required String name,
    required String userId,
  }) = _Trip;


  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}
