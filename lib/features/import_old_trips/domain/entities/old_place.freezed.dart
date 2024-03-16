// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'old_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OldPlace {
  String get name => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OldPlaceCopyWith<OldPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OldPlaceCopyWith<$Res> {
  factory $OldPlaceCopyWith(OldPlace value, $Res Function(OldPlace) then) =
      _$OldPlaceCopyWithImpl<$Res, OldPlace>;
  @useResult
  $Res call(
      {String name,
      String? note,
      int position,
      double latitude,
      double longitude});
}

/// @nodoc
class _$OldPlaceCopyWithImpl<$Res, $Val extends OldPlace>
    implements $OldPlaceCopyWith<$Res> {
  _$OldPlaceCopyWithImpl(this._value, this._then);

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
    Object? latitude = null,
    Object? longitude = null,
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
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OldPlaceImplCopyWith<$Res>
    implements $OldPlaceCopyWith<$Res> {
  factory _$$OldPlaceImplCopyWith(
          _$OldPlaceImpl value, $Res Function(_$OldPlaceImpl) then) =
      __$$OldPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? note,
      int position,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$OldPlaceImplCopyWithImpl<$Res>
    extends _$OldPlaceCopyWithImpl<$Res, _$OldPlaceImpl>
    implements _$$OldPlaceImplCopyWith<$Res> {
  __$$OldPlaceImplCopyWithImpl(
      _$OldPlaceImpl _value, $Res Function(_$OldPlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? note = freezed,
    Object? position = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$OldPlaceImpl(
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
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OldPlaceImpl implements _OldPlace {
  const _$OldPlaceImpl(
      {required this.name,
      required this.note,
      required this.position,
      required this.latitude,
      required this.longitude});

  @override
  final String name;
  @override
  final String? note;
  @override
  final int position;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'OldPlace(name: $name, note: $note, position: $position, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OldPlaceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, note, position, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OldPlaceImplCopyWith<_$OldPlaceImpl> get copyWith =>
      __$$OldPlaceImplCopyWithImpl<_$OldPlaceImpl>(this, _$identity);
}

abstract class _OldPlace implements OldPlace {
  const factory _OldPlace(
      {required final String name,
      required final String? note,
      required final int position,
      required final double latitude,
      required final double longitude}) = _$OldPlaceImpl;

  @override
  String get name;
  @override
  String? get note;
  @override
  int get position;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$OldPlaceImplCopyWith<_$OldPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
