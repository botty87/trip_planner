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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    required TResult Function(bool isMapReady, MapType mapType) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult? Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
    TResult? Function(bool isMapReady, MapType mapType)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
    TResult Function(bool isMapReady, MapType mapType)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateMultiple value) multiple,
    required TResult Function(_MapStateSingle value) single,
    required TResult Function(_MapStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateMultiple value)? multiple,
    TResult? Function(_MapStateSingle value)? single,
    TResult? Function(_MapStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateMultiple value)? multiple,
    TResult Function(_MapStateSingle value)? single,
    TResult Function(_MapStateEmpty value)? empty,
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
  bool operator ==(Object other) {
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
    required TResult Function(bool isMapReady, MapType mapType) empty,
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
    TResult? Function(bool isMapReady, MapType mapType)? empty,
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
    TResult Function(bool isMapReady, MapType mapType)? empty,
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
    required TResult Function(_MapStateEmpty value) empty,
  }) {
    return multiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateMultiple value)? multiple,
    TResult? Function(_MapStateSingle value)? single,
    TResult? Function(_MapStateEmpty value)? empty,
  }) {
    return multiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateMultiple value)? multiple,
    TResult Function(_MapStateSingle value)? single,
    TResult Function(_MapStateEmpty value)? empty,
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
  bool operator ==(Object other) {
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
    required TResult Function(bool isMapReady, MapType mapType) empty,
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
    TResult? Function(bool isMapReady, MapType mapType)? empty,
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
    TResult Function(bool isMapReady, MapType mapType)? empty,
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
    required TResult Function(_MapStateEmpty value) empty,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateMultiple value)? multiple,
    TResult? Function(_MapStateSingle value)? single,
    TResult? Function(_MapStateEmpty value)? empty,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateMultiple value)? multiple,
    TResult Function(_MapStateSingle value)? single,
    TResult Function(_MapStateEmpty value)? empty,
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

/// @nodoc
abstract class _$$MapStateEmptyImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateEmptyImplCopyWith(
          _$MapStateEmptyImpl value, $Res Function(_$MapStateEmptyImpl) then) =
      __$$MapStateEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMapReady, MapType mapType});
}

/// @nodoc
class __$$MapStateEmptyImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateEmptyImpl>
    implements _$$MapStateEmptyImplCopyWith<$Res> {
  __$$MapStateEmptyImplCopyWithImpl(
      _$MapStateEmptyImpl _value, $Res Function(_$MapStateEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMapReady = null,
    Object? mapType = null,
  }) {
    return _then(_$MapStateEmptyImpl(
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
    ));
  }
}

/// @nodoc

class _$MapStateEmptyImpl extends _MapStateEmpty {
  const _$MapStateEmptyImpl(
      {this.isMapReady = false, this.mapType = MapType.hybrid})
      : super._();

  @override
  @JsonKey()
  final bool isMapReady;
  @override
  @JsonKey()
  final MapType mapType;

