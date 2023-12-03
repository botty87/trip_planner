// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trips_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripsFailure {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripsFailureCopyWith<TripsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripsFailureCopyWith<$Res> {
  factory $TripsFailureCopyWith(
          TripsFailure value, $Res Function(TripsFailure) then) =
      _$TripsFailureCopyWithImpl<$Res, TripsFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$TripsFailureCopyWithImpl<$Res, $Val extends TripsFailure>
    implements $TripsFailureCopyWith<$Res> {
  _$TripsFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$TripsFailureImplCopyWith<$Res>
    implements $TripsFailureCopyWith<$Res> {
  factory _$$TripsFailureImplCopyWith(
          _$TripsFailureImpl value, $Res Function(_$TripsFailureImpl) then) =
      __$$TripsFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TripsFailureImplCopyWithImpl<$Res>
    extends _$TripsFailureCopyWithImpl<$Res, _$TripsFailureImpl>
    implements _$$TripsFailureImplCopyWith<$Res> {
  __$$TripsFailureImplCopyWithImpl(
      _$TripsFailureImpl _value, $Res Function(_$TripsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TripsFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TripsFailureImpl implements _TripsFailure {
  const _$TripsFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'TripsFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsFailureImplCopyWith<_$TripsFailureImpl> get copyWith =>
      __$$TripsFailureImplCopyWithImpl<_$TripsFailureImpl>(this, _$identity);
}

abstract class _TripsFailure implements TripsFailure {
  const factory _TripsFailure({final String? message}) = _$TripsFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$TripsFailureImplCopyWith<_$TripsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
