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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewTripStopState {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TimeOfDay? get startTime => throw _privateConstructorUsedError;
  TimeOfDay? get endTime => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            TimeOfDay? startTime, TimeOfDay? endTime, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            TimeOfDay? startTime,
            TimeOfDay? endTime,
            LatLng? location,
            String errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
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
      TimeOfDay startTime,
      TimeOfDay endTime,
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
    Object? startTime = null,
    Object? endTime = null,
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
      startTime: null == startTime
          ? _value.startTime!
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime!
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      location: null == location
          ? _value.location!
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewTripStopStateNormalCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateNormalCopyWith(_$NewTripStopStateNormal value,
          $Res Function(_$NewTripStopStateNormal) then) =
      __$$NewTripStopStateNormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      TimeOfDay? startTime,
      TimeOfDay? endTime,
      LatLng? location});
}

/// @nodoc
class __$$NewTripStopStateNormalCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateNormal>
    implements _$$NewTripStopStateNormalCopyWith<$Res> {
  __$$NewTripStopStateNormalCopyWithImpl(_$NewTripStopStateNormal _value,
      $Res Function(_$NewTripStopStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? location = freezed,
  }) {
    return _then(_$NewTripStopStateNormal(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$NewTripStopStateNormal implements NewTripStopStateNormal {
  const _$NewTripStopStateNormal(
      {this.name,
      this.description,
      this.startTime,
      this.endTime,
      this.location});

  @override
  final String? name;
  @override
  final String? description;
  @override
  final TimeOfDay? startTime;
  @override
  final TimeOfDay? endTime;
  @override
  final LatLng? location;

  @override
  String toString() {
    return 'NewTripStopState.normal(name: $name, description: $description, startTime: $startTime, endTime: $endTime, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateNormal &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, startTime, endTime, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateNormalCopyWith<_$NewTripStopStateNormal> get copyWith =>
      __$$NewTripStopStateNormalCopyWithImpl<_$NewTripStopStateNormal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            TimeOfDay? startTime, TimeOfDay? endTime, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            TimeOfDay? startTime,
            TimeOfDay? endTime,
            LatLng? location,
            String errorMessage)
        error,
  }) {
    return normal(name, description, startTime, endTime, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
  }) {
    return normal?.call(name, description, startTime, endTime, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(name, description, startTime, endTime, location);
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
      final TimeOfDay? startTime,
      final TimeOfDay? endTime,
      final LatLng? location}) = _$NewTripStopStateNormal;

  @override
  String? get name;
  @override
  String? get description;
  @override
  TimeOfDay? get startTime;
  @override
  TimeOfDay? get endTime;
  @override
  LatLng? get location;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateNormalCopyWith<_$NewTripStopStateNormal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewTripStopStateSavingCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateSavingCopyWith(_$NewTripStopStateSaving value,
          $Res Function(_$NewTripStopStateSaving) then) =
      __$$NewTripStopStateSavingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      TimeOfDay startTime,
      TimeOfDay endTime,
      LatLng location});
}

/// @nodoc
class __$$NewTripStopStateSavingCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateSaving>
    implements _$$NewTripStopStateSavingCopyWith<$Res> {
  __$$NewTripStopStateSavingCopyWithImpl(_$NewTripStopStateSaving _value,
      $Res Function(_$NewTripStopStateSaving) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? location = null,
  }) {
    return _then(_$NewTripStopStateSaving(
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
    ));
  }
}

/// @nodoc

class _$NewTripStopStateSaving implements NewTripStopStateSaving {
  const _$NewTripStopStateSaving(
      {required this.name,
      required this.description,
      required this.startTime,
      required this.endTime,
      required this.location});

  @override
  final String name;
  @override
  final String? description;
  @override
  final TimeOfDay startTime;
  @override
  final TimeOfDay endTime;
  @override
  final LatLng location;

  @override
  String toString() {
    return 'NewTripStopState.saving(name: $name, description: $description, startTime: $startTime, endTime: $endTime, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateSaving &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, startTime, endTime, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateSavingCopyWith<_$NewTripStopStateSaving> get copyWith =>
      __$$NewTripStopStateSavingCopyWithImpl<_$NewTripStopStateSaving>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            TimeOfDay? startTime, TimeOfDay? endTime, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            TimeOfDay? startTime,
            TimeOfDay? endTime,
            LatLng? location,
            String errorMessage)
        error,
  }) {
    return saving(name, description, startTime, endTime, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
  }) {
    return saving?.call(name, description, startTime, endTime, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(name, description, startTime, endTime, location);
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
      required final TimeOfDay startTime,
      required final TimeOfDay endTime,
      required final LatLng location}) = _$NewTripStopStateSaving;

  @override
  String get name;
  @override
  String? get description;
  @override
  TimeOfDay get startTime;
  @override
  TimeOfDay get endTime;
  @override
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateSavingCopyWith<_$NewTripStopStateSaving> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewTripStopStateCreatedCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateCreatedCopyWith(_$NewTripStopStateCreated value,
          $Res Function(_$NewTripStopStateCreated) then) =
      __$$NewTripStopStateCreatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      TimeOfDay startTime,
      TimeOfDay endTime,
      LatLng location});
}

