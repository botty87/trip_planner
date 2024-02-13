// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backgrounds_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackgroundsContainerImpl _$$BackgroundsContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$BackgroundsContainerImpl(
      lightBackground: json['lightBackground'] == null
          ? null
          : BackgroundRemoteImage.fromJson(
              json['lightBackground'] as Map<String, dynamic>),
      darkBackground: json['darkBackground'] == null
          ? null
          : BackgroundRemoteImage.fromJson(
              json['darkBackground'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BackgroundsContainerImplToJson(
        _$BackgroundsContainerImpl instance) =>
    <String, dynamic>{
      'lightBackground': instance.lightBackground?.toJson(),
      'darkBackground': instance.darkBackground?.toJson(),
    };
