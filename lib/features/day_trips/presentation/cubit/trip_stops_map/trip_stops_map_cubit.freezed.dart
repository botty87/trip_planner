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
  bool get isLoading => throw _privateConstructorUsedError;
  DayTrip get dayTrip => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isMapReady => throw _privateConstructorUsedError;
  LatLngBounds? get markerLatLngBounds => throw _privateConstructorUsedError;
  bool get showDirections => throw _privateConstructorUsedError;
  bool get useDifferentColors => throw _privateConstructorUsedError;
  bool get isSelectedTab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MapType mapType,
            bool isLoading,
            DayTrip dayTrip,
            String? errorMessage,
            bool isMapReady,
            LatLngBounds? markerLatLngBounds,
            bool showDirections,
            bool useDifferentColors,
            bool isSelectedTab)
        normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MapType mapType,
            bool isLoading,
            DayTrip dayTrip,
            String? errorMessage,
            bool isMapReady,
            LatLngBounds? markerLatLngBounds,
            bool showDirections,
            bool useDifferentColors,
            bool isSelectedTab)?
        normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MapType mapType,
            bool isLoading,
            DayTrip dayTrip,
            String? errorMessage,
            bool isMapReady,
            LatLngBounds? markerLatLngBounds,
            bool showDirections,
            bool useDifferentColors,
            bool isSelectedTab)?
        normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStopsMapStateNormal value) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStopsMapStateNormal value)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStopsMapStateNormal value)? normal,
    required TResult orElse(),
  }) =>
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
  $Res call(
      {MapType mapType,
      bool isLoading,
      DayTrip dayTrip,
      String? errorMessage,
      bool isMapReady,
      LatLngBounds? markerLatLngBounds,
      bool showDirections,
      bool useDifferentColors,
      bool isSelectedTab});

  $DayTripCopyWith<$Res> get dayTrip;
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
    Object? isLoading = null,
    Object? dayTrip = null,
    Object? errorMessage = freezed,
    Object? isMapReady = null,
    Object? markerLatLngBounds = freezed,
    Object? showDirections = null,
    Object? useDifferentColors = null,
    Object? isSelectedTab = null,
  }) {
    return _then(_value.copyWith(
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
      markerLatLngBounds: freezed == markerLatLngBounds
          ? _value.markerLatLngBounds
          : markerLatLngBounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      showDirections: null == showDirections
          ? _value.showDirections
          : showDirections // ignore: cast_nullable_to_non_nullable
              as bool,
      useDifferentColors: null == useDifferentColors
          ? _value.useDifferentColors
          : useDifferentColors // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectedTab: null == isSelectedTab
          ? _value.isSelectedTab
          : isSelectedTab // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayTripCopyWith<$Res> get dayTrip {
    return $DayTripCopyWith<$Res>(_value.dayTrip, (value) {
      return _then(_value.copyWith(dayTrip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripStopsMapStateNormalImplCopyWith<$Res>
    implements $TripStopsMapStateCopyWith<$Res> {
  factory _$$TripStopsMapStateNormalImplCopyWith(
          _$TripStopsMapStateNormalImpl value,
          $Res Function(_$TripStopsMapStateNormalImpl) then) =
      __$$TripStopsMapStateNormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MapType mapType,
      bool isLoading,
      DayTrip dayTrip,
      String? errorMessage,
      bool isMapReady,
      LatLngBounds? markerLatLngBounds,
      bool showDirections,
      bool useDifferentColors,
      bool isSelectedTab});

  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$TripStopsMapStateNormalImplCopyWithImpl<$Res>
    extends _$TripStopsMapStateCopyWithImpl<$Res, _$TripStopsMapStateNormalImpl>
    implements _$$TripStopsMapStateNormalImplCopyWith<$Res> {
  __$$TripStopsMapStateNormalImplCopyWithImpl(
      _$TripStopsMapStateNormalImpl _value,
      $Res Function(_$TripStopsMapStateNormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapType = null,
    Object? isLoading = null,
    Object? dayTrip = null,
    Object? errorMessage = freezed,
    Object? isMapReady = null,
    Object? markerLatLngBounds = freezed,
    Object? showDirections = null,
    Object? useDifferentColors = null,
    Object? isSelectedTab = null,
  }) {
    return _then(_$TripStopsMapStateNormalImpl(
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
      markerLatLngBounds: freezed == markerLatLngBounds
          ? _value.markerLatLngBounds
          : markerLatLngBounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      showDirections: null == showDirections
          ? _value.showDirections
          : showDirections // ignore: cast_nullable_to_non_nullable
              as bool,
      useDifferentColors: null == useDifferentColors
          ? _value.useDifferentColors
          : useDifferentColors // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectedTab: null == isSelectedTab
          ? _value.isSelectedTab
          : isSelectedTab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TripStopsMapStateNormalImpl extends TripStopsMapStateNormal {
  const _$TripStopsMapStateNormalImpl(
      {this.mapType = MapType.hybrid,
      this.isLoading = false,
      required this.dayTrip,
      this.errorMessage,
      this.isMapReady = false,
      this.markerLatLngBounds,
      this.showDirections = true,
      this.useDifferentColors = true,
      this.isSelectedTab = true})
      : super._();

  @override
  @JsonKey()
  final MapType mapType;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final DayTrip dayTrip;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isMapReady;
  @override
  final LatLngBounds? markerLatLngBounds;
  @override
  @JsonKey()
  final bool showDirections;
  @override
  @JsonKey()
  final bool useDifferentColors;
  @override
  @JsonKey()
  final bool isSelectedTab;

  @override
  String toString() {
    return 'TripStopsMapState.normal(mapType: $mapType, isLoading: $isLoading, dayTrip: $dayTrip, errorMessage: $errorMessage, isMapReady: $isMapReady, markerLatLngBounds: $markerLatLngBounds, showDirections: $showDirections, useDifferentColors: $useDifferentColors, isSelectedTab: $isSelectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStopsMapStateNormalImpl &&
            (identical(other.mapType, mapType) || other.mapType == mapType) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isMapReady, isMapReady) ||
                other.isMapReady == isMapReady) &&
            (identical(other.markerLatLngBounds, markerLatLngBounds) ||
                other.markerLatLngBounds == markerLatLngBounds) &&
            (identical(other.showDirections, showDirections) ||
                other.showDirections == showDirections) &&
            (identical(other.useDifferentColors, useDifferentColors) ||
                other.useDifferentColors == useDifferentColors) &&
            (identical(other.isSelectedTab, isSelectedTab) ||
                other.isSelectedTab == isSelectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mapType,
      isLoading,
      dayTrip,
      errorMessage,
      isMapReady,
      markerLatLngBounds,
      showDirections,
      useDifferentColors,
      isSelectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStopsMapStateNormalImplCopyWith<_$TripStopsMapStateNormalImpl>
      get copyWith => __$$TripStopsMapStateNormalImplCopyWithImpl<
          _$TripStopsMapStateNormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MapType mapType,
            bool isLoading,
            DayTrip dayTrip,
            String? errorMessage,
            bool isMapReady,
            LatLngBounds? markerLatLngBounds,
            bool showDirections,
            bool useDifferentColors,
            bool isSelectedTab)
        normal,
  }) {
    return normal(mapType, isLoading, dayTrip, errorMessage, isMapReady,
        markerLatLngBounds, showDirections, useDifferentColors, isSelectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MapType mapType,
            bool isLoading,
            DayTrip dayTrip,
            String? errorMessage,
            bool isMapReady,
            LatLngBounds? markerLatLngBounds,
            bool showDirections,
            bool useDifferentColors,
            bool isSelectedTab)?
        normal,
  }) {
    return normal?.call(mapType, isLoading, dayTrip, errorMessage, isMapReady,
        markerLatLngBounds, showDirections, useDifferentColors, isSelectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MapType mapType,
            bool isLoading,
            DayTrip dayTrip,
            String? errorMessage,
            bool isMapReady,
            LatLngBounds? markerLatLngBounds,
            bool showDirections,
            bool useDifferentColors,
            bool isSelectedTab)?
        normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(
          mapType,
          isLoading,
          dayTrip,
          errorMessage,
          isMapReady,
          markerLatLngBounds,
          showDirections,
          useDifferentColors,
          isSelectedTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStopsMapStateNormal value) normal,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStopsMapStateNormal value)? normal,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStopsMapStateNormal value)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class TripStopsMapStateNormal extends TripStopsMapState {
  const factory TripStopsMapStateNormal(
      {final MapType mapType,
      final bool isLoading,
      required final DayTrip dayTrip,
      final String? errorMessage,
      final bool isMapReady,
      final LatLngBounds? markerLatLngBounds,
      final bool showDirections,
      final bool useDifferentColors,
      final bool isSelectedTab}) = _$TripStopsMapStateNormalImpl;
  const TripStopsMapStateNormal._() : super._();

  @override
  MapType get mapType;
  @override
  bool get isLoading;
  @override
  DayTrip get dayTrip;
  @override
  String? get errorMessage;
  @override
  bool get isMapReady;
  @override
  LatLngBounds? get markerLatLngBounds;
  @override
  bool get showDirections;
  @override
  bool get useDifferentColors;
  @override
  bool get isSelectedTab;
  @override
  @JsonKey(ignore: true)
  _$$TripStopsMapStateNormalImplCopyWith<_$TripStopsMapStateNormalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
