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
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get beginHourDate => throw _privateConstructorUsedError;
  int get durationInMinutes => throw _privateConstructorUsedError;
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
      {@JsonKey(includeFromJson: false, includeToJson: false)
          String id,
      String name,
      String? description,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          DateTime beginHourDate,
      int durationInMinutes,
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
    Object? beginHourDate = null,
    Object? durationInMinutes = null,
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
      beginHourDate: null == beginHourDate
          ? _value.beginHourDate
          : beginHourDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
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
      {@JsonKey(includeFromJson: false, includeToJson: false)
          String id,
      String name,
      String? description,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          DateTime beginHourDate,
      int durationInMinutes,
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
    Object? beginHourDate = null,
    Object? durationInMinutes = null,
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
      beginHourDate: null == beginHourDate
          ? _value.beginHourDate
          : beginHourDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
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
  _$_TripStop(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          this.id = '',
      required this.name,
      this.description,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          required this.beginHourDate,
      required this.durationInMinutes,
      this.isDone = false});

  factory _$_TripStop.fromJson(Map<String, dynamic> json) =>
      _$$_TripStopFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String id;
  @override
  final String name;
  @override
  final String? description;
// ignore: invalid_annotation_target
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  final DateTime beginHourDate;
  @override
  final int durationInMinutes;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString() {
    return 'TripStop(id: $id, name: $name, description: $description, beginHourDate: $beginHourDate, durationInMinutes: $durationInMinutes, isDone: $isDone)';
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
            (identical(other.beginHourDate, beginHourDate) ||
                other.beginHourDate == beginHourDate) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      beginHourDate, durationInMinutes, isDone);

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
  factory _TripStop(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          final String id,
      required final String name,
      final String? description,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
          required final DateTime beginHourDate,
      required final int durationInMinutes,
      final bool isDone}) = _$_TripStop;

  factory _TripStop.fromJson(Map<String, dynamic> json) = _$_TripStop.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get beginHourDate;
  @override
  int get durationInMinutes;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_TripStopCopyWith<_$_TripStop> get copyWith =>
      throw _privateConstructorUsedError;
}
