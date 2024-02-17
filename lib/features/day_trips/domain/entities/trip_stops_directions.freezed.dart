// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_stops_directions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripStopsDirections _$TripStopsDirectionsFromJson(Map<String, dynamic> json) {
  return _TripStopsDirections.fromJson(json);
}

/// @nodoc
mixin _$TripStopsDirections {
  String get originId => throw _privateConstructorUsedError;
  String get destinationId => throw _privateConstructorUsedError;
  @JsonKey(toJson: latLngsToGeoPoints, fromJson: geoPointsToLatLngs)
  List<LatLng>? get points => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripStopsDirectionsCopyWith<TripStopsDirections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStopsDirectionsCopyWith<$Res> {
  factory $TripStopsDirectionsCopyWith(
          TripStopsDirections value, $Res Function(TripStopsDirections) then) =
      _$TripStopsDirectionsCopyWithImpl<$Res, TripStopsDirections>;
  @useResult
  $Res call(
      {String originId,
      String destinationId,
      @JsonKey(toJson: latLngsToGeoPoints, fromJson: geoPointsToLatLngs)
      List<LatLng>? points,
      @JsonKey(includeIfNull: false) String? errorMessage});
}

/// @nodoc
class _$TripStopsDirectionsCopyWithImpl<$Res, $Val extends TripStopsDirections>
    implements $TripStopsDirectionsCopyWith<$Res> {
  _$TripStopsDirectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originId = null,
    Object? destinationId = null,
    Object? points = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      originId: null == originId
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as String,
      destinationId: null == destinationId
          ? _value.destinationId
          : destinationId // ignore: cast_nullable_to_non_nullable
              as String,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripStopsDirectionsImplCopyWith<$Res>
    implements $TripStopsDirectionsCopyWith<$Res> {
  factory _$$TripStopsDirectionsImplCopyWith(_$TripStopsDirectionsImpl value,
          $Res Function(_$TripStopsDirectionsImpl) then) =
      __$$TripStopsDirectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String originId,
      String destinationId,
      @JsonKey(toJson: latLngsToGeoPoints, fromJson: geoPointsToLatLngs)
      List<LatLng>? points,
      @JsonKey(includeIfNull: false) String? errorMessage});
}

/// @nodoc
class __$$TripStopsDirectionsImplCopyWithImpl<$Res>
    extends _$TripStopsDirectionsCopyWithImpl<$Res, _$TripStopsDirectionsImpl>
    implements _$$TripStopsDirectionsImplCopyWith<$Res> {
  __$$TripStopsDirectionsImplCopyWithImpl(_$TripStopsDirectionsImpl _value,
      $Res Function(_$TripStopsDirectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originId = null,
    Object? destinationId = null,
    Object? points = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TripStopsDirectionsImpl(
      originId: null == originId
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as String,
      destinationId: null == destinationId
          ? _value.destinationId
          : destinationId // ignore: cast_nullable_to_non_nullable
              as String,
      points: freezed == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripStopsDirectionsImpl implements _TripStopsDirections {
  _$TripStopsDirectionsImpl(
      {required this.originId,
      required this.destinationId,
      @JsonKey(toJson: latLngsToGeoPoints, fromJson: geoPointsToLatLngs)
      final List<LatLng>? points,
      @JsonKey(includeIfNull: false) this.errorMessage})
      : _points = points;

  factory _$TripStopsDirectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripStopsDirectionsImplFromJson(json);

  @override
  final String originId;
  @override
  final String destinationId;
  final List<LatLng>? _points;
  @override
  @JsonKey(toJson: latLngsToGeoPoints, fromJson: geoPointsToLatLngs)
  List<LatLng>? get points {
    final value = _points;
    if (value == null) return null;
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeIfNull: false)
  final String? errorMessage;

  @override
  String toString() {
    return 'TripStopsDirections(originId: $originId, destinationId: $destinationId, points: $points, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStopsDirectionsImpl &&
            (identical(other.originId, originId) ||
                other.originId == originId) &&
            (identical(other.destinationId, destinationId) ||
                other.destinationId == destinationId) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, originId, destinationId,
      const DeepCollectionEquality().hash(_points), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStopsDirectionsImplCopyWith<_$TripStopsDirectionsImpl> get copyWith =>
      __$$TripStopsDirectionsImplCopyWithImpl<_$TripStopsDirectionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripStopsDirectionsImplToJson(
      this,
    );
  }
}

abstract class _TripStopsDirections implements TripStopsDirections {
  factory _TripStopsDirections(
          {required final String originId,
          required final String destinationId,
          @JsonKey(toJson: latLngsToGeoPoints, fromJson: geoPointsToLatLngs)
          final List<LatLng>? points,
          @JsonKey(includeIfNull: false) final String? errorMessage}) =
      _$TripStopsDirectionsImpl;

  factory _TripStopsDirections.fromJson(Map<String, dynamic> json) =
      _$TripStopsDirectionsImpl.fromJson;

  @override
  String get originId;
  @override
  String get destinationId;
  @override
  @JsonKey(toJson: latLngsToGeoPoints, fromJson: geoPointsToLatLngs)
  List<LatLng>? get points;
  @override
  @JsonKey(includeIfNull: false)
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TripStopsDirectionsImplCopyWith<_$TripStopsDirectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
