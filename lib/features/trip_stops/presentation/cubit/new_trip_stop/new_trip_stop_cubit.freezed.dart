// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_trip_stop_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewTripStopState {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get hourDuration => throw _privateConstructorUsedError;
  int get minuteDuration => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            int hourDuration, int minuteDuration, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            int hourDuration,
            int minuteDuration,
            LatLng? location,
            String errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewTripStopStateNormal value) normal,
    required TResult Function(NewTripStopStateSaving value) saving,
    required TResult Function(NewTripStopStateCreated value) created,
    required TResult Function(NewTripStopStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewTripStopStateNormal value)? normal,
    TResult? Function(NewTripStopStateSaving value)? saving,
    TResult? Function(NewTripStopStateCreated value)? created,
    TResult? Function(NewTripStopStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewTripStopStateNormal value)? normal,
    TResult Function(NewTripStopStateSaving value)? saving,
    TResult Function(NewTripStopStateCreated value)? created,
    TResult Function(NewTripStopStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewTripStopStateCopyWith<NewTripStopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTripStopStateCopyWith<$Res> {
  factory $NewTripStopStateCopyWith(
          NewTripStopState value, $Res Function(NewTripStopState) then) =
      _$NewTripStopStateCopyWithImpl<$Res, NewTripStopState>;
  @useResult
  $Res call(
      {String name,
      String? description,
      int hourDuration,
      int minuteDuration,
      LatLng location});
}

/// @nodoc
class _$NewTripStopStateCopyWithImpl<$Res, $Val extends NewTripStopState>
    implements $NewTripStopStateCopyWith<$Res> {
  _$NewTripStopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? hourDuration = null,
    Object? minuteDuration = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name!
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hourDuration: null == hourDuration
          ? _value.hourDuration
          : hourDuration // ignore: cast_nullable_to_non_nullable
              as int,
      minuteDuration: null == minuteDuration
          ? _value.minuteDuration
          : minuteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location!
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewTripStopStateNormalImplCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateNormalImplCopyWith(
          _$NewTripStopStateNormalImpl value,
          $Res Function(_$NewTripStopStateNormalImpl) then) =
      __$$NewTripStopStateNormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      int hourDuration,
      int minuteDuration,
      LatLng? location});
}

