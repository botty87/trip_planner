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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  int get travelTimeToNextStop =>
      throw _privateConstructorUsedError; // in minutes
  String? get note => throw _privateConstructorUsedError;
  TripStopPlaceholder? get placeholder => throw _privateConstructorUsedError;

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
      int travelTimeToNextStop,
      String? note,
      TripStopPlaceholder? placeholder});

  $TripStopPlaceholderCopyWith<$Res>? get placeholder;
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
    Object? note = freezed,
    Object? placeholder = freezed,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as TripStopPlaceholder?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripStopPlaceholderCopyWith<$Res>? get placeholder {
    if (_value.placeholder == null) {
      return null;
    }

    return $TripStopPlaceholderCopyWith<$Res>(_value.placeholder!, (value) {
      return _then(_value.copyWith(placeholder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripStopImplCopyWith<$Res>
    implements $TripStopCopyWith<$Res> {
  factory _$$TripStopImplCopyWith(
          _$TripStopImpl value, $Res Function(_$TripStopImpl) then) =
      __$$TripStopImplCopyWithImpl<$Res>;
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
      int travelTimeToNextStop,
      String? note,
      TripStopPlaceholder? placeholder});

  @override
  $TripStopPlaceholderCopyWith<$Res>? get placeholder;
}

/// @nodoc
class __$$TripStopImplCopyWithImpl<$Res>
    extends _$TripStopCopyWithImpl<$Res, _$TripStopImpl>
    implements _$$TripStopImplCopyWith<$Res> {
  __$$TripStopImplCopyWithImpl(
      _$TripStopImpl _value, $Res Function(_$TripStopImpl) _then)
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
    Object? note = freezed,
    Object? placeholder = freezed,
  }) {
    return _then(_$TripStopImpl(
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as TripStopPlaceholder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripStopImpl implements _TripStop {
  const _$TripStopImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id = '',
      required this.index,
      required this.name,
      this.description,
      required this.duration,
      @JsonKey(toJson: geoPointFromLatLng, fromJson: latLngFromGeoPoint)
      required this.location,
      this.isDone = false,
      this.travelTimeToNextStop = 0,
      this.note,
      this.placeholder});

  factory _$TripStopImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripStopImplFromJson(json);

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
// in minutes
  @override
  final String? note;
  @override
  final TripStopPlaceholder? placeholder;

  @override
  String toString() {
    return 'TripStop(id: $id, index: $index, name: $name, description: $description, duration: $duration, location: $location, isDone: $isDone, travelTimeToNextStop: $travelTimeToNextStop, note: $note, placeholder: $placeholder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStopImpl &&
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
                other.travelTimeToNextStop == travelTimeToNextStop) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, index, name, description,
      duration, location, isDone, travelTimeToNextStop, note, placeholder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStopImplCopyWith<_$TripStopImpl> get copyWith =>
      __$$TripStopImplCopyWithImpl<_$TripStopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripStopImplToJson(
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
      final int travelTimeToNextStop,
      final String? note,
      final TripStopPlaceholder? placeholder}) = _$TripStopImpl;

  factory _TripStop.fromJson(Map<String, dynamic> json) =
      _$TripStopImpl.fromJson;

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
  @override // in minutes
  String? get note;
  @override
  TripStopPlaceholder? get placeholder;
  @override
  @JsonKey(ignore: true)
  _$$TripStopImplCopyWith<_$TripStopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripStopPlaceholder _$TripStopPlaceholderFromJson(Map<String, dynamic> json) {
  return _TripStopPlaceholder.fromJson(json);
}

/// @nodoc
mixin _$TripStopPlaceholder {
  String get name => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripStopPlaceholderCopyWith<TripStopPlaceholder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStopPlaceholderCopyWith<$Res> {
  factory $TripStopPlaceholderCopyWith(
          TripStopPlaceholder value, $Res Function(TripStopPlaceholder) then) =
      _$TripStopPlaceholderCopyWithImpl<$Res, TripStopPlaceholder>;
  @useResult
  $Res call({String name, int duration});
}

/// @nodoc
class _$TripStopPlaceholderCopyWithImpl<$Res, $Val extends TripStopPlaceholder>
    implements $TripStopPlaceholderCopyWith<$Res> {
  _$TripStopPlaceholderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripStopPlaceholderImplCopyWith<$Res>
    implements $TripStopPlaceholderCopyWith<$Res> {
  factory _$$TripStopPlaceholderImplCopyWith(_$TripStopPlaceholderImpl value,
          $Res Function(_$TripStopPlaceholderImpl) then) =
      __$$TripStopPlaceholderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int duration});
}

/// @nodoc
class __$$TripStopPlaceholderImplCopyWithImpl<$Res>
    extends _$TripStopPlaceholderCopyWithImpl<$Res, _$TripStopPlaceholderImpl>
    implements _$$TripStopPlaceholderImplCopyWith<$Res> {
  __$$TripStopPlaceholderImplCopyWithImpl(_$TripStopPlaceholderImpl _value,
      $Res Function(_$TripStopPlaceholderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? duration = null,
  }) {
    return _then(_$TripStopPlaceholderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripStopPlaceholderImpl implements _TripStopPlaceholder {
  const _$TripStopPlaceholderImpl({required this.name, required this.duration});

  factory _$TripStopPlaceholderImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripStopPlaceholderImplFromJson(json);

  @override
  final String name;
  @override
  final int duration;

  @override
  String toString() {
    return 'TripStopPlaceholder(name: $name, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStopPlaceholderImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStopPlaceholderImplCopyWith<_$TripStopPlaceholderImpl> get copyWith =>
      __$$TripStopPlaceholderImplCopyWithImpl<_$TripStopPlaceholderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripStopPlaceholderImplToJson(
      this,
    );
  }
}

abstract class _TripStopPlaceholder implements TripStopPlaceholder {
  const factory _TripStopPlaceholder(
      {required final String name,
      required final int duration}) = _$TripStopPlaceholderImpl;

  factory _TripStopPlaceholder.fromJson(Map<String, dynamic> json) =
      _$TripStopPlaceholderImpl.fromJson;

  @override
  String get name;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$TripStopPlaceholderImplCopyWith<_$TripStopPlaceholderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
