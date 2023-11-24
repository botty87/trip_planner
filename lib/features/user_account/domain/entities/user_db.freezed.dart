// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_db.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDB _$UserDBFromJson(Map<String, dynamic> json) {
  return _UserDB.fromJson(json);
}

/// @nodoc
mixin _$UserDB {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDBCopyWith<UserDB> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDBCopyWith<$Res> {
  factory $UserDBCopyWith(UserDB value, $Res Function(UserDB) then) =
      _$UserDBCopyWithImpl<$Res, UserDB>;
  @useResult
  $Res call({String email, String name});
}

/// @nodoc
class _$UserDBCopyWithImpl<$Res, $Val extends UserDB>
    implements $UserDBCopyWith<$Res> {
  _$UserDBCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDBImplCopyWith<$Res> implements $UserDBCopyWith<$Res> {
  factory _$$UserDBImplCopyWith(
          _$UserDBImpl value, $Res Function(_$UserDBImpl) then) =
      __$$UserDBImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String name});
}

/// @nodoc
class __$$UserDBImplCopyWithImpl<$Res>
    extends _$UserDBCopyWithImpl<$Res, _$UserDBImpl>
    implements _$$UserDBImplCopyWith<$Res> {
  __$$UserDBImplCopyWithImpl(
      _$UserDBImpl _value, $Res Function(_$UserDBImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
  }) {
    return _then(_$UserDBImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDBImpl implements _UserDB {
  _$UserDBImpl({required this.email, required this.name});

  factory _$UserDBImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDBImplFromJson(json);

  @override
  final String email;
  @override
  final String name;

  @override
  String toString() {
    return 'UserDB(email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDBImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDBImplCopyWith<_$UserDBImpl> get copyWith =>
      __$$UserDBImplCopyWithImpl<_$UserDBImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDBImplToJson(
      this,
    );
  }
}

abstract class _UserDB implements UserDB {
  factory _UserDB({required final String email, required final String name}) =
      _$UserDBImpl;

  factory _UserDB.fromJson(Map<String, dynamic> json) = _$UserDBImpl.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UserDBImplCopyWith<_$UserDBImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
