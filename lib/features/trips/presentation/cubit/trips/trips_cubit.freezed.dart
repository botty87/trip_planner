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
  BannerAdEntity? get ad => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BannerAdEntity? ad) initial,
    required TResult Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)
        loaded,
    required TResult Function(String message, BannerAdEntity? ad) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BannerAdEntity? ad)? initial,
    TResult? Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)?
        loaded,
    TResult? Function(String message, BannerAdEntity? ad)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BannerAdEntity? ad)? initial,
    TResult Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)?
        loaded,
    TResult Function(String message, BannerAdEntity? ad)? error,
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

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripsStateCopyWith<TripsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripsStateCopyWith<$Res> {
  factory $TripsStateCopyWith(
          TripsState value, $Res Function(TripsState) then) =
      _$TripsStateCopyWithImpl<$Res, TripsState>;
  @useResult
  $Res call({BannerAdEntity? ad});
}

/// @nodoc
class _$TripsStateCopyWithImpl<$Res, $Val extends TripsState>
    implements $TripsStateCopyWith<$Res> {
  _$TripsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad = freezed,
  }) {
    return _then(_value.copyWith(
      ad: freezed == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as BannerAdEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripsStateInitialImplCopyWith<$Res>
    implements $TripsStateCopyWith<$Res> {
  factory _$$TripsStateInitialImplCopyWith(_$TripsStateInitialImpl value,
          $Res Function(_$TripsStateInitialImpl) then) =
      __$$TripsStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BannerAdEntity? ad});
}

/// @nodoc
class __$$TripsStateInitialImplCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$TripsStateInitialImpl>
    implements _$$TripsStateInitialImplCopyWith<$Res> {
  __$$TripsStateInitialImplCopyWithImpl(_$TripsStateInitialImpl _value,
      $Res Function(_$TripsStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad = freezed,
  }) {
    return _then(_$TripsStateInitialImpl(
      ad: freezed == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as BannerAdEntity?,
    ));
  }
}

/// @nodoc

class _$TripsStateInitialImpl
    with DiagnosticableTreeMixin
    implements TripsStateInitial {
  const _$TripsStateInitialImpl({this.ad});

  @override
  final BannerAdEntity? ad;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripsState.initial(ad: $ad)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TripsState.initial'))
      ..add(DiagnosticsProperty('ad', ad));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsStateInitialImpl &&
            (identical(other.ad, ad) || other.ad == ad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ad);

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsStateInitialImplCopyWith<_$TripsStateInitialImpl> get copyWith =>
      __$$TripsStateInitialImplCopyWithImpl<_$TripsStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BannerAdEntity? ad) initial,
    required TResult Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)
        loaded,
    required TResult Function(String message, BannerAdEntity? ad) error,
  }) {
    return initial(ad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BannerAdEntity? ad)? initial,
    TResult? Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)?
        loaded,
    TResult? Function(String message, BannerAdEntity? ad)? error,
  }) {
    return initial?.call(ad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BannerAdEntity? ad)? initial,
    TResult Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)?
        loaded,
    TResult Function(String message, BannerAdEntity? ad)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(ad);
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
  const factory TripsStateInitial({final BannerAdEntity? ad}) =
      _$TripsStateInitialImpl;

  @override
  BannerAdEntity? get ad;

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripsStateInitialImplCopyWith<_$TripsStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripsStateLoadedImplCopyWith<$Res>
    implements $TripsStateCopyWith<$Res> {
  factory _$$TripsStateLoadedImplCopyWith(_$TripsStateLoadedImpl value,
          $Res Function(_$TripsStateLoadedImpl) then) =
      __$$TripsStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad});
}

/// @nodoc
class __$$TripsStateLoadedImplCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$TripsStateLoadedImpl>
    implements _$$TripsStateLoadedImplCopyWith<$Res> {
  __$$TripsStateLoadedImplCopyWithImpl(_$TripsStateLoadedImpl _value,
      $Res Function(_$TripsStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTrips = null,
    Object? sharedTrips = null,
    Object? ad = freezed,
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
      ad: freezed == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as BannerAdEntity?,
    ));
  }
}

/// @nodoc

