// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFailure {
  UserFailureCode? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFailureCopyWith<UserFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res, UserFailure>;
  @useResult
  $Res call({UserFailureCode? code});
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res, $Val extends UserFailure>
    implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as UserFailureCode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFailureCopyWith<$Res>
    implements $UserFailureCopyWith<$Res> {
  factory _$$_UserFailureCopyWith(
          _$_UserFailure value, $Res Function(_$_UserFailure) then) =
      __$$_UserFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserFailureCode? code});
}

/// @nodoc
class __$$_UserFailureCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res, _$_UserFailure>
    implements _$$_UserFailureCopyWith<$Res> {
  __$$_UserFailureCopyWithImpl(
      _$_UserFailure _value, $Res Function(_$_UserFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$_UserFailure(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as UserFailureCode?,
    ));
  }
}

/// @nodoc

class _$_UserFailure implements _UserFailure {
  _$_UserFailure({this.code});

  @override
  final UserFailureCode? code;

  @override
  String toString() {
    return 'UserFailure(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFailure &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFailureCopyWith<_$_UserFailure> get copyWith =>
      __$$_UserFailureCopyWithImpl<_$_UserFailure>(this, _$identity);
}

abstract class _UserFailure implements UserFailure {
  factory _UserFailure({final UserFailureCode? code}) = _$_UserFailure;

  @override
  UserFailureCode? get code;
  @override
  @JsonKey(ignore: true)
  _$$_UserFailureCopyWith<_$_UserFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
