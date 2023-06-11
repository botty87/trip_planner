// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trip _$$_TripFromJson(Map<String, dynamic> json) => _$_Trip(
      name: json['name'] as String,
      description: json['description'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_TripToJson(_$_Trip instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'userId': instance.userId,
    };