class _$TripsStateLoadedImpl
    with DiagnosticableTreeMixin
    implements TripsStateLoaded {
  const _$TripsStateLoadedImpl(
      {required final List<Trip> userTrips,
      required final List<Trip> sharedTrips,
      this.ad})
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
  final BannerAdEntity? ad;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripsState.loaded(userTrips: $userTrips, sharedTrips: $sharedTrips, ad: $ad)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TripsState.loaded'))
      ..add(DiagnosticsProperty('userTrips', userTrips))
      ..add(DiagnosticsProperty('sharedTrips', sharedTrips))
      ..add(DiagnosticsProperty('ad', ad));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._userTrips, _userTrips) &&
            const DeepCollectionEquality()
                .equals(other._sharedTrips, _sharedTrips) &&
            (identical(other.ad, ad) || other.ad == ad));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userTrips),
      const DeepCollectionEquality().hash(_sharedTrips),
      ad);

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsStateLoadedImplCopyWith<_$TripsStateLoadedImpl> get copyWith =>
      __$$TripsStateLoadedImplCopyWithImpl<_$TripsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BannerAdEntity? ad) initial,
    required TResult Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)
        loaded,
    required TResult Function(String message, BannerAdEntity? ad) error,
  }) {
    return loaded(userTrips, sharedTrips, ad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BannerAdEntity? ad)? initial,
    TResult? Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)?
        loaded,
    TResult? Function(String message, BannerAdEntity? ad)? error,
  }) {
    return loaded?.call(userTrips, sharedTrips, ad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BannerAdEntity? ad)? initial,
    TResult Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)?
        loaded,
    TResult Function(String message, BannerAdEntity? ad)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userTrips, sharedTrips, ad);
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
      required final List<Trip> sharedTrips,
      final BannerAdEntity? ad}) = _$TripsStateLoadedImpl;

  List<Trip> get userTrips;
  List<Trip> get sharedTrips;
  @override
  BannerAdEntity? get ad;

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripsStateLoadedImplCopyWith<_$TripsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripsStateErrorImplCopyWith<$Res>
    implements $TripsStateCopyWith<$Res> {
  factory _$$TripsStateErrorImplCopyWith(_$TripsStateErrorImpl value,
          $Res Function(_$TripsStateErrorImpl) then) =
      __$$TripsStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, BannerAdEntity? ad});
}

/// @nodoc
class __$$TripsStateErrorImplCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$TripsStateErrorImpl>
    implements _$$TripsStateErrorImplCopyWith<$Res> {
  __$$TripsStateErrorImplCopyWithImpl(
      _$TripsStateErrorImpl _value, $Res Function(_$TripsStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? ad = freezed,
  }) {
    return _then(_$TripsStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ad: freezed == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as BannerAdEntity?,
    ));
  }
}

/// @nodoc

class _$TripsStateErrorImpl
    with DiagnosticableTreeMixin
    implements TripsStateError {
  const _$TripsStateErrorImpl({required this.message, this.ad});

  @override
  final String message;
  @override
  final BannerAdEntity? ad;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripsState.error(message: $message, ad: $ad)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TripsState.error'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ad', ad));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsStateErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ad, ad) || other.ad == ad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, ad);

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsStateErrorImplCopyWith<_$TripsStateErrorImpl> get copyWith =>
      __$$TripsStateErrorImplCopyWithImpl<_$TripsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BannerAdEntity? ad) initial,
    required TResult Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)
        loaded,
    required TResult Function(String message, BannerAdEntity? ad) error,
  }) {
    return error(message, ad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BannerAdEntity? ad)? initial,
    TResult? Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)?
        loaded,
    TResult? Function(String message, BannerAdEntity? ad)? error,
  }) {
    return error?.call(message, ad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BannerAdEntity? ad)? initial,
    TResult Function(
            List<Trip> userTrips, List<Trip> sharedTrips, BannerAdEntity? ad)?
        loaded,
    TResult Function(String message, BannerAdEntity? ad)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, ad);
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
  const factory TripsStateError(
      {required final String message,
      final BannerAdEntity? ad}) = _$TripsStateErrorImpl;

  String get message;
  @override
  BannerAdEntity? get ad;

  /// Create a copy of TripsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripsStateErrorImplCopyWith<_$TripsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
