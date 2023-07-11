// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get userId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get startDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          String id,
      String name,
      String? description,
      String userId,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          DateTime createdAt,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          DateTime startDate});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

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
    Object? userId = null,
    Object? createdAt = null,
    Object? startDate = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$_TripCopyWith(_$_Trip value, $Res Function(_$_Trip) then) =
      __$$_TripCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          String id,
      String name,
      String? description,
      String userId,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          DateTime createdAt,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          DateTime startDate});
}

/// @nodoc
class __$$_TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res, _$_Trip>
    implements _$$_TripCopyWith<$Res> {
  __$$_TripCopyWithImpl(_$_Trip _value, $Res Function(_$_Trip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? startDate = null,
  }) {
    return _then(_$_Trip(
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trip implements _Trip {
  _$_Trip(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          this.id = '',
      required this.name,
      this.description,
      required this.userId,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          required this.createdAt,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          required this.startDate});

  factory _$_Trip.fromJson(Map<String, dynamic> json) => _$$_TripFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String userId;
// ignore: invalid_annotation_target
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  final DateTime createdAt;
// ignore: invalid_annotation_target
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  final DateTime startDate;

  @override
  String toString() {
    return 'Trip(id: $id, name: $name, description: $description, userId: $userId, createdAt: $createdAt, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trip &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, userId, createdAt, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripCopyWith<_$_Trip> get copyWith =>
      __$$_TripCopyWithImpl<_$_Trip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  factory _Trip(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          final String id,
      required final String name,
      final String? description,
      required final String userId,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          required final DateTime createdAt,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          required final DateTime startDate}) = _$_Trip;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$_Trip.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get userId;
  @override // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get createdAt;
  @override // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get startDate;
  @override
  @JsonKey(ignore: true)
  _$$_TripCopyWith<_$_Trip> get copyWith => throw _privateConstructorUsedError;
}