/// @nodoc
class __$$NewTripStopStateCreatedCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateCreated>
    implements _$$NewTripStopStateCreatedCopyWith<$Res> {
  __$$NewTripStopStateCreatedCopyWithImpl(_$NewTripStopStateCreated _value,
      $Res Function(_$NewTripStopStateCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? location = null,
  }) {
    return _then(_$NewTripStopStateCreated(
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
    ));
  }
}

/// @nodoc

class _$NewTripStopStateCreated implements NewTripStopStateCreated {
  const _$NewTripStopStateCreated(
      {required this.name,
      required this.description,
      required this.startTime,
      required this.endTime,
      required this.location});

  @override
  final String name;
  @override
  final String? description;
  @override
  final TimeOfDay startTime;
  @override
  final TimeOfDay endTime;
  @override
  final LatLng location;

  @override
  String toString() {
    return 'NewTripStopState.created(name: $name, description: $description, startTime: $startTime, endTime: $endTime, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateCreated &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, startTime, endTime, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateCreatedCopyWith<_$NewTripStopStateCreated> get copyWith =>
      __$$NewTripStopStateCreatedCopyWithImpl<_$NewTripStopStateCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            TimeOfDay? startTime, TimeOfDay? endTime, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            TimeOfDay? startTime,
            TimeOfDay? endTime,
            LatLng? location,
            String errorMessage)
        error,
  }) {
    return created(name, description, startTime, endTime, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
  }) {
    return created?.call(name, description, startTime, endTime, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(name, description, startTime, endTime, location);
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
      required final TimeOfDay startTime,
      required final TimeOfDay endTime,
      required final LatLng location}) = _$NewTripStopStateCreated;

  @override
  String get name;
  @override
  String? get description;
  @override
  TimeOfDay get startTime;
  @override
  TimeOfDay get endTime;
  @override
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateCreatedCopyWith<_$NewTripStopStateCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewTripStopStateErrorCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$NewTripStopStateErrorCopyWith(_$NewTripStopStateError value,
          $Res Function(_$NewTripStopStateError) then) =
      __$$NewTripStopStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      TimeOfDay? startTime,
      TimeOfDay? endTime,
      LatLng? location,
      String errorMessage});
}

/// @nodoc
class __$$NewTripStopStateErrorCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$NewTripStopStateError>
    implements _$$NewTripStopStateErrorCopyWith<$Res> {
  __$$NewTripStopStateErrorCopyWithImpl(_$NewTripStopStateError _value,
      $Res Function(_$NewTripStopStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? location = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$NewTripStopStateError(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
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

class _$NewTripStopStateError implements NewTripStopStateError {
  const _$NewTripStopStateError(
      {required this.name,
      required this.description,
      required this.startTime,
      required this.endTime,
      required this.location,
      required this.errorMessage});

  @override
  final String? name;
  @override
  final String? description;
  @override
  final TimeOfDay? startTime;
  @override
  final TimeOfDay? endTime;
  @override
  final LatLng? location;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NewTripStopState.error(name: $name, description: $description, startTime: $startTime, endTime: $endTime, location: $location, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTripStopStateError &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, startTime,
      endTime, location, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTripStopStateErrorCopyWith<_$NewTripStopStateError> get copyWith =>
      __$$NewTripStopStateErrorCopyWithImpl<_$NewTripStopStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? description,
            TimeOfDay? startTime, TimeOfDay? endTime, LatLng? location)
        normal,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        saving,
    required TResult Function(String name, String? description,
            TimeOfDay startTime, TimeOfDay endTime, LatLng location)
        created,
    required TResult Function(
            String? name,
            String? description,
            TimeOfDay? startTime,
            TimeOfDay? endTime,
            LatLng? location,
            String errorMessage)
        error,
  }) {
    return error(name, description, startTime, endTime, location, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult? Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult? Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
  }) {
    return error?.call(
        name, description, startTime, endTime, location, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location)?
        normal,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        saving,
    TResult Function(String name, String? description, TimeOfDay startTime,
            TimeOfDay endTime, LatLng location)?
        created,
    TResult Function(String? name, String? description, TimeOfDay? startTime,
            TimeOfDay? endTime, LatLng? location, String errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(
          name, description, startTime, endTime, location, errorMessage);
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
      required final TimeOfDay? startTime,
      required final TimeOfDay? endTime,
      required final LatLng? location,
      required final String errorMessage}) = _$NewTripStopStateError;

  @override
  String? get name;
  @override
  String? get description;
  @override
  TimeOfDay? get startTime;
  @override
  TimeOfDay? get endTime;
  @override
  LatLng? get location;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$NewTripStopStateErrorCopyWith<_$NewTripStopStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