/// @nodoc
class __$$NewTripStopStateNormalImplCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateNormalImpl>
    implements _$$NewTripStopStateNormalImplCopyWith<$Res> {
  __$$NewTripStopStateNormalImplCopyWithImpl(
      _$NewTripStopStateNormalImpl _value,
      $Res Function(_$NewTripStopStateNormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? hourDuration = null,
    Object? minuteDuration = null,
    Object? location = freezed,
  }) {
    return _then(_$NewTripStopStateNormalImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hourDuration: null == hourDuration
          ? _value.hourDuration
          : hourDuration // ignore: cast_nullable_to_non_nullable
              as int,
      minuteDuration: null == minuteDuration
          ? _value.minuteDuration
          : minuteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$NewTripStopStateNormalImpl implements NewTripStopStateNormal {
  const _$NewTripStopStateNormalImpl(
      {this.name,
      this.description,
      this.hourDuration = 0,
      this.minuteDuration = 0,
      this.location});

  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey()
  final int hourDuration;
  @override
  @JsonKey()
  final int minuteDuration;
  @override
  final LatLng? location;

  @override
  String toString() {
    return 'NewTripStopState.normal(name: $name, description: $description, hourDuration: $hourDuration, minuteDuration: $minuteDuration, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateNormalImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hourDuration, hourDuration) ||
                other.hourDuration == hourDuration) &&
            (identical(other.minuteDuration, minuteDuration) ||
                other.minuteDuration == minuteDuration) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, hourDuration, minuteDuration, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateNormalImplCopyWith<_$NewTripStopStateNormalImpl>
      get copyWith => __$$NewTripStopStateNormalImplCopyWithImpl<
          _$NewTripStopStateNormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            int hourDuration, int minuteDuration, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            int hourDuration,
            int minuteDuration,
            LatLng? location,
            String errorMessage)
        error,
  }) {
    return normal(name, description, hourDuration, minuteDuration, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
  }) {
    return normal?.call(
        name, description, hourDuration, minuteDuration, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(name, description, hourDuration, minuteDuration, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewTripStopStateNormal value) normal,
    required TResult Function(NewTripStopStateSaving value) saving,
    required TResult Function(NewTripStopStateCreated value) created,
    required TResult Function(NewTripStopStateError value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewTripStopStateNormal value)? normal,
    TResult? Function(NewTripStopStateSaving value)? saving,
    TResult? Function(NewTripStopStateCreated value)? created,
    TResult? Function(NewTripStopStateError value)? error,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewTripStopStateNormal value)? normal,
    TResult Function(NewTripStopStateSaving value)? saving,
    TResult Function(NewTripStopStateCreated value)? created,
    TResult Function(NewTripStopStateError value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class NewTripStopStateNormal implements NewTripStopState {
  const factory NewTripStopStateNormal(
      {final String? name,
      final String? description,
      final int hourDuration,
      final int minuteDuration,
      final LatLng? location}) = _$NewTripStopStateNormalImpl;

  @override
  String? get name;
  @override
  String? get description;
  @override
  int get hourDuration;
  @override
  int get minuteDuration;
  @override
  LatLng? get location;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateNormalImplCopyWith<_$NewTripStopStateNormalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewTripStopStateSavingImplCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateSavingImplCopyWith(
          _$NewTripStopStateSavingImpl value,
          $Res Function(_$NewTripStopStateSavingImpl) then) =
      __$$NewTripStopStateSavingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      int hourDuration,
      int minuteDuration,
      LatLng location});
}

/// @nodoc
class __$$NewTripStopStateSavingImplCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateSavingImpl>
    implements _$$NewTripStopStateSavingImplCopyWith<$Res> {
  __$$NewTripStopStateSavingImplCopyWithImpl(
      _$NewTripStopStateSavingImpl _value,
      $Res Function(_$NewTripStopStateSavingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? hourDuration = null,
    Object? minuteDuration = null,
    Object? location = null,
  }) {
    return _then(_$NewTripStopStateSavingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hourDuration: null == hourDuration
          ? _value.hourDuration
          : hourDuration // ignore: cast_nullable_to_non_nullable
              as int,
      minuteDuration: null == minuteDuration
          ? _value.minuteDuration
          : minuteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$NewTripStopStateSavingImpl implements NewTripStopStateSaving {
  const _$NewTripStopStateSavingImpl(
      {required this.name,
      required this.description,
      required this.hourDuration,
      required this.minuteDuration,
      required this.location});

  @override
  final String name;
  @override
  final String? description;
  @override
  final int hourDuration;
  @override
  final int minuteDuration;
  @override
  final LatLng location;

  @override
  String toString() {
    return 'NewTripStopState.saving(name: $name, description: $description, hourDuration: $hourDuration, minuteDuration: $minuteDuration, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateSavingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hourDuration, hourDuration) ||
                other.hourDuration == hourDuration) &&
            (identical(other.minuteDuration, minuteDuration) ||
                other.minuteDuration == minuteDuration) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, hourDuration, minuteDuration, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateSavingImplCopyWith<_$NewTripStopStateSavingImpl>
      get copyWith => __$$NewTripStopStateSavingImplCopyWithImpl<
          _$NewTripStopStateSavingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            int hourDuration, int minuteDuration, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            int hourDuration,
            int minuteDuration,
            LatLng? location,
            String errorMessage)
        error,
  }) {
    return saving(name, description, hourDuration, minuteDuration, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
  }) {
    return saving?.call(
        name, description, hourDuration, minuteDuration, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(name, description, hourDuration, minuteDuration, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewTripStopStateNormal value) normal,
    required TResult Function(NewTripStopStateSaving value) saving,
    required TResult Function(NewTripStopStateCreated value) created,
    required TResult Function(NewTripStopStateError value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewTripStopStateNormal value)? normal,
    TResult? Function(NewTripStopStateSaving value)? saving,
    TResult? Function(NewTripStopStateCreated value)? created,
    TResult? Function(NewTripStopStateError value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewTripStopStateNormal value)? normal,
    TResult Function(NewTripStopStateSaving value)? saving,
    TResult Function(NewTripStopStateCreated value)? created,
    TResult Function(NewTripStopStateError value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class NewTripStopStateSaving implements NewTripStopState {
  const factory NewTripStopStateSaving(
      {required final String name,
      required final String? description,
      required final int hourDuration,
      required final int minuteDuration,
      required final LatLng location}) = _$NewTripStopStateSavingImpl;

  @override
  String get name;
  @override
  String? get description;
  @override
  int get hourDuration;
  @override
  int get minuteDuration;
  @override
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateSavingImplCopyWith<_$NewTripStopStateSavingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewTripStopStateCreatedImplCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateCreatedImplCopyWith(
          _$NewTripStopStateCreatedImpl value,
          $Res Function(_$NewTripStopStateCreatedImpl) then) =
      __$$NewTripStopStateCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      int hourDuration,
      int minuteDuration,
      LatLng location});
}

/// @nodoc
class __$$NewTripStopStateCreatedImplCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateCreatedImpl>
    implements _$$NewTripStopStateCreatedImplCopyWith<$Res> {
  __$$NewTripStopStateCreatedImplCopyWithImpl(
      _$NewTripStopStateCreatedImpl _value,
      $Res Function(_$NewTripStopStateCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? hourDuration = null,
    Object? minuteDuration = null,
    Object? location = null,
  }) {
    return _then(_$NewTripStopStateCreatedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hourDuration: null == hourDuration
          ? _value.hourDuration
          : hourDuration // ignore: cast_nullable_to_non_nullable
              as int,
      minuteDuration: null == minuteDuration
          ? _value.minuteDuration
          : minuteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$NewTripStopStateCreatedImpl implements NewTripStopStateCreated {
  const _$NewTripStopStateCreatedImpl(
      {required this.name,
      required this.description,
      required this.hourDuration,
      required this.minuteDuration,
      required this.location});

  @override
  final String name;
  @override
  final String? description;
  @override
  final int hourDuration;
  @override
  final int minuteDuration;
  @override
  final LatLng location;

  @override
  String toString() {
    return 'NewTripStopState.created(name: $name, description: $description, hourDuration: $hourDuration, minuteDuration: $minuteDuration, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateCreatedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hourDuration, hourDuration) ||
                other.hourDuration == hourDuration) &&
            (identical(other.minuteDuration, minuteDuration) ||
                other.minuteDuration == minuteDuration) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, hourDuration, minuteDuration, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateCreatedImplCopyWith<_$NewTripStopStateCreatedImpl>
      get copyWith => __$$NewTripStopStateCreatedImplCopyWithImpl<
          _$NewTripStopStateCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            int hourDuration, int minuteDuration, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            int hourDuration,
            int minuteDuration,
            LatLng? location,
            String errorMessage)
        error,
  }) {
    return created(name, description, hourDuration, minuteDuration, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
  }) {
    return created?.call(
        name, description, hourDuration, minuteDuration, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(name, description, hourDuration, minuteDuration, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewTripStopStateNormal value) normal,
    required TResult Function(NewTripStopStateSaving value) saving,
    required TResult Function(NewTripStopStateCreated value) created,
    required TResult Function(NewTripStopStateError value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewTripStopStateNormal value)? normal,
    TResult? Function(NewTripStopStateSaving value)? saving,
    TResult? Function(NewTripStopStateCreated value)? created,
    TResult? Function(NewTripStopStateError value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewTripStopStateNormal value)? normal,
    TResult Function(NewTripStopStateSaving value)? saving,
    TResult Function(NewTripStopStateCreated value)? created,
    TResult Function(NewTripStopStateError value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class NewTripStopStateCreated implements NewTripStopState {
  const factory NewTripStopStateCreated(
      {required final String name,
      required final String? description,
      required final int hourDuration,
      required final int minuteDuration,
      required final LatLng location}) = _$NewTripStopStateCreatedImpl;

  @override
  String get name;
  @override
  String? get description;
  @override
  int get hourDuration;
  @override
  int get minuteDuration;
  @override
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateCreatedImplCopyWith<_$NewTripStopStateCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewTripStopStateErrorImplCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateErrorImplCopyWith(
          _$NewTripStopStateErrorImpl value,
          $Res Function(_$NewTripStopStateErrorImpl) then) =
      __$$NewTripStopStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      int hourDuration,
      int minuteDuration,
      LatLng? location,
      String errorMessage});
}

/// @nodoc
class __$$NewTripStopStateErrorImplCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateErrorImpl>
    implements _$$NewTripStopStateErrorImplCopyWith<$Res> {
  __$$NewTripStopStateErrorImplCopyWithImpl(_$NewTripStopStateErrorImpl _value,
      $Res Function(_$NewTripStopStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? hourDuration = null,
    Object? minuteDuration = null,
    Object? location = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$NewTripStopStateErrorImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hourDuration: null == hourDuration
          ? _value.hourDuration
          : hourDuration // ignore: cast_nullable_to_non_nullable
              as int,
      minuteDuration: null == minuteDuration
          ? _value.minuteDuration
          : minuteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewTripStopStateErrorImpl implements NewTripStopStateError {
  const _$NewTripStopStateErrorImpl(
      {required this.name,
      required this.description,
      required this.hourDuration,
      required this.minuteDuration,
      required this.location,
      required this.errorMessage});

  @override
  final String? name;
  @override
  final String? description;
  @override
  final int hourDuration;
  @override
  final int minuteDuration;
  @override
  final LatLng? location;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NewTripStopState.error(name: $name, description: $description, hourDuration: $hourDuration, minuteDuration: $minuteDuration, location: $location, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateErrorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hourDuration, hourDuration) ||
                other.hourDuration == hourDuration) &&
            (identical(other.minuteDuration, minuteDuration) ||
                other.minuteDuration == minuteDuration) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, hourDuration,
      minuteDuration, location, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateErrorImplCopyWith<_$NewTripStopStateErrorImpl>
      get copyWith => __$$NewTripStopStateErrorImplCopyWithImpl<
          _$NewTripStopStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            int hourDuration, int minuteDuration, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            int hourDuration, int minuteDuration, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            int hourDuration,
            int minuteDuration,
            LatLng? location,
            String errorMessage)
        error,
  }) {
    return error(name, description, hourDuration, minuteDuration, location,
        errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult? Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult? Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
  }) {
    return error?.call(name, description, hourDuration, minuteDuration,
        location, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location)?
        normal,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        saving,
    TResult Function(String name, String? description, int hourDuration,
            int minuteDuration, LatLng location)?
        created,
    TResult Function(String? name, String? description, int hourDuration,
            int minuteDuration, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(name, description, hourDuration, minuteDuration, location,
          errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewTripStopStateNormal value) normal,
    required TResult Function(NewTripStopStateSaving value) saving,
    required TResult Function(NewTripStopStateCreated value) created,
    required TResult Function(NewTripStopStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewTripStopStateNormal value)? normal,
    TResult? Function(NewTripStopStateSaving value)? saving,
    TResult? Function(NewTripStopStateCreated value)? created,
    TResult? Function(NewTripStopStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewTripStopStateNormal value)? normal,
    TResult Function(NewTripStopStateSaving value)? saving,
    TResult Function(NewTripStopStateCreated value)? created,
    TResult Function(NewTripStopStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewTripStopStateError implements NewTripStopState {
  const factory NewTripStopStateError(
      {required final String? name,
      required final String? description,
      required final int hourDuration,
      required final int minuteDuration,
      required final LatLng? location,
      required final String errorMessage}) = _$NewTripStopStateErrorImpl;

  @override
  String? get name;
  @override
  String? get description;
  @override
  int get hourDuration;
  @override
  int get minuteDuration;
  @override
  LatLng? get location;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateErrorImplCopyWith<_$NewTripStopStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
