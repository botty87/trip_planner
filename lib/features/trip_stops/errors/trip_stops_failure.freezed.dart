// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_stops_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripStopsFailure {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripStopsFailureCopyWith<TripStopsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStopsFailureCopyWith<$Res> {
  factory $TripStopsFailureCopyWith(
          TripStopsFailure value, $Res Function(TripStopsFailure) then) =
      _$TripStopsFailureCopyWithImpl<$Res, TripStopsFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$TripStopsFailureCopyWithImpl<$Res, $Val extends TripStopsFailure>
    implements $TripStopsFailureCopyWith<$Res> {
  _$TripStopsFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$TripStopsFailureImplCopyWith<$Res>
    implements $TripStopsFailureCopyWith<$Res> {
  factory _$$TripStopsFailureImplCopyWith(_$TripStopsFailureImpl value,
          $Res Function(_$TripStopsFailureImpl) then) =
      __$$TripStopsFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TripStopsFailureImplCopyWithImpl<$Res>
    extends _$TripStopsFailureCopyWithImpl<$Res, _$TripStopsFailureImpl>
    implements _$$TripStopsFailureImplCopyWith<$Res> {
  __$$TripStopsFailureImplCopyWithImpl(_$TripStopsFailureImpl _value,
      $Res Function(_$TripStopsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TripStopsFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TripStopsFailureImpl implements _TripStopsFailure {
  const _$TripStopsFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'TripStopsFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStopsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStopsFailureImplCopyWith<_$TripStopsFailureImpl> get copyWith =>
      __$$TripStopsFailureImplCopyWithImpl<_$TripStopsFailureImpl>(
          this, _$identity);
}

abstract class _TripStopsFailure implements TripStopsFailure {
  const factory _TripStopsFailure({final String? message}) =
      _$TripStopsFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$TripStopsFailureImplCopyWith<_$TripStopsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
