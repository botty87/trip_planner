// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'old_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OldTrip {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<OldDailyTrip> get dailyTrips => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OldTripCopyWith<OldTrip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OldTripCopyWith<$Res> {
  factory $OldTripCopyWith(OldTrip value, $Res Function(OldTrip) then) =
      _$OldTripCopyWithImpl<$Res, OldTrip>;
  @useResult
  $Res call({String id, String name, List<OldDailyTrip> dailyTrips});
}

/// @nodoc
class _$OldTripCopyWithImpl<$Res, $Val extends OldTrip>
    implements $OldTripCopyWith<$Res> {
  _$OldTripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dailyTrips = null,
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
      dailyTrips: null == dailyTrips
          ? _value.dailyTrips
          : dailyTrips // ignore: cast_nullable_to_non_nullable
              as List<OldDailyTrip>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OldTripImplCopyWith<$Res> implements $OldTripCopyWith<$Res> {
  factory _$$OldTripImplCopyWith(
          _$OldTripImpl value, $Res Function(_$OldTripImpl) then) =
      __$$OldTripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<OldDailyTrip> dailyTrips});
}

/// @nodoc
class __$$OldTripImplCopyWithImpl<$Res>
    extends _$OldTripCopyWithImpl<$Res, _$OldTripImpl>
    implements _$$OldTripImplCopyWith<$Res> {
  __$$OldTripImplCopyWithImpl(
      _$OldTripImpl _value, $Res Function(_$OldTripImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dailyTrips = null,
  }) {
    return _then(_$OldTripImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dailyTrips: null == dailyTrips
          ? _value._dailyTrips
          : dailyTrips // ignore: cast_nullable_to_non_nullable
              as List<OldDailyTrip>,
    ));
  }
}

/// @nodoc

class _$OldTripImpl implements _OldTrip {
  const _$OldTripImpl(
      {required this.id,
      required this.name,
      required final List<OldDailyTrip> dailyTrips})
      : _dailyTrips = dailyTrips;

  @override
  final String id;
  @override
  final String name;
  final List<OldDailyTrip> _dailyTrips;
  @override
  List<OldDailyTrip> get dailyTrips {
    if (_dailyTrips is EqualUnmodifiableListView) return _dailyTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyTrips);
  }

  @override
  String toString() {
    return 'OldTrip(id: $id, name: $name, dailyTrips: $dailyTrips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OldTripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._dailyTrips, _dailyTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_dailyTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OldTripImplCopyWith<_$OldTripImpl> get copyWith =>
      __$$OldTripImplCopyWithImpl<_$OldTripImpl>(this, _$identity);
}

abstract class _OldTrip implements OldTrip {
  const factory _OldTrip(
      {required final String id,
      required final String name,
      required final List<OldDailyTrip> dailyTrips}) = _$OldTripImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<OldDailyTrip> get dailyTrips;
  @override
  @JsonKey(ignore: true)
  _$$OldTripImplCopyWith<_$OldTripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