  @override
  String toString() {
    return 'MapState.empty(isMapReady: $isMapReady, mapType: $mapType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateEmptyImpl &&
            (identical(other.isMapReady, isMapReady) ||
                other.isMapReady == isMapReady) &&
            (identical(other.mapType, mapType) || other.mapType == mapType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMapReady, mapType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateEmptyImplCopyWith<_$MapStateEmptyImpl> get copyWith =>
      __$$MapStateEmptyImplCopyWithImpl<_$MapStateEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)
        multiple,
    required TResult Function(
            bool isMapReady, MapType mapType, LatLng? markerPosition)
        single,
    required TResult Function(bool isMapReady, MapType mapType) empty,
  }) {
    return empty(isMapReady, mapType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult? Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
    TResult? Function(bool isMapReady, MapType mapType)? empty,
  }) {
    return empty?.call(isMapReady, mapType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isMapReady, MapType mapType, LatLngBounds? markerLatLngBounds)?
        multiple,
    TResult Function(bool isMapReady, MapType mapType, LatLng? markerPosition)?
        single,
    TResult Function(bool isMapReady, MapType mapType)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(isMapReady, mapType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateMultiple value) multiple,
    required TResult Function(_MapStateSingle value) single,
    required TResult Function(_MapStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateMultiple value)? multiple,
    TResult? Function(_MapStateSingle value)? single,
    TResult? Function(_MapStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateMultiple value)? multiple,
    TResult Function(_MapStateSingle value)? single,
    TResult Function(_MapStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _MapStateEmpty extends MapState {
  const factory _MapStateEmpty({final bool isMapReady, final MapType mapType}) =
      _$MapStateEmptyImpl;
  const _MapStateEmpty._() : super._();

  @override
  bool get isMapReady;
  @override
  MapType get mapType;
  @override
  @JsonKey(ignore: true)
  _$$MapStateEmptyImplCopyWith<_$MapStateEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapStateType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() multiple,
    required TResult Function() single,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? multiple,
    TResult? Function()? single,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? multiple,
    TResult Function()? single,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateTypeMultiple value) multiple,
    required TResult Function(_MapStateTypeSingle value) single,
    required TResult Function(_MapStateTypeEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateTypeMultiple value)? multiple,
    TResult? Function(_MapStateTypeSingle value)? single,
    TResult? Function(_MapStateTypeEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateTypeMultiple value)? multiple,
    TResult Function(_MapStateTypeSingle value)? single,
    TResult Function(_MapStateTypeEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateTypeCopyWith<$Res> {
  factory $MapStateTypeCopyWith(
          MapStateType value, $Res Function(MapStateType) then) =
      _$MapStateTypeCopyWithImpl<$Res, MapStateType>;
}

/// @nodoc
class _$MapStateTypeCopyWithImpl<$Res, $Val extends MapStateType>
    implements $MapStateTypeCopyWith<$Res> {
  _$MapStateTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MapStateTypeMultipleImplCopyWith<$Res> {
  factory _$$MapStateTypeMultipleImplCopyWith(_$MapStateTypeMultipleImpl value,
          $Res Function(_$MapStateTypeMultipleImpl) then) =
      __$$MapStateTypeMultipleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapStateTypeMultipleImplCopyWithImpl<$Res>
    extends _$MapStateTypeCopyWithImpl<$Res, _$MapStateTypeMultipleImpl>
    implements _$$MapStateTypeMultipleImplCopyWith<$Res> {
  __$$MapStateTypeMultipleImplCopyWithImpl(_$MapStateTypeMultipleImpl _value,
      $Res Function(_$MapStateTypeMultipleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapStateTypeMultipleImpl implements _MapStateTypeMultiple {
  const _$MapStateTypeMultipleImpl();

  @override
  String toString() {
    return 'MapStateType.multiple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateTypeMultipleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() multiple,
    required TResult Function() single,
    required TResult Function() empty,
  }) {
    return multiple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? multiple,
    TResult? Function()? single,
    TResult? Function()? empty,
  }) {
    return multiple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? multiple,
    TResult Function()? single,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (multiple != null) {
      return multiple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateTypeMultiple value) multiple,
    required TResult Function(_MapStateTypeSingle value) single,
    required TResult Function(_MapStateTypeEmpty value) empty,
  }) {
    return multiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateTypeMultiple value)? multiple,
    TResult? Function(_MapStateTypeSingle value)? single,
    TResult? Function(_MapStateTypeEmpty value)? empty,
  }) {
    return multiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateTypeMultiple value)? multiple,
    TResult Function(_MapStateTypeSingle value)? single,
    TResult Function(_MapStateTypeEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (multiple != null) {
      return multiple(this);
    }
    return orElse();
  }
}

abstract class _MapStateTypeMultiple implements MapStateType {
  const factory _MapStateTypeMultiple() = _$MapStateTypeMultipleImpl;
}

/// @nodoc
abstract class _$$MapStateTypeSingleImplCopyWith<$Res> {
  factory _$$MapStateTypeSingleImplCopyWith(_$MapStateTypeSingleImpl value,
          $Res Function(_$MapStateTypeSingleImpl) then) =
      __$$MapStateTypeSingleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapStateTypeSingleImplCopyWithImpl<$Res>
    extends _$MapStateTypeCopyWithImpl<$Res, _$MapStateTypeSingleImpl>
    implements _$$MapStateTypeSingleImplCopyWith<$Res> {
  __$$MapStateTypeSingleImplCopyWithImpl(_$MapStateTypeSingleImpl _value,
      $Res Function(_$MapStateTypeSingleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapStateTypeSingleImpl implements _MapStateTypeSingle {
  const _$MapStateTypeSingleImpl();

  @override
  String toString() {
    return 'MapStateType.single()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapStateTypeSingleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() multiple,
    required TResult Function() single,
    required TResult Function() empty,
  }) {
    return single();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? multiple,
    TResult? Function()? single,
    TResult? Function()? empty,
  }) {
    return single?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? multiple,
    TResult Function()? single,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateTypeMultiple value) multiple,
    required TResult Function(_MapStateTypeSingle value) single,
    required TResult Function(_MapStateTypeEmpty value) empty,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateTypeMultiple value)? multiple,
    TResult? Function(_MapStateTypeSingle value)? single,
    TResult? Function(_MapStateTypeEmpty value)? empty,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateTypeMultiple value)? multiple,
    TResult Function(_MapStateTypeSingle value)? single,
    TResult Function(_MapStateTypeEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }
}

abstract class _MapStateTypeSingle implements MapStateType {
  const factory _MapStateTypeSingle() = _$MapStateTypeSingleImpl;
}

/// @nodoc
abstract class _$$MapStateTypeEmptyImplCopyWith<$Res> {
  factory _$$MapStateTypeEmptyImplCopyWith(_$MapStateTypeEmptyImpl value,
          $Res Function(_$MapStateTypeEmptyImpl) then) =
      __$$MapStateTypeEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapStateTypeEmptyImplCopyWithImpl<$Res>
    extends _$MapStateTypeCopyWithImpl<$Res, _$MapStateTypeEmptyImpl>
    implements _$$MapStateTypeEmptyImplCopyWith<$Res> {
  __$$MapStateTypeEmptyImplCopyWithImpl(_$MapStateTypeEmptyImpl _value,
      $Res Function(_$MapStateTypeEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapStateTypeEmptyImpl implements _MapStateTypeEmpty {
  const _$MapStateTypeEmptyImpl();

  @override
  String toString() {
    return 'MapStateType.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapStateTypeEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() multiple,
    required TResult Function() single,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? multiple,
    TResult? Function()? single,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? multiple,
    TResult Function()? single,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateTypeMultiple value) multiple,
    required TResult Function(_MapStateTypeSingle value) single,
    required TResult Function(_MapStateTypeEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateTypeMultiple value)? multiple,
    TResult? Function(_MapStateTypeSingle value)? single,
    TResult? Function(_MapStateTypeEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateTypeMultiple value)? multiple,
    TResult Function(_MapStateTypeSingle value)? single,
    TResult Function(_MapStateTypeEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _MapStateTypeEmpty implements MapStateType {
  const factory _MapStateTypeEmpty() = _$MapStateTypeEmptyImpl;
}
