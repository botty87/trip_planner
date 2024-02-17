// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_trips_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DayTripsFailure {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayTripsFailureCopyWith<DayTripsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTripsFailureCopyWith<$Res> {
  factory $DayTripsFailureCopyWith(
          DayTripsFailure value, $Res Function(DayTripsFailure) then) =
      _$DayTripsFailureCopyWithImpl<$Res, DayTripsFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$DayTripsFailureCopyWithImpl<$Res, $Val extends DayTripsFailure>
    implements $DayTripsFailureCopyWith<$Res> {
  _$DayTripsFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayTripsFailureImplCopyWith<$Res>
    implements $DayTripsFailureCopyWith<$Res> {
  factory _$$DayTripsFailureImplCopyWith(_$DayTripsFailureImpl value,
          $Res Function(_$DayTripsFailureImpl) then) =
      __$$DayTripsFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DayTripsFailureImplCopyWithImpl<$Res>
    extends _$DayTripsFailureCopyWithImpl<$Res, _$DayTripsFailureImpl>
    implements _$$DayTripsFailureImplCopyWith<$Res> {
  __$$DayTripsFailureImplCopyWithImpl(
      _$DayTripsFailureImpl _value, $Res Function(_$DayTripsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DayTripsFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DayTripsFailureImpl implements _DayTripsFailure {
  const _$DayTripsFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'DayTripsFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTripsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTripsFailureImplCopyWith<_$DayTripsFailureImpl> get copyWith =>
      __$$DayTripsFailureImplCopyWithImpl<_$DayTripsFailureImpl>(
          this, _$identity);
}

abstract class _DayTripsFailure implements DayTripsFailure {
  const factory _DayTripsFailure({final String? message}) =
      _$DayTripsFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DayTripsFailureImplCopyWith<_$DayTripsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
