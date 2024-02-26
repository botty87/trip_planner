// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(User user) loggedIn,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(User user)? loggedIn,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoggedOut value) loggedOut,
    required TResult Function(UserStateLoggedIn value) loggedIn,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoggedOut value)? loggedOut,
    TResult? Function(UserStateLoggedIn value)? loggedIn,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoggedOut value)? loggedOut,
    TResult Function(UserStateLoggedIn value)? loggedIn,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserStateLoggedOutImplCopyWith<$Res> {
  factory _$$UserStateLoggedOutImplCopyWith(_$UserStateLoggedOutImpl value,
          $Res Function(_$UserStateLoggedOutImpl) then) =
      __$$UserStateLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateLoggedOutImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoggedOutImpl>
    implements _$$UserStateLoggedOutImplCopyWith<$Res> {
  __$$UserStateLoggedOutImplCopyWithImpl(_$UserStateLoggedOutImpl _value,
      $Res Function(_$UserStateLoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateLoggedOutImpl implements UserStateLoggedOut {
  const _$UserStateLoggedOutImpl();

  @override
  String toString() {
    return 'UserState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(User user) loggedIn,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(User user)? loggedIn,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoggedOut value) loggedOut,
    required TResult Function(UserStateLoggedIn value) loggedIn,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoggedOut value)? loggedOut,
    TResult? Function(UserStateLoggedIn value)? loggedIn,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoggedOut value)? loggedOut,
    TResult Function(UserStateLoggedIn value)? loggedIn,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class UserStateLoggedOut implements UserState {
  const factory UserStateLoggedOut() = _$UserStateLoggedOutImpl;
}

/// @nodoc
abstract class _$$UserStateLoggedInImplCopyWith<$Res> {
  factory _$$UserStateLoggedInImplCopyWith(_$UserStateLoggedInImpl value,
          $Res Function(_$UserStateLoggedInImpl) then) =
      __$$UserStateLoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserStateLoggedInImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoggedInImpl>
    implements _$$UserStateLoggedInImplCopyWith<$Res> {
  __$$UserStateLoggedInImplCopyWithImpl(_$UserStateLoggedInImpl _value,
      $Res Function(_$UserStateLoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserStateLoggedInImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserStateLoggedInImpl implements UserStateLoggedIn {
  const _$UserStateLoggedInImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateLoggedInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateLoggedInImplCopyWith<_$UserStateLoggedInImpl> get copyWith =>
      __$$UserStateLoggedInImplCopyWithImpl<_$UserStateLoggedInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(User user) loggedIn,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(User user)? loggedIn,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoggedOut value) loggedOut,
    required TResult Function(UserStateLoggedIn value) loggedIn,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoggedOut value)? loggedOut,
    TResult? Function(UserStateLoggedIn value)? loggedIn,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoggedOut value)? loggedOut,
    TResult Function(UserStateLoggedIn value)? loggedIn,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class UserStateLoggedIn implements UserState {
  const factory UserStateLoggedIn({required final User user}) =
      _$UserStateLoggedInImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UserStateLoggedInImplCopyWith<_$UserStateLoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateLoadingImplCopyWith<$Res> {
  factory _$$UserStateLoadingImplCopyWith(_$UserStateLoadingImpl value,
          $Res Function(_$UserStateLoadingImpl) then) =
      __$$UserStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoadingImpl>
    implements _$$UserStateLoadingImplCopyWith<$Res> {
  __$$UserStateLoadingImplCopyWithImpl(_$UserStateLoadingImpl _value,
      $Res Function(_$UserStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateLoadingImpl implements UserStateLoading {
  const _$UserStateLoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(User user) loggedIn,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(User user)? loggedIn,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoggedOut value) loggedOut,
    required TResult Function(UserStateLoggedIn value) loggedIn,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoggedOut value)? loggedOut,
    TResult? Function(UserStateLoggedIn value)? loggedIn,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoggedOut value)? loggedOut,
    TResult Function(UserStateLoggedIn value)? loggedIn,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStateLoading implements UserState {
  const factory UserStateLoading() = _$UserStateLoadingImpl;
}

/// @nodoc
abstract class _$$UserStateErrorImplCopyWith<$Res> {
  factory _$$UserStateErrorImplCopyWith(_$UserStateErrorImpl value,
          $Res Function(_$UserStateErrorImpl) then) =
      __$$UserStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateErrorImpl>
    implements _$$UserStateErrorImplCopyWith<$Res> {
  __$$UserStateErrorImplCopyWithImpl(
      _$UserStateErrorImpl _value, $Res Function(_$UserStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateErrorImpl implements UserStateError {
  const _$UserStateErrorImpl();

  @override
  String toString() {
    return 'UserState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(User user) loggedIn,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(User user)? loggedIn,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoggedOut value) loggedOut,
    required TResult Function(UserStateLoggedIn value) loggedIn,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoggedOut value)? loggedOut,
    TResult? Function(UserStateLoggedIn value)? loggedIn,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoggedOut value)? loggedOut,
    TResult Function(UserStateLoggedIn value)? loggedIn,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserStateError implements UserState {
  const factory UserStateError() = _$UserStateErrorImpl;
}
