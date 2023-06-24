import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';


@freezed
sealed class Trip with _$Trip {
  factory Trip({
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false)
    String? id,
    required String name,
    String? description,
    required String userId,
    // ignore: invalid_annotation_target
    @JsonKey(toJson: dateTimeToTimestamp , fromJson: dateTimeFromTimestamp )
    required DateTime createdAt,
  }) = _Trip;


  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}
