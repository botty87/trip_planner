// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';

part 'trip_stop.freezed.dart';
part 'trip_stop.g.dart';

@freezed
sealed class TripStop with _$TripStop {
  factory TripStop({
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') String id,
    required String name,
    String? description,
    @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
    required DateTime beginHourDate,
    required int durationInMinutes,
    @Default(false) bool isDone,
  }) = _TripStop;

  factory TripStop.create({
    required String name,
    String? description,
    required DateTime beginHourDate,
    required int durationInMinutes,
  }) =>
      TripStop(
        name: name,
        description: description,
        beginHourDate: beginHourDate,
        durationInMinutes: durationInMinutes,
      );

  factory TripStop.fromJson(Map<String, dynamic> json) => _$TripStopFromJson(json);
}
