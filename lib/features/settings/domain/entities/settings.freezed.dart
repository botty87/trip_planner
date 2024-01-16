// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
  TimeOfDay get defaultDayTripStartTime => throw _privateConstructorUsedError;
  bool get showDirections => throw _privateConstructorUsedError;
  bool get useDifferentDirectionsColors => throw _privateConstructorUsedError;
  @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
  TravelMode get travelMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
      TimeOfDay defaultDayTripStartTime,
      bool showDirections,
      bool useDifferentDirectionsColors,
      @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
      TravelMode travelMode});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultDayTripStartTime = null,
    Object? showDirections = null,
    Object? useDifferentDirectionsColors = null,
    Object? travelMode = null,
  }) {
    return _then(_value.copyWith(
      defaultDayTripStartTime: null == defaultDayTripStartTime
          ? _value.defaultDayTripStartTime
          : defaultDayTripStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      showDirections: null == showDirections
          ? _value.showDirections
          : showDirections // ignore: cast_nullable_to_non_nullable
              as bool,
      useDifferentDirectionsColors: null == useDifferentDirectionsColors
          ? _value.useDifferentDirectionsColors
          : useDifferentDirectionsColors // ignore: cast_nullable_to_non_nullable
              as bool,
      travelMode: null == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as TravelMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsImplCopyWith<$Res>
    implements $SettingsCopyWith<$Res> {
  factory _$$SettingsImplCopyWith(
          _$SettingsImpl value, $Res Function(_$SettingsImpl) then) =
      __$$SettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
      TimeOfDay defaultDayTripStartTime,
      bool showDirections,
      bool useDifferentDirectionsColors,
      @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
      TravelMode travelMode});
}

/// @nodoc
class __$$SettingsImplCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$SettingsImpl>
    implements _$$SettingsImplCopyWith<$Res> {
  __$$SettingsImplCopyWithImpl(
      _$SettingsImpl _value, $Res Function(_$SettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultDayTripStartTime = null,
    Object? showDirections = null,
    Object? useDifferentDirectionsColors = null,
    Object? travelMode = null,
  }) {
    return _then(_$SettingsImpl(
      defaultDayTripStartTime: null == defaultDayTripStartTime
          ? _value.defaultDayTripStartTime
          : defaultDayTripStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      showDirections: null == showDirections
          ? _value.showDirections
          : showDirections // ignore: cast_nullable_to_non_nullable
              as bool,
      useDifferentDirectionsColors: null == useDifferentDirectionsColors
          ? _value.useDifferentDirectionsColors
          : useDifferentDirectionsColors // ignore: cast_nullable_to_non_nullable
              as bool,
      travelMode: null == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as TravelMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsImpl implements _Settings {
  const _$SettingsImpl(
      {@JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
      this.defaultDayTripStartTime = const TimeOfDay(hour: 8, minute: 0),
      this.showDirections = true,
      this.useDifferentDirectionsColors = true,
      @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
      this.travelMode = TravelMode.driving});

  factory _$SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsImplFromJson(json);

  @override
  @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
  final TimeOfDay defaultDayTripStartTime;
  @override
  @JsonKey()
  final bool showDirections;
  @override
  @JsonKey()
  final bool useDifferentDirectionsColors;
  @override
  @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
  final TravelMode travelMode;

  @override
  String toString() {
    return 'Settings(defaultDayTripStartTime: $defaultDayTripStartTime, showDirections: $showDirections, useDifferentDirectionsColors: $useDifferentDirectionsColors, travelMode: $travelMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(
                    other.defaultDayTripStartTime, defaultDayTripStartTime) ||
                other.defaultDayTripStartTime == defaultDayTripStartTime) &&
            (identical(other.showDirections, showDirections) ||
                other.showDirections == showDirections) &&
            (identical(other.useDifferentDirectionsColors,
                    useDifferentDirectionsColors) ||
                other.useDifferentDirectionsColors ==
                    useDifferentDirectionsColors) &&
            (identical(other.travelMode, travelMode) ||
                other.travelMode == travelMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, defaultDayTripStartTime,
      showDirections, useDifferentDirectionsColors, travelMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsImplToJson(
      this,
    );
  }
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {@JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
      final TimeOfDay defaultDayTripStartTime,
      final bool showDirections,
      final bool useDifferentDirectionsColors,
      @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
      final TravelMode travelMode}) = _$SettingsImpl;

  factory _Settings.fromJson(Map<String, dynamic> json) =
      _$SettingsImpl.fromJson;

  @override
  @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
  TimeOfDay get defaultDayTripStartTime;
  @override
  bool get showDirections;
  @override
  bool get useDifferentDirectionsColors;
  @override
  @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
  TravelMode get travelMode;
  @override
  @JsonKey(ignore: true)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
