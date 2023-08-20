// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripState {
  Trip get trip => throw _privateConstructorUsedError;
  List<DayTrip> get dayTrips => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateNormal value)? normal,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateNormal value)? normal,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripStateCopyWith<TripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStateCopyWith<$Res> {
  factory $TripStateCopyWith(TripState value, $Res Function(TripState) then) =
      _$TripStateCopyWithImpl<$Res, TripState>;
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class _$TripStateCopyWithImpl<$Res, $Val extends TripState>
    implements $TripStateCopyWith<$Res> {
  _$TripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_value.copyWith(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrips: null == dayTrips
          ? _value.dayTrips
          : dayTrips // ignore: cast_nullable_to_non_nullable
              as List<DayTrip>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get trip {
    return $TripCopyWith<$Res>(_value.trip, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripStateNormalCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateNormalCopyWith(
          _$TripStateNormal value, $Res Function(_$TripStateNormal) then) =
      __$$TripStateNormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateNormalCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateNormal>
    implements _$$TripStateNormalCopyWith<$Res> {
  __$$TripStateNormalCopyWithImpl(
      _$TripStateNormal _value, $Res Function(_$TripStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$TripStateNormal(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrips: null == dayTrips
          ? _value._dayTrips
          : dayTrips // ignore: cast_nullable_to_non_nullable
              as List<DayTrip>,
    ));
  }
}

/// @nodoc

class _$TripStateNormal implements TripStateNormal {
  const _$TripStateNormal(
      {required this.trip, final List<DayTrip> dayTrips = const []})
      : _dayTrips = dayTrips;

  @override
  final Trip trip;
  final List<DayTrip> _dayTrips;
  @override
  @JsonKey()
  List<DayTrip> get dayTrips {
    if (_dayTrips is EqualUnmodifiableListView) return _dayTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayTrips);
  }

  @override
  String toString() {
    return 'TripState.normal(trip: $trip, dayTrips: $dayTrips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateNormal &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateNormalCopyWith<_$TripStateNormal> get copyWith =>
      __$$TripStateNormalCopyWithImpl<_$TripStateNormal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) {
    return normal(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) {
    return normal?.call(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(trip, dayTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateNormal value)? normal,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateNormal value)? normal,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class TripStateNormal implements TripState {
  const factory TripStateNormal(
      {required final Trip trip,
      final List<DayTrip> dayTrips}) = _$TripStateNormal;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripStateNormalCopyWith<_$TripStateNormal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateErrorCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateErrorCopyWith(
          _$TripStateError value, $Res Function(_$TripStateError) then) =
      __$$TripStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips, String errorMessage});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateErrorCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateError>
    implements _$$TripStateErrorCopyWith<$Res> {
  __$$TripStateErrorCopyWithImpl(
      _$TripStateError _value, $Res Function(_$TripStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
    Object? errorMessage = null,
  }) {
    return _then(_$TripStateError(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrips: null == dayTrips
          ? _value._dayTrips
          : dayTrips // ignore: cast_nullable_to_non_nullable
              as List<DayTrip>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TripStateError implements TripStateError {
  const _$TripStateError(
      {required this.trip,
      final List<DayTrip> dayTrips = const [],
      required this.errorMessage})
      : _dayTrips = dayTrips;

  @override
  final Trip trip;
  final List<DayTrip> _dayTrips;
  @override
  @JsonKey()
  List<DayTrip> get dayTrips {
    if (_dayTrips is EqualUnmodifiableListView) return _dayTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayTrips);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TripState.error(trip: $trip, dayTrips: $dayTrips, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateError &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip,
      const DeepCollectionEquality().hash(_dayTrips), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateErrorCopyWith<_$TripStateError> get copyWith =>
      __$$TripStateErrorCopyWithImpl<_$TripStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) {
    return error(trip, dayTrips, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) {
    return error?.call(trip, dayTrips, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(trip, dayTrips, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateNormal value)? normal,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateNormal value)? normal,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TripStateError implements TripState {
  const factory TripStateError(
      {required final Trip trip,
      final List<DayTrip> dayTrips,
      required final String errorMessage}) = _$TripStateError;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TripStateErrorCopyWith<_$TripStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateEditingCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateEditingCopyWith(
          _$TripStateEditing value, $Res Function(_$TripStateEditing) then) =
      __$$TripStateEditingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      List<DayTrip> dayTrips,
      String name,
      String? description,
      DateTime startDate,
      bool isSaving});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateEditingCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateEditing>
    implements _$$TripStateEditingCopyWith<$Res> {
  __$$TripStateEditingCopyWithImpl(
      _$TripStateEditing _value, $Res Function(_$TripStateEditing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
    Object? name = null,
    Object? description = freezed,
    Object? startDate = null,
    Object? isSaving = null,
  }) {
    return _then(_$TripStateEditing(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrips: null == dayTrips
          ? _value._dayTrips
          : dayTrips // ignore: cast_nullable_to_non_nullable
              as List<DayTrip>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TripStateEditing implements TripStateEditing {
  const _$TripStateEditing(
      {required this.trip,
      final List<DayTrip> dayTrips = const [],
      required this.name,
      required this.description,
      required this.startDate,
      this.isSaving = false})
      : _dayTrips = dayTrips;

  @override
  final Trip trip;
  final List<DayTrip> _dayTrips;
  @override
  @JsonKey()
  List<DayTrip> get dayTrips {
    if (_dayTrips is EqualUnmodifiableListView) return _dayTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayTrips);
  }

  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime startDate;
  @override
  @JsonKey()
  final bool isSaving;

  @override
  String toString() {
    return 'TripState.editing(trip: $trip, dayTrips: $dayTrips, name: $name, description: $description, startDate: $startDate, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateEditing &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trip,
      const DeepCollectionEquality().hash(_dayTrips),
      name,
      description,
      startDate,
      isSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateEditingCopyWith<_$TripStateEditing> get copyWith =>
      __$$TripStateEditingCopyWithImpl<_$TripStateEditing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) {
    return editing(trip, dayTrips, name, description, startDate, isSaving);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) {
    return editing?.call(
        trip, dayTrips, name, description, startDate, isSaving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(trip, dayTrips, name, description, startDate, isSaving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateNormal value)? normal,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateNormal value)? normal,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class TripStateEditing implements TripState {
  const factory TripStateEditing(
      {required final Trip trip,
      final List<DayTrip> dayTrips,
      required final String name,
      required final String? description,
      required final DateTime startDate,
      final bool isSaving}) = _$TripStateEditing;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  String get name;
  String? get description;
  DateTime get startDate;
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$$TripStateEditingCopyWith<_$TripStateEditing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateDeletingCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateDeletingCopyWith(
          _$TripStateDeleting value, $Res Function(_$TripStateDeleting) then) =
      __$$TripStateDeletingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateDeletingCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateDeleting>
    implements _$$TripStateDeletingCopyWith<$Res> {
  __$$TripStateDeletingCopyWithImpl(
      _$TripStateDeleting _value, $Res Function(_$TripStateDeleting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$TripStateDeleting(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrips: null == dayTrips
          ? _value._dayTrips
          : dayTrips // ignore: cast_nullable_to_non_nullable
              as List<DayTrip>,
    ));
  }
}

/// @nodoc

class _$TripStateDeleting implements TripStateDeleting {
  const _$TripStateDeleting(
      {required this.trip, final List<DayTrip> dayTrips = const []})
      : _dayTrips = dayTrips;

  @override
  final Trip trip;
  final List<DayTrip> _dayTrips;
  @override
  @JsonKey()
  List<DayTrip> get dayTrips {
    if (_dayTrips is EqualUnmodifiableListView) return _dayTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayTrips);
  }

  @override
  String toString() {
    return 'TripState.deleting(trip: $trip, dayTrips: $dayTrips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateDeleting &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateDeletingCopyWith<_$TripStateDeleting> get copyWith =>
      __$$TripStateDeletingCopyWithImpl<_$TripStateDeleting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) {
    return deleting(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) {
    return deleting?.call(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(trip, dayTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateNormal value)? normal,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateNormal value)? normal,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class TripStateDeleting implements TripState {
  const factory TripStateDeleting(
      {required final Trip trip,
      final List<DayTrip> dayTrips}) = _$TripStateDeleting;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripStateDeletingCopyWith<_$TripStateDeleting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateDeletedCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateDeletedCopyWith(
          _$TripStateDeleted value, $Res Function(_$TripStateDeleted) then) =
      __$$TripStateDeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateDeletedCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateDeleted>
    implements _$$TripStateDeletedCopyWith<$Res> {
  __$$TripStateDeletedCopyWithImpl(
      _$TripStateDeleted _value, $Res Function(_$TripStateDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$TripStateDeleted(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrips: null == dayTrips
          ? _value._dayTrips
          : dayTrips // ignore: cast_nullable_to_non_nullable
              as List<DayTrip>,
    ));
  }
}

/// @nodoc

class _$TripStateDeleted implements TripStateDeleted {
  const _$TripStateDeleted(
      {required this.trip, final List<DayTrip> dayTrips = const []})
      : _dayTrips = dayTrips;

  @override
  final Trip trip;
  final List<DayTrip> _dayTrips;
  @override
  @JsonKey()
  List<DayTrip> get dayTrips {
    if (_dayTrips is EqualUnmodifiableListView) return _dayTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayTrips);
  }

  @override
  String toString() {
    return 'TripState.deleted(trip: $trip, dayTrips: $dayTrips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateDeleted &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateDeletedCopyWith<_$TripStateDeleted> get copyWith =>
      __$$TripStateDeletedCopyWithImpl<_$TripStateDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) {
    return deleted(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) {
    return deleted?.call(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String name,
            String? description, DateTime startDate, bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(trip, dayTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateNormal value)? normal,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateNormal value)? normal,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class TripStateDeleted implements TripState {
  const factory TripStateDeleted(
      {required final Trip trip,
      final List<DayTrip> dayTrips}) = _$TripStateDeleted;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripStateDeletedCopyWith<_$TripStateDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}
