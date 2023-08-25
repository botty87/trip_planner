// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_places_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GooglePlacesException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_RequestDenied value) requestDenied,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_RequestDenied value)? requestDenied,
    TResult? Function(_RequestCancelled value)? requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_RequestDenied value)? requestDenied,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglePlacesExceptionCopyWith<$Res> {
  factory $GooglePlacesExceptionCopyWith(GooglePlacesException value,
          $Res Function(GooglePlacesException) then) =
      _$GooglePlacesExceptionCopyWithImpl<$Res, GooglePlacesException>;
}

/// @nodoc
class _$GooglePlacesExceptionCopyWithImpl<$Res,
        $Val extends GooglePlacesException>
    implements $GooglePlacesExceptionCopyWith<$Res> {
  _$GooglePlacesExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoInternetConnectionCopyWith<$Res> {
  factory _$$_NoInternetConnectionCopyWith(_$_NoInternetConnection value,
          $Res Function(_$_NoInternetConnection) then) =
      __$$_NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetConnectionCopyWithImpl<$Res>
    extends _$GooglePlacesExceptionCopyWithImpl<$Res, _$_NoInternetConnection>
    implements _$$_NoInternetConnectionCopyWith<$Res> {
  __$$_NoInternetConnectionCopyWithImpl(_$_NoInternetConnection _value,
      $Res Function(_$_NoInternetConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoInternetConnection implements _NoInternetConnection {
  const _$_NoInternetConnection();

  @override
  String toString() {
    return 'GooglePlacesException.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_RequestDenied value) requestDenied,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_RequestDenied value)? requestDenied,
    TResult? Function(_RequestCancelled value)? requestCancelled,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_RequestDenied value)? requestDenied,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements GooglePlacesException {
  const factory _NoInternetConnection() = _$_NoInternetConnection;
}

/// @nodoc
abstract class _$$_RequestDeniedCopyWith<$Res> {
  factory _$$_RequestDeniedCopyWith(
          _$_RequestDenied value, $Res Function(_$_RequestDenied) then) =
      __$$_RequestDeniedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_RequestDeniedCopyWithImpl<$Res>
    extends _$GooglePlacesExceptionCopyWithImpl<$Res, _$_RequestDenied>
    implements _$$_RequestDeniedCopyWith<$Res> {
  __$$_RequestDeniedCopyWithImpl(
      _$_RequestDenied _value, $Res Function(_$_RequestDenied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_RequestDenied(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestDenied implements _RequestDenied {
  const _$_RequestDenied({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GooglePlacesException.requestDenied(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestDenied &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestDeniedCopyWith<_$_RequestDenied> get copyWith =>
      __$$_RequestDeniedCopyWithImpl<_$_RequestDenied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
  }) {
    return requestDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
  }) {
    return requestDenied?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestDenied != null) {
      return requestDenied(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_RequestDenied value) requestDenied,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) {
    return requestDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_RequestDenied value)? requestDenied,
    TResult? Function(_RequestCancelled value)? requestCancelled,
  }) {
    return requestDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_RequestDenied value)? requestDenied,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestDenied != null) {
      return requestDenied(this);
    }
    return orElse();
  }
}

abstract class _RequestDenied implements GooglePlacesException {
  const factory _RequestDenied({required final String message}) =
      _$_RequestDenied;

  String get message;
  @JsonKey(ignore: true)
  _$$_RequestDeniedCopyWith<_$_RequestDenied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestCancelledCopyWith<$Res> {
  factory _$$_RequestCancelledCopyWith(
          _$_RequestCancelled value, $Res Function(_$_RequestCancelled) then) =
      __$$_RequestCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestCancelledCopyWithImpl<$Res>
    extends _$GooglePlacesExceptionCopyWithImpl<$Res, _$_RequestCancelled>
    implements _$$_RequestCancelledCopyWith<$Res> {
  __$$_RequestCancelledCopyWithImpl(
      _$_RequestCancelled _value, $Res Function(_$_RequestCancelled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestCancelled implements _RequestCancelled {
  const _$_RequestCancelled();

  @override
  String toString() {
    return 'GooglePlacesException.requestCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
  }) {
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
  }) {
    return requestCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_RequestDenied value) requestDenied,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_RequestDenied value)? requestDenied,
    TResult? Function(_RequestCancelled value)? requestCancelled,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_RequestDenied value)? requestDenied,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class _RequestCancelled implements GooglePlacesException {
  const factory _RequestCancelled() = _$_RequestCancelled;
}
