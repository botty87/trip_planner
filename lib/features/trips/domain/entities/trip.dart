// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';


@freezed
sealed class Trip with _$Trip {
  factory Trip({
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default('') String id,
    required String name,
    String? description,
    required String userId,
    @JsonKey(toJson: dateTimeToTimestamp , fromJson: dateTimeFromTimestamp )
    required DateTime createdAt,
    @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
    required DateTime startDate,
  }) = _Trip;

  factory Trip.create({
    required String name,
    String? description,
    required String userId,
    required DateTime createdAt,
    required DateTime startDate,
  }) => Trip(
    name: name,
    description: description,
    userId: userId,
    createdAt: createdAt,
    startDate: startDate,
  );

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}
