// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapState {
  bool get isMapReady => throw _privateConstructorUsedError;
  MapType get mapType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)
        multiple,
    required TResult Function(
            bool isMapReady, MapType mapType, LatLng? markerPosition)
        single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult? Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateMultiple value) multiple,
    required TResult Function(_MapStateSingle value) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateMultiple value)? multiple,
    TResult? Function(_MapStateSingle value)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateMultiple value)? multiple,
    TResult Function(_MapStateSingle value)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call({bool isMapReady, MapType mapType});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMapReady = null,
    Object? mapType = null,
  }) {
    return _then(_value.copyWith(
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapStateMultipleImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateMultipleImplCopyWith(_$MapStateMultipleImpl value,
          $Res Function(_$MapStateMultipleImpl) then) =
      __$$MapStateMultipleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds});
}

/// @nodoc
class __$$MapStateMultipleImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateMultipleImpl>
    implements _$$MapStateMultipleImplCopyWith<$Res> {
  __$$MapStateMultipleImplCopyWithImpl(_$MapStateMultipleImpl _value,
      $Res Function(_$MapStateMultipleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMapReady = null,
    Object? mapType = null,
    Object? markerLatLngBounds = freezed,
  }) {
    return _then(_$MapStateMultipleImpl(
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
      markerLatLngBounds: freezed == markerLatLngBounds
          ? _value.markerLatLngBounds
          : markerLatLngBounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
    ));
  }
}

/// @nodoc

class _$MapStateMultipleImpl extends _MapStateMultiple {
  const _$MapStateMultipleImpl(
      {this.isMapReady = false,
      this.mapType = MapType.hybrid,
      this.markerLatLngBounds})
      : super._();

  @override
  @JsonKey()
  final bool isMapReady;
  @override
  @JsonKey()
  final MapType mapType;
  @override
  final LatLngBounds? markerLatLngBounds;

  @override
  String toString() {
    return 'MapState.multiple(isMapReady: $isMapReady, mapType: $mapType, markerLatLngBounds: $markerLatLngBounds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateMultipleImpl &&
            (identical(other.isMapReady, isMapReady) ||
                other.isMapReady == isMapReady) &&
            (identical(other.mapType, mapType) || other.mapType == mapType) &&
            (identical(other.markerLatLngBounds, markerLatLngBounds) ||
                other.markerLatLngBounds == markerLatLngBounds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isMapReady, mapType, markerLatLngBounds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateMultipleImplCopyWith<_$MapStateMultipleImpl> get copyWith =>
      __$$MapStateMultipleImplCopyWithImpl<_$MapStateMultipleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)
        multiple,
    required TResult Function(
            bool isMapReady, MapType mapType, LatLng? markerPosition)
        single,
  }) {
    return multiple(isMapReady, mapType, markerLatLngBounds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult? Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
  }) {
    return multiple?.call(isMapReady, mapType, markerLatLngBounds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
    required TResult orElse(),
  }) {
    if (multiple != null) {
      return multiple(isMapReady, mapType, markerLatLngBounds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateMultiple value) multiple,
    required TResult Function(_MapStateSingle value) single,
  }) {
    return multiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateMultiple value)? multiple,
    TResult? Function(_MapStateSingle value)? single,
  }) {
    return multiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateMultiple value)? multiple,
    TResult Function(_MapStateSingle value)? single,
    required TResult orElse(),
  }) {
    if (multiple != null) {
      return multiple(this);
    }
    return orElse();
  }
}

abstract class _MapStateMultiple extends MapState {
  const factory _MapStateMultiple(
      {final bool isMapReady,
      final MapType mapType,
      final LatLngBounds? markerLatLngBounds}) = _$MapStateMultipleImpl;
  const _MapStateMultiple._() : super._();

  @override
  bool get isMapReady;
  @override
  MapType get mapType;
  LatLngBounds? get markerLatLngBounds;
  @override
  @JsonKey(ignore: true)
  _$$MapStateMultipleImplCopyWith<_$MapStateMultipleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapStateSingleImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateSingleImplCopyWith(_$MapStateSingleImpl value,
          $Res Function(_$MapStateSingleImpl) then) =
      __$$MapStateSingleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMapReady, MapType mapType, LatLng? markerPosition});
}

/// @nodoc
class __$$MapStateSingleImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateSingleImpl>
    implements _$$MapStateSingleImplCopyWith<$Res> {
  __$$MapStateSingleImplCopyWithImpl(
      _$MapStateSingleImpl _value, $Res Function(_$MapStateSingleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMapReady = null,
    Object? mapType = null,
    Object? markerPosition = freezed,
  }) {
    return _then(_$MapStateSingleImpl(
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
      markerPosition: freezed == markerPosition
          ? _value.markerPosition
          : markerPosition // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$MapStateSingleImpl extends _MapStateSingle {
  const _$MapStateSingleImpl(
      {this.isMapReady = false,
      this.mapType = MapType.hybrid,
      this.markerPosition})
      : super._();

  @override
  @JsonKey()
  final bool isMapReady;
  @override
  @JsonKey()
  final MapType mapType;
  @override
  final LatLng? markerPosition;

  @override
  String toString() {
    return 'MapState.single(isMapReady: $isMapReady, mapType: $mapType, markerPosition: $markerPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateSingleImpl &&
            (identical(other.isMapReady, isMapReady) ||
                other.isMapReady == isMapReady) &&
            (identical(other.mapType, mapType) || other.mapType == mapType) &&
            (identical(other.markerPosition, markerPosition) ||
                other.markerPosition == markerPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isMapReady, mapType, markerPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateSingleImplCopyWith<_$MapStateSingleImpl> get copyWith =>
      __$$MapStateSingleImplCopyWithImpl<_$MapStateSingleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)
        multiple,
    required TResult Function(
            bool isMapReady, MapType mapType, LatLng? markerPosition)
        single,
  }) {
    return single(isMapReady, mapType, markerPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult? Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
  }) {
    return single?.call(isMapReady, mapType, markerPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(isMapReady, mapType, markerPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateMultiple value) multiple,
    required TResult Function(_MapStateSingle value) single,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateMultiple value)? multiple,
    TResult? Function(_MapStateSingle value)? single,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateMultiple value)? multiple,
    TResult Function(_MapStateSingle value)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }
}

abstract class _MapStateSingle extends MapState {
  const factory _MapStateSingle(
      {final bool isMapReady,
      final MapType mapType,
      final LatLng? markerPosition}) = _$MapStateSingleImpl;
  const _MapStateSingle._() : super._();

  @override
  bool get isMapReady;
  @override
  MapType get mapType;
  LatLng? get markerPosition;
  @override
  @JsonKey(ignore: true)
  _$$MapStateSingleImplCopyWith<_$MapStateSingleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
