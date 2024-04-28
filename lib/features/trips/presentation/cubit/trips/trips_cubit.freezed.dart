// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trips_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Trip> userTrips, List<Trip> sharedTrips)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Trip> userTrips, List<Trip> sharedTrips)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Trip> userTrips, List<Trip> sharedTrips)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripsStateInitial value) initial,
    required TResult Function(TripsStateLoaded value) loaded,
    required TResult Function(TripsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripsStateInitial value)? initial,
    TResult? Function(TripsStateLoaded value)? loaded,
    TResult? Function(TripsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripsStateInitial value)? initial,
    TResult Function(TripsStateLoaded value)? loaded,
    TResult Function(TripsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripsStateCopyWith<$Res> {
  factory $TripsStateCopyWith(
          TripsState value, $Res Function(TripsState) then) =
      _$TripsStateCopyWithImpl<$Res, TripsState>;
}

/// @nodoc
class _$TripsStateCopyWithImpl<$Res, $Val extends TripsState>
    implements $TripsStateCopyWith<$Res> {
  _$TripsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TripsStateInitialImplCopyWith<$Res> {
  factory _$$TripsStateInitialImplCopyWith(_$TripsStateInitialImpl value,
          $Res Function(_$TripsStateInitialImpl) then) =
      __$$TripsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TripsStateInitialImplCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$TripsStateInitialImpl>
    implements _$$TripsStateInitialImplCopyWith<$Res> {
  __$$TripsStateInitialImplCopyWithImpl(_$TripsStateInitialImpl _value,
      $Res Function(_$TripsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TripsStateInitialImpl implements TripsStateInitial {
  const _$TripsStateInitialImpl();

  @override
  String toString() {
    return 'TripsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TripsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Trip> userTrips, List<Trip> sharedTrips)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Trip> userTrips, List<Trip> sharedTrips)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Trip> userTrips, List<Trip> sharedTrips)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripsStateInitial value) initial,
    required TResult Function(TripsStateLoaded value) loaded,
    required TResult Function(TripsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripsStateInitial value)? initial,
    TResult? Function(TripsStateLoaded value)? loaded,
    TResult? Function(TripsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripsStateInitial value)? initial,
    TResult Function(TripsStateLoaded value)? loaded,
    TResult Function(TripsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TripsStateInitial implements TripsState {
  const factory TripsStateInitial() = _$TripsStateInitialImpl;
}

/// @nodoc
abstract class _$$TripsStateLoadedImplCopyWith<$Res> {
  factory _$$TripsStateLoadedImplCopyWith(_$TripsStateLoadedImpl value,
          $Res Function(_$TripsStateLoadedImpl) then) =
      __$$TripsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Trip> userTrips, List<Trip> sharedTrips});
}

/// @nodoc
class __$$TripsStateLoadedImplCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$TripsStateLoadedImpl>
    implements _$$TripsStateLoadedImplCopyWith<$Res> {
  __$$TripsStateLoadedImplCopyWithImpl(_$TripsStateLoadedImpl _value,
      $Res Function(_$TripsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTrips = null,
    Object? sharedTrips = null,
  }) {
    return _then(_$TripsStateLoadedImpl(
      userTrips: null == userTrips
          ? _value._userTrips
          : userTrips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
      sharedTrips: null == sharedTrips
          ? _value._sharedTrips
          : sharedTrips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ));
  }
}

/// @nodoc

class _$TripsStateLoadedImpl implements TripsStateLoaded {
  const _$TripsStateLoadedImpl(
      {required final List<Trip> userTrips,
      required final List<Trip> sharedTrips})
      : _userTrips = userTrips,
        _sharedTrips = sharedTrips;

  final List<Trip> _userTrips;
  @override
  List<Trip> get userTrips {
    if (_userTrips is EqualUnmodifiableListView) return _userTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userTrips);
  }

  final List<Trip> _sharedTrips;
  @override
  List<Trip> get sharedTrips {
    if (_sharedTrips is EqualUnmodifiableListView) return _sharedTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedTrips);
  }

  @override
  String toString() {
    return 'TripsState.loaded(userTrips: $userTrips, sharedTrips: $sharedTrips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._userTrips, _userTrips) &&
            const DeepCollectionEquality()
                .equals(other._sharedTrips, _sharedTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userTrips),
      const DeepCollectionEquality().hash(_sharedTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsStateLoadedImplCopyWith<_$TripsStateLoadedImpl> get copyWith =>
      __$$TripsStateLoadedImplCopyWithImpl<_$TripsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Trip> userTrips, List<Trip> sharedTrips)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(userTrips, sharedTrips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Trip> userTrips, List<Trip> sharedTrips)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(userTrips, sharedTrips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Trip> userTrips, List<Trip> sharedTrips)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userTrips, sharedTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripsStateInitial value) initial,
    required TResult Function(TripsStateLoaded value) loaded,
    required TResult Function(TripsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripsStateInitial value)? initial,
    TResult? Function(TripsStateLoaded value)? loaded,
    TResult? Function(TripsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripsStateInitial value)? initial,
    TResult Function(TripsStateLoaded value)? loaded,
    TResult Function(TripsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TripsStateLoaded implements TripsState {
  const factory TripsStateLoaded(
      {required final List<Trip> userTrips,
      required final List<Trip> sharedTrips}) = _$TripsStateLoadedImpl;

  List<Trip> get userTrips;
  List<Trip> get sharedTrips;
  @JsonKey(ignore: true)
  _$$TripsStateLoadedImplCopyWith<_$TripsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripsStateErrorImplCopyWith<$Res> {
  factory _$$TripsStateErrorImplCopyWith(_$TripsStateErrorImpl value,
          $Res Function(_$TripsStateErrorImpl) then) =
      __$$TripsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TripsStateErrorImplCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$TripsStateErrorImpl>
    implements _$$TripsStateErrorImplCopyWith<$Res> {
  __$$TripsStateErrorImplCopyWithImpl(
      _$TripsStateErrorImpl _value, $Res Function(_$TripsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TripsStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TripsStateErrorImpl implements TripsStateError {
  const _$TripsStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TripsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsStateErrorImplCopyWith<_$TripsStateErrorImpl> get copyWith =>
      __$$TripsStateErrorImplCopyWithImpl<_$TripsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Trip> userTrips, List<Trip> sharedTrips)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Trip> userTrips, List<Trip> sharedTrips)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Trip> userTrips, List<Trip> sharedTrips)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripsStateInitial value) initial,
    required TResult Function(TripsStateLoaded value) loaded,
    required TResult Function(TripsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripsStateInitial value)? initial,
    TResult? Function(TripsStateLoaded value)? loaded,
    TResult? Function(TripsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripsStateInitial value)? initial,
    TResult Function(TripsStateLoaded value)? loaded,
    TResult Function(TripsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TripsStateError implements TripsState {
  const factory TripsStateError({required final String message}) =
      _$TripsStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TripsStateErrorImplCopyWith<_$TripsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
