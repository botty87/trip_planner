// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_db.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDBImpl _$$UserDBImplFromJson(Map<String, dynamic> json) => _$UserDBImpl(
      email: json['email'] as String,
      name: json['name'] as String,
      oldTripsImported: json['oldTripsImported'] as bool? ?? false,
      settings: json['settings'] == null
          ? const Settings()
          : settingsFromMap(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDBImplToJson(_$UserDBImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'oldTripsImported': instance.oldTripsImported,
      'settings': settingsToMap(instance.settings),
    };
