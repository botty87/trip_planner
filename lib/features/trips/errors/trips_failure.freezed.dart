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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripsFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function()? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripsFailure value) $default, {
    required TResult Function(_NoInternetConnection value) noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripsFailure value)? $default, {
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripsFailure value)? $default, {
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripsFailureCopyWith<$Res> {
  factory $TripsFailureCopyWith(
          TripsFailure value, $Res Function(TripsFailure) then) =
      _$TripsFailureCopyWithImpl<$Res, TripsFailure>;
}

/// @nodoc
class _$TripsFailureCopyWithImpl<$Res, $Val extends TripsFailure>
    implements $TripsFailureCopyWith<$Res> {
  _$TripsFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TripsFailureImplCopyWith<$Res> {
  factory _$$TripsFailureImplCopyWith(
          _$TripsFailureImpl value, $Res Function(_$TripsFailureImpl) then) =
      __$$TripsFailureImplCopyWithImpl<$Res>;
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
  bool operator ==(Object other) {
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() noInternetConnection,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function()? noInternetConnection,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripsFailure value) $default, {
    required TResult Function(_NoInternetConnection value) noInternetConnection,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripsFailure value)? $default, {
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripsFailure value)? $default, {
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TripsFailure implements TripsFailure {
  const factory _TripsFailure({final String? message}) = _$TripsFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$TripsFailureImplCopyWith<_$TripsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetConnectionImplCopyWith<$Res> {
  factory _$$NoInternetConnectionImplCopyWith(_$NoInternetConnectionImpl value,
          $Res Function(_$NoInternetConnectionImpl) then) =
      __$$NoInternetConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionImplCopyWithImpl<$Res>
    extends _$TripsFailureCopyWithImpl<$Res, _$NoInternetConnectionImpl>
    implements _$$NoInternetConnectionImplCopyWith<$Res> {
  __$$NoInternetConnectionImplCopyWithImpl(_$NoInternetConnectionImpl _value,
      $Res Function(_$NoInternetConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetConnectionImpl implements _NoInternetConnection {
  const _$NoInternetConnectionImpl();

  @override
  String toString() {
    return 'TripsFailure.noInternetConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() noInternetConnection,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function()? noInternetConnection,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripsFailure value) $default, {
    required TResult Function(_NoInternetConnection value) noInternetConnection,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripsFailure value)? $default, {
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripsFailure value)? $default, {
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements TripsFailure {
  const factory _NoInternetConnection() = _$NoInternetConnectionImpl;
}

/// @nodoc
mixin _$ShareTripFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() userNotFound,
    required TResult Function() noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function()? userNotFound,
    TResult? Function()? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? userNotFound,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShareTripFailure value) $default, {
    required TResult Function(ShareTripFailureUserNotFound value) userNotFound,
    required TResult Function(ShareTripFailureNoInternetConnection value)
        noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShareTripFailure value)? $default, {
    TResult? Function(ShareTripFailureUserNotFound value)? userNotFound,
    TResult? Function(ShareTripFailureNoInternetConnection value)?
        noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShareTripFailure value)? $default, {
    TResult Function(ShareTripFailureUserNotFound value)? userNotFound,
    TResult Function(ShareTripFailureNoInternetConnection value)?
        noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareTripFailureCopyWith<$Res> {
  factory $ShareTripFailureCopyWith(
          ShareTripFailure value, $Res Function(ShareTripFailure) then) =
      _$ShareTripFailureCopyWithImpl<$Res, ShareTripFailure>;
}

/// @nodoc
class _$ShareTripFailureCopyWithImpl<$Res, $Val extends ShareTripFailure>
    implements $ShareTripFailureCopyWith<$Res> {
  _$ShareTripFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShareTripFailureImplCopyWith<$Res> {
  factory _$$ShareTripFailureImplCopyWith(_$ShareTripFailureImpl value,
          $Res Function(_$ShareTripFailureImpl) then) =
      __$$ShareTripFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ShareTripFailureImplCopyWithImpl<$Res>
    extends _$ShareTripFailureCopyWithImpl<$Res, _$ShareTripFailureImpl>
    implements _$$ShareTripFailureImplCopyWith<$Res> {
  __$$ShareTripFailureImplCopyWithImpl(_$ShareTripFailureImpl _value,
      $Res Function(_$ShareTripFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShareTripFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShareTripFailureImpl implements _ShareTripFailure {
  const _$ShareTripFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ShareTripFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareTripFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareTripFailureImplCopyWith<_$ShareTripFailureImpl> get copyWith =>
      __$$ShareTripFailureImplCopyWithImpl<_$ShareTripFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() userNotFound,
    required TResult Function() noInternetConnection,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function()? userNotFound,
    TResult? Function()? noInternetConnection,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? userNotFound,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShareTripFailure value) $default, {
    required TResult Function(ShareTripFailureUserNotFound value) userNotFound,
    required TResult Function(ShareTripFailureNoInternetConnection value)
        noInternetConnection,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShareTripFailure value)? $default, {
    TResult? Function(ShareTripFailureUserNotFound value)? userNotFound,
    TResult? Function(ShareTripFailureNoInternetConnection value)?
        noInternetConnection,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShareTripFailure value)? $default, {
    TResult Function(ShareTripFailureUserNotFound value)? userNotFound,
    TResult Function(ShareTripFailureNoInternetConnection value)?
        noInternetConnection,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ShareTripFailure implements ShareTripFailure {
  const factory _ShareTripFailure({final String? message}) =
      _$ShareTripFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ShareTripFailureImplCopyWith<_$ShareTripFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareTripFailureUserNotFoundImplCopyWith<$Res> {
  factory _$$ShareTripFailureUserNotFoundImplCopyWith(
          _$ShareTripFailureUserNotFoundImpl value,
          $Res Function(_$ShareTripFailureUserNotFoundImpl) then) =
      __$$ShareTripFailureUserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareTripFailureUserNotFoundImplCopyWithImpl<$Res>
    extends _$ShareTripFailureCopyWithImpl<$Res,
        _$ShareTripFailureUserNotFoundImpl>
    implements _$$ShareTripFailureUserNotFoundImplCopyWith<$Res> {
  __$$ShareTripFailureUserNotFoundImplCopyWithImpl(
      _$ShareTripFailureUserNotFoundImpl _value,
      $Res Function(_$ShareTripFailureUserNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShareTripFailureUserNotFoundImpl
    implements ShareTripFailureUserNotFound {
  const _$ShareTripFailureUserNotFoundImpl();

  @override
  String toString() {
    return 'ShareTripFailure.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareTripFailureUserNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() userNotFound,
    required TResult Function() noInternetConnection,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function()? userNotFound,
    TResult? Function()? noInternetConnection,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? userNotFound,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShareTripFailure value) $default, {
    required TResult Function(ShareTripFailureUserNotFound value) userNotFound,
    required TResult Function(ShareTripFailureNoInternetConnection value)
        noInternetConnection,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShareTripFailure value)? $default, {
    TResult? Function(ShareTripFailureUserNotFound value)? userNotFound,
    TResult? Function(ShareTripFailureNoInternetConnection value)?
        noInternetConnection,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShareTripFailure value)? $default, {
    TResult Function(ShareTripFailureUserNotFound value)? userNotFound,
    TResult Function(ShareTripFailureNoInternetConnection value)?
        noInternetConnection,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class ShareTripFailureUserNotFound implements ShareTripFailure {
  const factory ShareTripFailureUserNotFound() =
      _$ShareTripFailureUserNotFoundImpl;
}

/// @nodoc
abstract class _$$ShareTripFailureNoInternetConnectionImplCopyWith<$Res> {
  factory _$$ShareTripFailureNoInternetConnectionImplCopyWith(
          _$ShareTripFailureNoInternetConnectionImpl value,
          $Res Function(_$ShareTripFailureNoInternetConnectionImpl) then) =
      __$$ShareTripFailureNoInternetConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareTripFailureNoInternetConnectionImplCopyWithImpl<$Res>
    extends _$ShareTripFailureCopyWithImpl<$Res,
        _$ShareTripFailureNoInternetConnectionImpl>
    implements _$$ShareTripFailureNoInternetConnectionImplCopyWith<$Res> {
  __$$ShareTripFailureNoInternetConnectionImplCopyWithImpl(
      _$ShareTripFailureNoInternetConnectionImpl _value,
      $Res Function(_$ShareTripFailureNoInternetConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShareTripFailureNoInternetConnectionImpl
    implements ShareTripFailureNoInternetConnection {
  const _$ShareTripFailureNoInternetConnectionImpl();

  @override
  String toString() {
    return 'ShareTripFailure.noInternetConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareTripFailureNoInternetConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() userNotFound,
    required TResult Function() noInternetConnection,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function()? userNotFound,
    TResult? Function()? noInternetConnection,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? userNotFound,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShareTripFailure value) $default, {
    required TResult Function(ShareTripFailureUserNotFound value) userNotFound,
    required TResult Function(ShareTripFailureNoInternetConnection value)
        noInternetConnection,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShareTripFailure value)? $default, {
    TResult? Function(ShareTripFailureUserNotFound value)? userNotFound,
    TResult? Function(ShareTripFailureNoInternetConnection value)?
        noInternetConnection,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShareTripFailure value)? $default, {
    TResult Function(ShareTripFailureUserNotFound value)? userNotFound,
    TResult Function(ShareTripFailureNoInternetConnection value)?
        noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class ShareTripFailureNoInternetConnection
    implements ShareTripFailure {
  const factory ShareTripFailureNoInternetConnection() =
      _$ShareTripFailureNoInternetConnectionImpl;
}
