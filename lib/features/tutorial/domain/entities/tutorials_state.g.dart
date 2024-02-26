// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorials_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TutorialsStateImpl _$$TutorialsStateImplFromJson(Map<String, dynamic> json) =>
    _$TutorialsStateImpl(
      showWelcome: json['showWelcome'] as bool? ?? true,
      showPublicTrip: json['showPublicTrip'] as bool? ?? true,
    );

Map<String, dynamic> _$$TutorialsStateImplToJson(
        _$TutorialsStateImpl instance) =>
    <String, dynamic>{
      'showWelcome': instance.showWelcome,
      'showPublicTrip': instance.showPublicTrip,
    };
