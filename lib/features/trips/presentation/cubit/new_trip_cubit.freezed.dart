// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_trip_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewTripState {
  String? get tripName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? tripName) $default, {
    required TResult Function(String? tripName, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? tripName)? $default, {
    TResult? Function(String? tripName, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? tripName)? $default, {
    TResult Function(String? tripName, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTripState value) $default, {
    required TResult Function(_NewTripStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTripState value)? $default, {
    TResult? Function(_NewTripStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTripState value)? $default, {
    TResult Function(_NewTripStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewTripStateCopyWith<NewTripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTripStateCopyWith<$Res> {
  factory $NewTripStateCopyWith(
          NewTripState value, $Res Function(NewTripState) then) =
      _$NewTripStateCopyWithImpl<$Res, NewTripState>;
  @useResult
  $Res call({String? tripName});
}

/// @nodoc
class _$NewTripStateCopyWithImpl<$Res, $Val extends NewTripState>
    implements $NewTripStateCopyWith<$Res> {
  _$NewTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripName = freezed,
  }) {
    return _then(_value.copyWith(
      tripName: freezed == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewTripStateCopyWith<$Res>
    implements $NewTripStateCopyWith<$Res> {
  factory _$$_NewTripStateCopyWith(
          _$_NewTripState value, $Res Function(_$_NewTripState) then) =
      __$$_NewTripStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tripName});
}

/// @nodoc
class __$$_NewTripStateCopyWithImpl<$Res>
    extends _$NewTripStateCopyWithImpl<$Res, _$_NewTripState>
    implements _$$_NewTripStateCopyWith<$Res> {
  __$$_NewTripStateCopyWithImpl(
      _$_NewTripState _value, $Res Function(_$_NewTripState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripName = freezed,
  }) {
    return _then(_$_NewTripState(
      tripName: freezed == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewTripState implements _NewTripState {
  const _$_NewTripState({this.tripName});

  @override
  final String? tripName;

  @override
  String toString() {
    return 'NewTripState(tripName: $tripName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewTripState &&
            (identical(other.tripName, tripName) ||
                other.tripName == tripName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewTripStateCopyWith<_$_NewTripState> get copyWith =>
      __$$_NewTripStateCopyWithImpl<_$_NewTripState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? tripName) $default, {
    required TResult Function(String? tripName, String message) error,
  }) {
    return $default(tripName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? tripName)? $default, {
    TResult? Function(String? tripName, String message)? error,
  }) {
    return $default?.call(tripName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? tripName)? $default, {
    TResult Function(String? tripName, String message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tripName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTripState value) $default, {
    required TResult Function(_NewTripStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTripState value)? $default, {
    TResult? Function(_NewTripStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTripState value)? $default, {
    TResult Function(_NewTripStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NewTripState implements NewTripState {
  const factory _NewTripState({final String? tripName}) = _$_NewTripState;

  @override
  String? get tripName;
  @override
  @JsonKey(ignore: true)
  _$$_NewTripStateCopyWith<_$_NewTripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewTripStateErrorCopyWith<$Res>
    implements $NewTripStateCopyWith<$Res> {
  factory _$$_NewTripStateErrorCopyWith(_$_NewTripStateError value,
          $Res Function(_$_NewTripStateError) then) =
      __$$_NewTripStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tripName, String message});
}

/// @nodoc
class __$$_NewTripStateErrorCopyWithImpl<$Res>
    extends _$NewTripStateCopyWithImpl<$Res, _$_NewTripStateError>
    implements _$$_NewTripStateErrorCopyWith<$Res> {
  __$$_NewTripStateErrorCopyWithImpl(
      _$_NewTripStateError _value, $Res Function(_$_NewTripStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripName = freezed,
    Object? message = null,
  }) {
    return _then(_$_NewTripStateError(
      tripName: freezed == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewTripStateError implements _NewTripStateError {
  const _$_NewTripStateError({this.tripName, required this.message});

  @override
  final String? tripName;
  @override
  final String message;

  @override
  String toString() {
    return 'NewTripState.error(tripName: $tripName, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewTripStateError &&
            (identical(other.tripName, tripName) ||
                other.tripName == tripName) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripName, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewTripStateErrorCopyWith<_$_NewTripStateError> get copyWith =>
      __$$_NewTripStateErrorCopyWithImpl<_$_NewTripStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? tripName) $default, {
    required TResult Function(String? tripName, String message) error,
  }) {
    return error(tripName, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? tripName)? $default, {
    TResult? Function(String? tripName, String message)? error,
  }) {
    return error?.call(tripName, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? tripName)? $default, {
    TResult Function(String? tripName, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(tripName, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTripState value) $default, {
    required TResult Function(_NewTripStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTripState value)? $default, {
    TResult? Function(_NewTripStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTripState value)? $default, {
    TResult Function(_NewTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NewTripStateError implements NewTripState {
  const factory _NewTripStateError(
      {final String? tripName,
      required final String message}) = _$_NewTripStateError;

  @override
  String? get tripName;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NewTripStateErrorCopyWith<_$_NewTripStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
