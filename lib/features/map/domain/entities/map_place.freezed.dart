// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapPlace {
  LatLng get location => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tripStopId, String name,
            String? description, LatLng location, bool isDone)
        existing,
    required TResult Function(LatLng location) newPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tripStopId, String name, String? description,
            LatLng location, bool isDone)?
        existing,
    TResult? Function(LatLng location)? newPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tripStopId, String name, String? description,
            LatLng location, bool isDone)?
        existing,
    TResult Function(LatLng location)? newPlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapPlaceExisting value) existing,
    required TResult Function(_MapPlaceNew value) newPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapPlaceExisting value)? existing,
    TResult? Function(_MapPlaceNew value)? newPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapPlaceExisting value)? existing,
    TResult Function(_MapPlaceNew value)? newPlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapPlaceCopyWith<MapPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPlaceCopyWith<$Res> {
  factory $MapPlaceCopyWith(MapPlace value, $Res Function(MapPlace) then) =
      _$MapPlaceCopyWithImpl<$Res, MapPlace>;
  @useResult
  $Res call({LatLng location});
}

/// @nodoc
class _$MapPlaceCopyWithImpl<$Res, $Val extends MapPlace>
    implements $MapPlaceCopyWith<$Res> {
  _$MapPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapPlaceExistingImplCopyWith<$Res>
    implements $MapPlaceCopyWith<$Res> {
  factory _$$MapPlaceExistingImplCopyWith(_$MapPlaceExistingImpl value,
          $Res Function(_$MapPlaceExistingImpl) then) =
      __$$MapPlaceExistingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tripStopId,
      String name,
      String? description,
      LatLng location,
      bool isDone});
}

/// @nodoc
class __$$MapPlaceExistingImplCopyWithImpl<$Res>
    extends _$MapPlaceCopyWithImpl<$Res, _$MapPlaceExistingImpl>
    implements _$$MapPlaceExistingImplCopyWith<$Res> {
  __$$MapPlaceExistingImplCopyWithImpl(_$MapPlaceExistingImpl _value,
      $Res Function(_$MapPlaceExistingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripStopId = null,
    Object? name = null,
    Object? description = freezed,
    Object? location = null,
    Object? isDone = null,
  }) {
    return _then(_$MapPlaceExistingImpl(
      tripStopId: null == tripStopId
          ? _value.tripStopId
          : tripStopId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$MapPlaceExistingImpl implements _MapPlaceExisting {
  _$MapPlaceExistingImpl(
      {required this.tripStopId,
      required this.name,
      required this.description,
      required this.location,
      required this.isDone});

  @override
  final String tripStopId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final LatLng location;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'MapPlace.existing(tripStopId: $tripStopId, name: $name, description: $description, location: $location, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPlaceExistingImpl &&
            (identical(other.tripStopId, tripStopId) ||
                other.tripStopId == tripStopId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tripStopId, name, description, location, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPlaceExistingImplCopyWith<_$MapPlaceExistingImpl> get copyWith =>
      __$$MapPlaceExistingImplCopyWithImpl<_$MapPlaceExistingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tripStopId, String name,
            String? description, LatLng location, bool isDone)
        existing,
    required TResult Function(LatLng location) newPlace,
  }) {
    return existing(tripStopId, name, description, location, isDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tripStopId, String name, String? description,
            LatLng location, bool isDone)?
        existing,
    TResult? Function(LatLng location)? newPlace,
  }) {
    return existing?.call(tripStopId, name, description, location, isDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tripStopId, String name, String? description,
            LatLng location, bool isDone)?
        existing,
    TResult Function(LatLng location)? newPlace,
    required TResult orElse(),
  }) {
    if (existing != null) {
      return existing(tripStopId, name, description, location, isDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapPlaceExisting value) existing,
    required TResult Function(_MapPlaceNew value) newPlace,
  }) {
    return existing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapPlaceExisting value)? existing,
    TResult? Function(_MapPlaceNew value)? newPlace,
  }) {
    return existing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapPlaceExisting value)? existing,
    TResult Function(_MapPlaceNew value)? newPlace,
    required TResult orElse(),
  }) {
    if (existing != null) {
      return existing(this);
    }
    return orElse();
  }
}

abstract class _MapPlaceExisting implements MapPlace {
  factory _MapPlaceExisting(
      {required final String tripStopId,
      required final String name,
      required final String? description,
      required final LatLng location,
      required final bool isDone}) = _$MapPlaceExistingImpl;

  String get tripStopId;
  String get name;
  String? get description;
  @override
  LatLng get location;
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$MapPlaceExistingImplCopyWith<_$MapPlaceExistingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapPlaceNewImplCopyWith<$Res>
    implements $MapPlaceCopyWith<$Res> {
  factory _$$MapPlaceNewImplCopyWith(
          _$MapPlaceNewImpl value, $Res Function(_$MapPlaceNewImpl) then) =
      __$$MapPlaceNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng location});
}

/// @nodoc
class __$$MapPlaceNewImplCopyWithImpl<$Res>
    extends _$MapPlaceCopyWithImpl<$Res, _$MapPlaceNewImpl>
    implements _$$MapPlaceNewImplCopyWith<$Res> {
  __$$MapPlaceNewImplCopyWithImpl(
      _$MapPlaceNewImpl _value, $Res Function(_$MapPlaceNewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$MapPlaceNewImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$MapPlaceNewImpl implements _MapPlaceNew {
  _$MapPlaceNewImpl({required this.location});

  @override
  final LatLng location;

  @override
  String toString() {
    return 'MapPlace.newPlace(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPlaceNewImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPlaceNewImplCopyWith<_$MapPlaceNewImpl> get copyWith =>
      __$$MapPlaceNewImplCopyWithImpl<_$MapPlaceNewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tripStopId, String name,
            String? description, LatLng location, bool isDone)
        existing,
    required TResult Function(LatLng location) newPlace,
  }) {
    return newPlace(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tripStopId, String name, String? description,
            LatLng location, bool isDone)?
        existing,
    TResult? Function(LatLng location)? newPlace,
  }) {
    return newPlace?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tripStopId, String name, String? description,
            LatLng location, bool isDone)?
        existing,
    TResult Function(LatLng location)? newPlace,
    required TResult orElse(),
  }) {
    if (newPlace != null) {
      return newPlace(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapPlaceExisting value) existing,
    required TResult Function(_MapPlaceNew value) newPlace,
  }) {
    return newPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapPlaceExisting value)? existing,
    TResult? Function(_MapPlaceNew value)? newPlace,
  }) {
    return newPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapPlaceExisting value)? existing,
    TResult Function(_MapPlaceNew value)? newPlace,
    required TResult orElse(),
  }) {
    if (newPlace != null) {
      return newPlace(this);
    }
    return orElse();
  }
}

abstract class _MapPlaceNew implements MapPlace {
  factory _MapPlaceNew({required final LatLng location}) = _$MapPlaceNewImpl;

  @override
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  _$$MapPlaceNewImplCopyWith<_$MapPlaceNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
