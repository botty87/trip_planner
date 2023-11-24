// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFailures {
  UserFailuresCode? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFailuresCopyWith<UserFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailuresCopyWith<$Res> {
  factory $UserFailuresCopyWith(
          UserFailures value, $Res Function(UserFailures) then) =
      _$UserFailuresCopyWithImpl<$Res, UserFailures>;
  @useResult
  $Res call({UserFailuresCode? code});
}

/// @nodoc
class _$UserFailuresCopyWithImpl<$Res, $Val extends UserFailures>
    implements $UserFailuresCopyWith<$Res> {
  _$UserFailuresCopyWithImpl(this._value, this._then);

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
              as UserFailuresCode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFailuresImplCopyWith<$Res>
    implements $UserFailuresCopyWith<$Res> {
  factory _$$UserFailuresImplCopyWith(
          _$UserFailuresImpl value, $Res Function(_$UserFailuresImpl) then) =
      __$$UserFailuresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserFailuresCode? code});
}

/// @nodoc
class __$$UserFailuresImplCopyWithImpl<$Res>
    extends _$UserFailuresCopyWithImpl<$Res, _$UserFailuresImpl>
    implements _$$UserFailuresImplCopyWith<$Res> {
  __$$UserFailuresImplCopyWithImpl(
      _$UserFailuresImpl _value, $Res Function(_$UserFailuresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$UserFailuresImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as UserFailuresCode?,
    ));
  }
}

/// @nodoc

class _$UserFailuresImpl extends _UserFailures {
  const _$UserFailuresImpl({this.code}) : super._();

  @override
  final UserFailuresCode? code;

  @override
  String toString() {
    return 'UserFailures(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFailuresImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFailuresImplCopyWith<_$UserFailuresImpl> get copyWith =>
      __$$UserFailuresImplCopyWithImpl<_$UserFailuresImpl>(this, _$identity);
}

abstract class _UserFailures extends UserFailures {
  const factory _UserFailures({final UserFailuresCode? code}) =
      _$UserFailuresImpl;
  const _UserFailures._() : super._();

  @override
  UserFailuresCode? get code;
  @override
  @JsonKey(ignore: true)
  _$$UserFailuresImplCopyWith<_$UserFailuresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
