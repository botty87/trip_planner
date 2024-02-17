// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'old_daily_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OldDailyTrip {
  String get name => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  int? get day => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  List<OldPlace> get places => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OldDailyTripCopyWith<OldDailyTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OldDailyTripCopyWith<$Res> {
  factory $OldDailyTripCopyWith(
          OldDailyTrip value, $Res Function(OldDailyTrip) then) =
      _$OldDailyTripCopyWithImpl<$Res, OldDailyTrip>;
  @useResult
  $Res call(
      {String name,
      String? note,
      int position,
      int? day,
      int? month,
      int? year,
      List<OldPlace> places});
}

/// @nodoc
class _$OldDailyTripCopyWithImpl<$Res, $Val extends OldDailyTrip>
    implements $OldDailyTripCopyWith<$Res> {
  _$OldDailyTripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? note = freezed,
    Object? position = null,
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<OldPlace>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OldDailyTripImplCopyWith<$Res>
    implements $OldDailyTripCopyWith<$Res> {
  factory _$$OldDailyTripImplCopyWith(
          _$OldDailyTripImpl value, $Res Function(_$OldDailyTripImpl) then) =
      __$$OldDailyTripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? note,
      int position,
      int? day,
      int? month,
      int? year,
      List<OldPlace> places});
}

/// @nodoc
class __$$OldDailyTripImplCopyWithImpl<$Res>
    extends _$OldDailyTripCopyWithImpl<$Res, _$OldDailyTripImpl>
    implements _$$OldDailyTripImplCopyWith<$Res> {
  __$$OldDailyTripImplCopyWithImpl(
      _$OldDailyTripImpl _value, $Res Function(_$OldDailyTripImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? note = freezed,
    Object? position = null,
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? places = null,
  }) {
    return _then(_$OldDailyTripImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<OldPlace>,
    ));
  }
}

/// @nodoc

class _$OldDailyTripImpl implements _OldDailyTrip {
  const _$OldDailyTripImpl(
      {required this.name,
      required this.note,
      required this.position,
      required this.day,
      required this.month,
      required this.year,
      required final List<OldPlace> places})
      : _places = places;

  @override
  final String name;
  @override
  final String? note;
  @override
  final int position;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;
  final List<OldPlace> _places;
  @override
  List<OldPlace> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'OldDailyTrip(name: $name, note: $note, position: $position, day: $day, month: $month, year: $year, places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OldDailyTripImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, note, position, day, month,
      year, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OldDailyTripImplCopyWith<_$OldDailyTripImpl> get copyWith =>
      __$$OldDailyTripImplCopyWithImpl<_$OldDailyTripImpl>(this, _$identity);
}

abstract class _OldDailyTrip implements OldDailyTrip {
  const factory _OldDailyTrip(
      {required final String name,
      required final String? note,
      required final int position,
      required final int? day,
      required final int? month,
      required final int? year,
      required final List<OldPlace> places}) = _$OldDailyTripImpl;

  @override
  String get name;
  @override
  String? get note;
  @override
  int get position;
  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  @override
  List<OldPlace> get places;
  @override
  @JsonKey(ignore: true)
  _$$OldDailyTripImplCopyWith<_$OldDailyTripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
