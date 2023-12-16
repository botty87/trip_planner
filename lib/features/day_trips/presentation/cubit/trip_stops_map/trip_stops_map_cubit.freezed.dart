// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_stops_map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripStopsMapState {
  MapType get mapType => throw _privateConstructorUsedError;
  CameraPosition? get currentCameraPosition =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripStopsMapStateCopyWith<TripStopsMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStopsMapStateCopyWith<$Res> {
  factory $TripStopsMapStateCopyWith(
          TripStopsMapState value, $Res Function(TripStopsMapState) then) =
      _$TripStopsMapStateCopyWithImpl<$Res, TripStopsMapState>;
  @useResult
  $Res call({MapType mapType, CameraPosition? currentCameraPosition});
}

/// @nodoc
class _$TripStopsMapStateCopyWithImpl<$Res, $Val extends TripStopsMapState>
    implements $TripStopsMapStateCopyWith<$Res> {
  _$TripStopsMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapType = null,
    Object? currentCameraPosition = freezed,
  }) {
    return _then(_value.copyWith(
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
      currentCameraPosition: freezed == currentCameraPosition
          ? _value.currentCameraPosition
          : currentCameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripStopsMapStateImplCopyWith<$Res>
    implements $TripStopsMapStateCopyWith<$Res> {
  factory _$$TripStopsMapStateImplCopyWith(_$TripStopsMapStateImpl value,
          $Res Function(_$TripStopsMapStateImpl) then) =
      __$$TripStopsMapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MapType mapType, CameraPosition? currentCameraPosition});
}

/// @nodoc
class __$$TripStopsMapStateImplCopyWithImpl<$Res>
    extends _$TripStopsMapStateCopyWithImpl<$Res, _$TripStopsMapStateImpl>
    implements _$$TripStopsMapStateImplCopyWith<$Res> {
  __$$TripStopsMapStateImplCopyWithImpl(_$TripStopsMapStateImpl _value,
      $Res Function(_$TripStopsMapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapType = null,
    Object? currentCameraPosition = freezed,
  }) {
    return _then(_$TripStopsMapStateImpl(
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
      currentCameraPosition: freezed == currentCameraPosition
          ? _value.currentCameraPosition
          : currentCameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
    ));
  }
}

/// @nodoc

class _$TripStopsMapStateImpl implements _TripStopsMapState {
  const _$TripStopsMapStateImpl(
      {this.mapType = MapType.hybrid, this.currentCameraPosition});

  @override
  @JsonKey()
  final MapType mapType;
  @override
  final CameraPosition? currentCameraPosition;

  @override
  String toString() {
    return 'TripStopsMapState(mapType: $mapType, currentCameraPosition: $currentCameraPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStopsMapStateImpl &&
            (identical(other.mapType, mapType) || other.mapType == mapType) &&
            (identical(other.currentCameraPosition, currentCameraPosition) ||
                other.currentCameraPosition == currentCameraPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapType, currentCameraPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStopsMapStateImplCopyWith<_$TripStopsMapStateImpl> get copyWith =>
      __$$TripStopsMapStateImplCopyWithImpl<_$TripStopsMapStateImpl>(
          this, _$identity);
}

abstract class _TripStopsMapState implements TripStopsMapState {
  const factory _TripStopsMapState(
      {final MapType mapType,
      final CameraPosition? currentCameraPosition}) = _$TripStopsMapStateImpl;

  @override
  MapType get mapType;
  @override
  CameraPosition? get currentCameraPosition;
  @override
  @JsonKey(ignore: true)
  _$$TripStopsMapStateImplCopyWith<_$TripStopsMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
