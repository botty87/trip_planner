// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewPreferences _$ViewPreferencesFromJson(Map<String, dynamic> json) {
  return _ViewPreferences.fromJson(json);
}

/// @nodoc
mixin _$ViewPreferences {
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  ViewMode get tripsViewMode => throw _privateConstructorUsedError;
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  ViewMode get tripViewMode => throw _privateConstructorUsedError;
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  ViewMode get dayTripViewMode => throw _privateConstructorUsedError;

  /// Serializes this ViewPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ViewPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewPreferencesCopyWith<ViewPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewPreferencesCopyWith<$Res> {
  factory $ViewPreferencesCopyWith(
          ViewPreferences value, $Res Function(ViewPreferences) then) =
      _$ViewPreferencesCopyWithImpl<$Res, ViewPreferences>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      ViewMode tripsViewMode,
      @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      ViewMode tripViewMode,
      @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      ViewMode dayTripViewMode});
}

/// @nodoc
class _$ViewPreferencesCopyWithImpl<$Res, $Val extends ViewPreferences>
    implements $ViewPreferencesCopyWith<$Res> {
  _$ViewPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripsViewMode = null,
    Object? tripViewMode = null,
    Object? dayTripViewMode = null,
  }) {
    return _then(_value.copyWith(
      tripsViewMode: null == tripsViewMode
          ? _value.tripsViewMode
          : tripsViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
      tripViewMode: null == tripViewMode
          ? _value.tripViewMode
          : tripViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
      dayTripViewMode: null == dayTripViewMode
          ? _value.dayTripViewMode
          : dayTripViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewPreferencesImplCopyWith<$Res>
    implements $ViewPreferencesCopyWith<$Res> {
  factory _$$ViewPreferencesImplCopyWith(_$ViewPreferencesImpl value,
          $Res Function(_$ViewPreferencesImpl) then) =
      __$$ViewPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      ViewMode tripsViewMode,
      @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      ViewMode tripViewMode,
      @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      ViewMode dayTripViewMode});
}

/// @nodoc
class __$$ViewPreferencesImplCopyWithImpl<$Res>
    extends _$ViewPreferencesCopyWithImpl<$Res, _$ViewPreferencesImpl>
    implements _$$ViewPreferencesImplCopyWith<$Res> {
  __$$ViewPreferencesImplCopyWithImpl(
      _$ViewPreferencesImpl _value, $Res Function(_$ViewPreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripsViewMode = null,
    Object? tripViewMode = null,
    Object? dayTripViewMode = null,
  }) {
    return _then(_$ViewPreferencesImpl(
      tripsViewMode: null == tripsViewMode
          ? _value.tripsViewMode
          : tripsViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
      tripViewMode: null == tripViewMode
          ? _value.tripViewMode
          : tripViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
      dayTripViewMode: null == dayTripViewMode
          ? _value.dayTripViewMode
          : dayTripViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewPreferencesImpl implements _ViewPreferences {
  const _$ViewPreferencesImpl(
      {@JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      this.tripsViewMode = ViewMode.grid,
      @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      this.tripViewMode = ViewMode.grid,
      @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      this.dayTripViewMode = ViewMode.grid});

  factory _$ViewPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewPreferencesImplFromJson(json);

  @override
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  final ViewMode tripsViewMode;
  @override
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  final ViewMode tripViewMode;
  @override
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  final ViewMode dayTripViewMode;

  @override
  String toString() {
    return 'ViewPreferences(tripsViewMode: $tripsViewMode, tripViewMode: $tripViewMode, dayTripViewMode: $dayTripViewMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewPreferencesImpl &&
            (identical(other.tripsViewMode, tripsViewMode) ||
                other.tripsViewMode == tripsViewMode) &&
            (identical(other.tripViewMode, tripViewMode) ||
                other.tripViewMode == tripViewMode) &&
            (identical(other.dayTripViewMode, dayTripViewMode) ||
                other.dayTripViewMode == dayTripViewMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tripsViewMode, tripViewMode, dayTripViewMode);

  /// Create a copy of ViewPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewPreferencesImplCopyWith<_$ViewPreferencesImpl> get copyWith =>
      __$$ViewPreferencesImplCopyWithImpl<_$ViewPreferencesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewPreferencesImplToJson(
      this,
    );
  }
}

abstract class _ViewPreferences implements ViewPreferences {
  const factory _ViewPreferences(
      {@JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      final ViewMode tripsViewMode,
      @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      final ViewMode tripViewMode,
      @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
      final ViewMode dayTripViewMode}) = _$ViewPreferencesImpl;

  factory _ViewPreferences.fromJson(Map<String, dynamic> json) =
      _$ViewPreferencesImpl.fromJson;

  @override
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  ViewMode get tripsViewMode;
  @override
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  ViewMode get tripViewMode;
  @override
  @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
  ViewMode get dayTripViewMode;

  /// Create a copy of ViewPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewPreferencesImplCopyWith<_$ViewPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
