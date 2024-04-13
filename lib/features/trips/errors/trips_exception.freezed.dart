// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trips_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripsException {
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
    TResult Function(_TripsException value) $default, {
    required TResult Function(_NoInternetConnection value) noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripsException value)? $default, {
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripsException value)? $default, {
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripsExceptionCopyWith<$Res> {
  factory $TripsExceptionCopyWith(
          TripsException value, $Res Function(TripsException) then) =
      _$TripsExceptionCopyWithImpl<$Res, TripsException>;
}

/// @nodoc
class _$TripsExceptionCopyWithImpl<$Res, $Val extends TripsException>
    implements $TripsExceptionCopyWith<$Res> {
  _$TripsExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TripsExceptionImplCopyWith<$Res> {
  factory _$$TripsExceptionImplCopyWith(_$TripsExceptionImpl value,
          $Res Function(_$TripsExceptionImpl) then) =
      __$$TripsExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TripsExceptionImplCopyWithImpl<$Res>
    extends _$TripsExceptionCopyWithImpl<$Res, _$TripsExceptionImpl>
    implements _$$TripsExceptionImplCopyWith<$Res> {
  __$$TripsExceptionImplCopyWithImpl(
      _$TripsExceptionImpl _value, $Res Function(_$TripsExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TripsExceptionImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TripsExceptionImpl implements _TripsException {
  const _$TripsExceptionImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'TripsException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsExceptionImplCopyWith<_$TripsExceptionImpl> get copyWith =>
      __$$TripsExceptionImplCopyWithImpl<_$TripsExceptionImpl>(
          this, _$identity);

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
    TResult Function(_TripsException value) $default, {
    required TResult Function(_NoInternetConnection value) noInternetConnection,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripsException value)? $default, {
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripsException value)? $default, {
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TripsException implements TripsException {
  const factory _TripsException({final String? message}) = _$TripsExceptionImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$TripsExceptionImplCopyWith<_$TripsExceptionImpl> get copyWith =>
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
    extends _$TripsExceptionCopyWithImpl<$Res, _$NoInternetConnectionImpl>
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
    return 'TripsException.noInternetConnection()';
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
    TResult Function(_TripsException value) $default, {
    required TResult Function(_NoInternetConnection value) noInternetConnection,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripsException value)? $default, {
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripsException value)? $default, {
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements TripsException {
  const factory _NoInternetConnection() = _$NoInternetConnectionImpl;
}

/// @nodoc
mixin _$ShareTripException {
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
    TResult Function(_ShareTripException value) $default, {
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_SNoInternetConnection value)
        noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShareTripException value)? $default, {
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_SNoInternetConnection value)? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShareTripException value)? $default, {
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_SNoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareTripExceptionCopyWith<$Res> {
  factory $ShareTripExceptionCopyWith(
          ShareTripException value, $Res Function(ShareTripException) then) =
      _$ShareTripExceptionCopyWithImpl<$Res, ShareTripException>;
}

/// @nodoc
class _$ShareTripExceptionCopyWithImpl<$Res, $Val extends ShareTripException>
    implements $ShareTripExceptionCopyWith<$Res> {
  _$ShareTripExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShareTripExceptionImplCopyWith<$Res> {
  factory _$$ShareTripExceptionImplCopyWith(_$ShareTripExceptionImpl value,
          $Res Function(_$ShareTripExceptionImpl) then) =
      __$$ShareTripExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ShareTripExceptionImplCopyWithImpl<$Res>
    extends _$ShareTripExceptionCopyWithImpl<$Res, _$ShareTripExceptionImpl>
    implements _$$ShareTripExceptionImplCopyWith<$Res> {
  __$$ShareTripExceptionImplCopyWithImpl(_$ShareTripExceptionImpl _value,
      $Res Function(_$ShareTripExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShareTripExceptionImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShareTripExceptionImpl implements _ShareTripException {
  const _$ShareTripExceptionImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ShareTripException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareTripExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareTripExceptionImplCopyWith<_$ShareTripExceptionImpl> get copyWith =>
      __$$ShareTripExceptionImplCopyWithImpl<_$ShareTripExceptionImpl>(
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
    TResult Function(_ShareTripException value) $default, {
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_SNoInternetConnection value)
        noInternetConnection,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShareTripException value)? $default, {
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_SNoInternetConnection value)? noInternetConnection,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShareTripException value)? $default, {
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_SNoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ShareTripException implements ShareTripException {
  const factory _ShareTripException({final String? message}) =
      _$ShareTripExceptionImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ShareTripExceptionImplCopyWith<_$ShareTripExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotFoundImplCopyWith<$Res> {
  factory _$$UserNotFoundImplCopyWith(
          _$UserNotFoundImpl value, $Res Function(_$UserNotFoundImpl) then) =
      __$$UserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundImplCopyWithImpl<$Res>
    extends _$ShareTripExceptionCopyWithImpl<$Res, _$UserNotFoundImpl>
    implements _$$UserNotFoundImplCopyWith<$Res> {
  __$$UserNotFoundImplCopyWithImpl(
      _$UserNotFoundImpl _value, $Res Function(_$UserNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotFoundImpl implements _UserNotFound {
  const _$UserNotFoundImpl();

  @override
  String toString() {
    return 'ShareTripException.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFoundImpl);
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
    TResult Function(_ShareTripException value) $default, {
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_SNoInternetConnection value)
        noInternetConnection,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShareTripException value)? $default, {
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_SNoInternetConnection value)? noInternetConnection,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShareTripException value)? $default, {
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_SNoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements ShareTripException {
  const factory _UserNotFound() = _$UserNotFoundImpl;
}

/// @nodoc
abstract class _$$SNoInternetConnectionImplCopyWith<$Res> {
  factory _$$SNoInternetConnectionImplCopyWith(
          _$SNoInternetConnectionImpl value,
          $Res Function(_$SNoInternetConnectionImpl) then) =
      __$$SNoInternetConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SNoInternetConnectionImplCopyWithImpl<$Res>
    extends _$ShareTripExceptionCopyWithImpl<$Res, _$SNoInternetConnectionImpl>
    implements _$$SNoInternetConnectionImplCopyWith<$Res> {
  __$$SNoInternetConnectionImplCopyWithImpl(_$SNoInternetConnectionImpl _value,
      $Res Function(_$SNoInternetConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SNoInternetConnectionImpl implements _SNoInternetConnection {
  const _$SNoInternetConnectionImpl();

  @override
  String toString() {
    return 'ShareTripException.noInternetConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SNoInternetConnectionImpl);
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
    TResult Function(_ShareTripException value) $default, {
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_SNoInternetConnection value)
        noInternetConnection,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShareTripException value)? $default, {
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_SNoInternetConnection value)? noInternetConnection,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShareTripException value)? $default, {
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_SNoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _SNoInternetConnection implements ShareTripException {
  const factory _SNoInternetConnection() = _$SNoInternetConnectionImpl;
}
