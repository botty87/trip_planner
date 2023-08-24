// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_trip_stop_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewTripStopState {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TimeOfDay? get startTime => throw _privateConstructorUsedError;
  TimeOfDay? get endTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            TimeOfDay? startTime, TimeOfDay? endTime)
        normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime)?
        normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime)?
        normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewTripStopStateNormal value) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewTripStopStateNormal value)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewTripStopStateNormal value)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewTripStopStateCopyWith<NewTripStopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTripStopStateCopyWith<$Res> {
  factory $NewTripStopStateCopyWith(
          NewTripStopState value, $Res Function(NewTripStopState) then) =
      _$NewTripStopStateCopyWithImpl<$Res, NewTripStopState>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      TimeOfDay? startTime,
      TimeOfDay? endTime});
}

/// @nodoc
class _$NewTripStopStateCopyWithImpl<$Res, $Val extends NewTripStopState>
    implements $NewTripStopStateCopyWith<$Res> {
  _$NewTripStopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewTripStopStateNormalCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateNormalCopyWith(_$NewTripStopStateNormal value,
          $Res Function(_$NewTripStopStateNormal) then) =
      __$$NewTripStopStateNormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      TimeOfDay? startTime,
      TimeOfDay? endTime});
}

/// @nodoc
class __$$NewTripStopStateNormalCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateNormal>
    implements _$$NewTripStopStateNormalCopyWith<$Res> {
  __$$NewTripStopStateNormalCopyWithImpl(_$NewTripStopStateNormal _value,
      $Res Function(_$NewTripStopStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$NewTripStopStateNormal(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc

class _$NewTripStopStateNormal implements NewTripStopStateNormal {
  const _$NewTripStopStateNormal(
      {this.name, this.description, this.startTime, this.endTime});

  @override
  final String? name;
  @override
  final String? description;
  @override
  final TimeOfDay? startTime;
  @override
  final TimeOfDay? endTime;

  @override
  String toString() {
    return 'NewTripStopState.normal(name: $name, description: $description, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateNormal &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateNormalCopyWith<_$NewTripStopStateNormal> get copyWith =>
      __$$NewTripStopStateNormalCopyWithImpl<_$NewTripStopStateNormal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            TimeOfDay? startTime, TimeOfDay? endTime)
        normal,
  }) {
    return normal(name, description, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime)?
        normal,
  }) {
    return normal?.call(name, description, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime)?
        normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(name, description, startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewTripStopStateNormal value) normal,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewTripStopStateNormal value)? normal,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewTripStopStateNormal value)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class NewTripStopStateNormal implements NewTripStopState {
  const factory NewTripStopStateNormal(
      {final String? name,
      final String? description,
      final TimeOfDay? startTime,
      final TimeOfDay? endTime}) = _$NewTripStopStateNormal;

  @override
  String? get name;
  @override
  String? get description;
  @override
  TimeOfDay? get startTime;
  @override
  TimeOfDay? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateNormalCopyWith<_$NewTripStopStateNormal> get copyWith =>
      throw _privateConstructorUsedError;
}
