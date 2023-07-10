// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayTrip _$DayTripFromJson(Map<String, dynamic> json) {
  return _DayTrip.fromJson(json);
}

/// @nodoc
mixin _$DayTrip {
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayTripCopyWith<DayTrip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTripCopyWith<$Res> {
  factory $DayTripCopyWith(DayTrip value, $Res Function(DayTrip) then) =
      _$DayTripCopyWithImpl<$Res, DayTrip>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      String name,
      String? description});
}

/// @nodoc
class _$DayTripCopyWithImpl<$Res, $Val extends DayTrip>
    implements $DayTripCopyWith<$Res> {
  _$DayTripCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayTripCopyWith<$Res> implements $DayTripCopyWith<$Res> {
  factory _$$_DayTripCopyWith(
          _$_DayTrip value, $Res Function(_$_DayTrip) then) =
      __$$_DayTripCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      String name,
      String? description});
}

/// @nodoc
class __$$_DayTripCopyWithImpl<$Res>
    extends _$DayTripCopyWithImpl<$Res, _$_DayTrip>
    implements _$$_DayTripCopyWith<$Res> {
  __$$_DayTripCopyWithImpl(_$_DayTrip _value, $Res Function(_$_DayTrip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$_DayTrip(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayTrip implements _DayTrip {
  _$_DayTrip(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id = '',
      required this.name,
      this.description});

  factory _$_DayTrip.fromJson(Map<String, dynamic> json) =>
      _$$_DayTripFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'DayTrip(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayTrip &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayTripCopyWith<_$_DayTrip> get copyWith =>
      __$$_DayTripCopyWithImpl<_$_DayTrip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayTripToJson(
      this,
    );
  }
}

abstract class _DayTrip implements DayTrip {
  factory _DayTrip(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String id,
      required final String name,
      final String? description}) = _$_DayTrip;

  factory _DayTrip.fromJson(Map<String, dynamic> json) = _$_DayTrip.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_DayTripCopyWith<_$_DayTrip> get copyWith =>
      throw _privateConstructorUsedError;
}
