// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_stop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripStop _$TripStopFromJson(Map<String, dynamic> json) {
  return _TripStop.fromJson(json);
}

/// @nodoc
mixin _$TripStop {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; //Duration of the stop in minutes
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
  LatLng get location => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  int get travelTimeToNextStop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripStopCopyWith<TripStop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStopCopyWith<$Res> {
  factory $TripStopCopyWith(TripStop value, $Res Function(TripStop) then) =
      _$TripStopCopyWithImpl<$Res, TripStop>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      int index,
      String name,
      String? description,
      int duration,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      LatLng location,
      bool isDone,
      int travelTimeToNextStop});
}

/// @nodoc
class _$TripStopCopyWithImpl<$Res, $Val extends TripStop>
    implements $TripStopCopyWith<$Res> {
  _$TripStopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? name = null,
    Object? description = freezed,
    Object? duration = null,
    Object? location = null,
    Object? isDone = null,
    Object? travelTimeToNextStop = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      travelTimeToNextStop: null == travelTimeToNextStop
          ? _value.travelTimeToNextStop
          : travelTimeToNextStop // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripStopCopyWith<$Res> implements $TripStopCopyWith<$Res> {
  factory _$$_TripStopCopyWith(
          _$_TripStop value, $Res Function(_$_TripStop) then) =
      __$$_TripStopCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      int index,
      String name,
      String? description,
      int duration,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      LatLng location,
      bool isDone,
      int travelTimeToNextStop});
}

/// @nodoc
class __$$_TripStopCopyWithImpl<$Res>
    extends _$TripStopCopyWithImpl<$Res, _$_TripStop>
    implements _$$_TripStopCopyWith<$Res> {
  __$$_TripStopCopyWithImpl(
      _$_TripStop _value, $Res Function(_$_TripStop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? name = null,
    Object? description = freezed,
    Object? duration = null,
    Object? location = null,
    Object? isDone = null,
    Object? travelTimeToNextStop = null,
  }) {
    return _then(_$_TripStop(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      travelTimeToNextStop: null == travelTimeToNextStop
          ? _value.travelTimeToNextStop
          : travelTimeToNextStop // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripStop implements _TripStop {
  const _$_TripStop(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id = '',
      required this.index,
      required this.name,
      this.description,
      required this.duration,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      required this.location,
      this.isDone = false,
      this.travelTimeToNextStop = 0});

  factory _$_TripStop.fromJson(Map<String, dynamic> json) =>
      _$$_TripStopFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String id;
  @override
  final int index;
  @override
  final String name;
  @override
  final String? description;
//Duration of the stop in minutes
  @override
  final int duration;
  @override
  @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
  final LatLng location;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final int travelTimeToNextStop;

  @override
  String toString() {
    return 'TripStop(id: $id, index: $index, name: $name, description: $description, duration: $duration, location: $location, isDone: $isDone, travelTimeToNextStop: $travelTimeToNextStop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripStop &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.travelTimeToNextStop, travelTimeToNextStop) ||
                other.travelTimeToNextStop == travelTimeToNextStop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, index, name, description,
      duration, location, isDone, travelTimeToNextStop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripStopCopyWith<_$_TripStop> get copyWith =>
      __$$_TripStopCopyWithImpl<_$_TripStop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripStopToJson(
      this,
    );
  }
}

abstract class _TripStop implements TripStop {
  const factory _TripStop(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String id,
      required final int index,
      required final String name,
      final String? description,
      required final int duration,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      required final LatLng location,
      final bool isDone,
      final int travelTimeToNextStop}) = _$_TripStop;

  factory _TripStop.fromJson(Map<String, dynamic> json) = _$_TripStop.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id;
  @override
  int get index;
  @override
  String get name;
  @override
  String? get description;
  @override //Duration of the stop in minutes
  int get duration;
  @override
  @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
  LatLng get location;
  @override
  bool get isDone;
  @override
  int get travelTimeToNextStop;
  @override
  @JsonKey(ignore: true)
  _$$_TripStopCopyWith<_$_TripStop> get copyWith =>
      throw _privateConstructorUsedError;
}
