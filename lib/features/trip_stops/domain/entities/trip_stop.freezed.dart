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
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
  TimeOfDay get startTime => throw _privateConstructorUsedError;
  @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
  TimeOfDay get endTime => throw _privateConstructorUsedError;
  @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
  LatLng get location => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

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
      String name,
      String? description,
      @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
      TimeOfDay startTime,
      @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
      TimeOfDay endTime,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      LatLng location,
      bool isDone});
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
    Object? name = null,
    Object? description = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? location = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String name,
      String? description,
      @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
      TimeOfDay startTime,
      @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
      TimeOfDay endTime,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      LatLng location,
      bool isDone});
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
    Object? name = null,
    Object? description = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? location = null,
    Object? isDone = null,
  }) {
    return _then(_$_TripStop(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripStop implements _TripStop {
  const _$_TripStop(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id = '',
      required this.name,
      this.description,
      @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
      required this.startTime,
      @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
      required this.endTime,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      required this.location,
      this.isDone = false});

  factory _$_TripStop.fromJson(Map<String, dynamic> json) =>
      _$$_TripStopFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
  final TimeOfDay startTime;
  @override
  @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
  final TimeOfDay endTime;
  @override
  @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
  final LatLng location;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString() {
    return 'TripStop(id: $id, name: $name, description: $description, startTime: $startTime, endTime: $endTime, location: $location, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripStop &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, startTime, endTime, location, isDone);

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
      required final String name,
      final String? description,
      @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
      required final TimeOfDay startTime,
      @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
      required final TimeOfDay endTime,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      required final LatLng location,
      final bool isDone}) = _$_TripStop;

  factory _TripStop.fromJson(Map<String, dynamic> json) = _$_TripStop.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
  TimeOfDay get startTime;
  @override
  @JsonKey(toJson: timeOfDayToMap, fromJson: timeOfDayFromMap)
  TimeOfDay get endTime;
  @override
  @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
  LatLng get location;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_TripStopCopyWith<_$_TripStop> get copyWith =>
      throw _privateConstructorUsedError;
}
