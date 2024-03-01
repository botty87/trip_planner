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
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
      tutorialsData: json['tutorialsData'] == null
          ? const TutorialsData()
          : TutorialsData.fromJson(
              json['tutorialsData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDBImplToJson(_$UserDBImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'oldTripsImported': instance.oldTripsImported,
      'settings': instance.settings.toJson(),
      'tutorialsData': instance.tutorialsData.toJson(),
    };
