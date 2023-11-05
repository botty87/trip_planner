// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountState {
  User get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) normal,
    required TResult Function(User user, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? normal,
    TResult? Function(User user, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? normal,
    TResult Function(User user, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountStateNormal value) normal,
    required TResult Function(_AccountStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountStateNormal value)? normal,
    TResult? Function(_AccountStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountStateNormal value)? normal,
    TResult Function(_AccountStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountStateNormalCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_AccountStateNormalCopyWith(_$_AccountStateNormal value,
          $Res Function(_$_AccountStateNormal) then) =
      __$$_AccountStateNormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AccountStateNormalCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountStateNormal>
    implements _$$_AccountStateNormalCopyWith<$Res> {
  __$$_AccountStateNormalCopyWithImpl(
      _$_AccountStateNormal _value, $Res Function(_$_AccountStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AccountStateNormal(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AccountStateNormal implements _AccountStateNormal {
  const _$_AccountStateNormal({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AccountState.normal(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountStateNormal &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountStateNormalCopyWith<_$_AccountStateNormal> get copyWith =>
      __$$_AccountStateNormalCopyWithImpl<_$_AccountStateNormal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) normal,
    required TResult Function(User user, String message) error,
  }) {
    return normal(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? normal,
    TResult? Function(User user, String message)? error,
  }) {
    return normal?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? normal,
    TResult Function(User user, String message)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountStateNormal value) normal,
    required TResult Function(_AccountStateError value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountStateNormal value)? normal,
    TResult? Function(_AccountStateError value)? error,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountStateNormal value)? normal,
    TResult Function(_AccountStateError value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _AccountStateNormal implements AccountState {
  const factory _AccountStateNormal({required final User user}) =
      _$_AccountStateNormal;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_AccountStateNormalCopyWith<_$_AccountStateNormal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountStateErrorCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_AccountStateErrorCopyWith(_$_AccountStateError value,
          $Res Function(_$_AccountStateError) then) =
      __$$_AccountStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String message});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AccountStateErrorCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountStateError>
    implements _$$_AccountStateErrorCopyWith<$Res> {
  __$$_AccountStateErrorCopyWithImpl(
      _$_AccountStateError _value, $Res Function(_$_AccountStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? message = null,
  }) {
    return _then(_$_AccountStateError(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountStateError implements _AccountStateError {
  const _$_AccountStateError({required this.user, required this.message});

  @override
  final User user;
  @override
  final String message;

  @override
  String toString() {
    return 'AccountState.error(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountStateError &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountStateErrorCopyWith<_$_AccountStateError> get copyWith =>
      __$$_AccountStateErrorCopyWithImpl<_$_AccountStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) normal,
    required TResult Function(User user, String message) error,
  }) {
    return error(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? normal,
    TResult? Function(User user, String message)? error,
  }) {
    return error?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? normal,
    TResult Function(User user, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountStateNormal value) normal,
    required TResult Function(_AccountStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountStateNormal value)? normal,
    TResult? Function(_AccountStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountStateNormal value)? normal,
    TResult Function(_AccountStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AccountStateError implements AccountState {
  const factory _AccountStateError(
      {required final User user,
      required final String message}) = _$_AccountStateError;

  @override
  User get user;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_AccountStateErrorCopyWith<_$_AccountStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
