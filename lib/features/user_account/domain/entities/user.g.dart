// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      oldTripsImported: json['oldTripsImported'] as bool? ?? true,
      settings: json['settings'] == null
          ? const Settings()
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
      showWelcome: json['showWelcome'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'oldTripsImported': instance.oldTripsImported,
      'settings': instance.settings.toJson(),
      'showWelcome': instance.showWelcome,
    };
