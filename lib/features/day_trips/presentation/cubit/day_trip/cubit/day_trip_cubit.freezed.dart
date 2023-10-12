// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_trip_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DayTripState {
  Trip get trip => throw _privateConstructorUsedError;
  DayTrip get dayTrip => throw _privateConstructorUsedError;
  List<TripStop> get tripStops => throw _privateConstructorUsedError;
  bool get hasStartTimeToSave => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)
        normal,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? errorMessage,
            bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTripStateNormal value) normal,
    required TResult Function(DayTripStateError value) error,
    required TResult Function(DayTripStateEditing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DayTripStateNormal value)? normal,
    TResult? Function(DayTripStateError value)? error,
    TResult? Function(DayTripStateEditing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTripStateNormal value)? normal,
    TResult Function(DayTripStateError value)? error,
    TResult Function(DayTripStateEditing value)? editing,
    TResult Function(DayTripStateDeleting value)? deleting,
    TResult Function(DayTripStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayTripStateCopyWith<DayTripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTripStateCopyWith<$Res> {
  factory $DayTripStateCopyWith(
          DayTripState value, $Res Function(DayTripState) then) =
      _$DayTripStateCopyWithImpl<$Res, DayTripState>;
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      List<TripStop> tripStops,
      bool hasStartTimeToSave});

  $TripCopyWith<$Res> get trip;
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class _$DayTripStateCopyWithImpl<$Res, $Val extends DayTripState>
    implements $DayTripStateCopyWith<$Res> {
  _$DayTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_value.copyWith(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      tripStops: null == tripStops
          ? _value.tripStops
          : tripStops // ignore: cast_nullable_to_non_nullable
              as List<TripStop>,
      hasStartTimeToSave: null == hasStartTimeToSave
          ? _value.hasStartTimeToSave
          : hasStartTimeToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get trip {
    return $TripCopyWith<$Res>(_value.trip, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DayTripCopyWith<$Res> get dayTrip {
    return $DayTripCopyWith<$Res>(_value.dayTrip, (value) {
      return _then(_value.copyWith(dayTrip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DayTripStateNormalCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateNormalCopyWith(_$DayTripStateNormal value,
          $Res Function(_$DayTripStateNormal) then) =
      __$$DayTripStateNormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      List<TripStop> tripStops,
      bool hasStartTimeToSave,
      bool explictitStartTimeSave,
      bool isSaving});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$DayTripStateNormalCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateNormal>
    implements _$$DayTripStateNormalCopyWith<$Res> {
  __$$DayTripStateNormalCopyWithImpl(
      _$DayTripStateNormal _value, $Res Function(_$DayTripStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? hasStartTimeToSave = null,
    Object? explictitStartTimeSave = null,
    Object? isSaving = null,
  }) {
    return _then(_$DayTripStateNormal(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      tripStops: null == tripStops
          ? _value._tripStops
          : tripStops // ignore: cast_nullable_to_non_nullable
              as List<TripStop>,
      hasStartTimeToSave: null == hasStartTimeToSave
          ? _value.hasStartTimeToSave
          : hasStartTimeToSave // ignore: cast_nullable_to_non_nullable
              as bool,
      explictitStartTimeSave: null == explictitStartTimeSave
          ? _value.explictitStartTimeSave
          : explictitStartTimeSave // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DayTripStateNormal implements DayTripStateNormal {
  const _$DayTripStateNormal(
      {required this.trip,
      required this.dayTrip,
      final List<TripStop> tripStops = const [],
      this.hasStartTimeToSave = false,
      this.explictitStartTimeSave = false,
      this.isSaving = false})
      : _tripStops = tripStops;

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  final List<TripStop> _tripStops;
  @override
  @JsonKey()
  List<TripStop> get tripStops {
    if (_tripStops is EqualUnmodifiableListView) return _tripStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripStops);
  }

  @override
  @JsonKey()
  final bool hasStartTimeToSave;
  @override
  @JsonKey()
  final bool explictitStartTimeSave;
  @override
  @JsonKey()
  final bool isSaving;

  @override
  String toString() {
    return 'DayTripState.normal(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, hasStartTimeToSave: $hasStartTimeToSave, explictitStartTimeSave: $explictitStartTimeSave, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTripStateNormal &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            const DeepCollectionEquality()
                .equals(other._tripStops, _tripStops) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave) &&
            (identical(other.explictitStartTimeSave, explictitStartTimeSave) ||
                other.explictitStartTimeSave == explictitStartTimeSave) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trip,
      dayTrip,
      const DeepCollectionEquality().hash(_tripStops),
      hasStartTimeToSave,
      explictitStartTimeSave,
      isSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTripStateNormalCopyWith<_$DayTripStateNormal> get copyWith =>
      __$$DayTripStateNormalCopyWithImpl<_$DayTripStateNormal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)
        normal,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? errorMessage,
            bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleted,
  }) {
    return normal(trip, dayTrip, tripStops, hasStartTimeToSave,
        explictitStartTimeSave, isSaving);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
  }) {
    return normal?.call(trip, dayTrip, tripStops, hasStartTimeToSave,
        explictitStartTimeSave, isSaving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(trip, dayTrip, tripStops, hasStartTimeToSave,
          explictitStartTimeSave, isSaving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTripStateNormal value) normal,
    required TResult Function(DayTripStateError value) error,
    required TResult Function(DayTripStateEditing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DayTripStateNormal value)? normal,
    TResult? Function(DayTripStateError value)? error,
    TResult? Function(DayTripStateEditing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTripStateNormal value)? normal,
    TResult Function(DayTripStateError value)? error,
    TResult Function(DayTripStateEditing value)? editing,
    TResult Function(DayTripStateDeleting value)? deleting,
    TResult Function(DayTripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class DayTripStateNormal implements DayTripState {
  const factory DayTripStateNormal(
      {required final Trip trip,
      required final DayTrip dayTrip,
      final List<TripStop> tripStops,
      final bool hasStartTimeToSave,
      final bool explictitStartTimeSave,
      final bool isSaving}) = _$DayTripStateNormal;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  List<TripStop> get tripStops;
  @override
  bool get hasStartTimeToSave;
  bool get explictitStartTimeSave;
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$$DayTripStateNormalCopyWith<_$DayTripStateNormal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DayTripStateErrorCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateErrorCopyWith(
          _$DayTripStateError value, $Res Function(_$DayTripStateError) then) =
      __$$DayTripStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      List<TripStop> tripStops,
      String? errorMessage,
      bool hasStartTimeToSave});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$DayTripStateErrorCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateError>
    implements _$$DayTripStateErrorCopyWith<$Res> {
  __$$DayTripStateErrorCopyWithImpl(
      _$DayTripStateError _value, $Res Function(_$DayTripStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? errorMessage = freezed,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_$DayTripStateError(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      tripStops: null == tripStops
          ? _value._tripStops
          : tripStops // ignore: cast_nullable_to_non_nullable
              as List<TripStop>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasStartTimeToSave: null == hasStartTimeToSave
          ? _value.hasStartTimeToSave
          : hasStartTimeToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DayTripStateError implements DayTripStateError {
  const _$DayTripStateError(
      {required this.trip,
      required this.dayTrip,
      final List<TripStop> tripStops = const [],
      this.errorMessage,
      this.hasStartTimeToSave = false})
      : _tripStops = tripStops;

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  final List<TripStop> _tripStops;
  @override
  @JsonKey()
  List<TripStop> get tripStops {
    if (_tripStops is EqualUnmodifiableListView) return _tripStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripStops);
  }

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool hasStartTimeToSave;

  @override
  String toString() {
    return 'DayTripState.error(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, errorMessage: $errorMessage, hasStartTimeToSave: $hasStartTimeToSave)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTripStateError &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            const DeepCollectionEquality()
                .equals(other._tripStops, _tripStops) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trip,
      dayTrip,
      const DeepCollectionEquality().hash(_tripStops),
      errorMessage,
      hasStartTimeToSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTripStateErrorCopyWith<_$DayTripStateError> get copyWith =>
      __$$DayTripStateErrorCopyWithImpl<_$DayTripStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)
        normal,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? errorMessage,
            bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleted,
  }) {
    return error(trip, dayTrip, tripStops, errorMessage, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
  }) {
    return error?.call(
        trip, dayTrip, tripStops, errorMessage, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(trip, dayTrip, tripStops, errorMessage, hasStartTimeToSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTripStateNormal value) normal,
    required TResult Function(DayTripStateError value) error,
    required TResult Function(DayTripStateEditing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DayTripStateNormal value)? normal,
    TResult? Function(DayTripStateError value)? error,
    TResult? Function(DayTripStateEditing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTripStateNormal value)? normal,
    TResult Function(DayTripStateError value)? error,
    TResult Function(DayTripStateEditing value)? editing,
    TResult Function(DayTripStateDeleting value)? deleting,
    TResult Function(DayTripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DayTripStateError implements DayTripState {
  const factory DayTripStateError(
      {required final Trip trip,
      required final DayTrip dayTrip,
      final List<TripStop> tripStops,
      final String? errorMessage,
      final bool hasStartTimeToSave}) = _$DayTripStateError;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  List<TripStop> get tripStops;
  String? get errorMessage;
  @override
  bool get hasStartTimeToSave;
  @override
  @JsonKey(ignore: true)
  _$$DayTripStateErrorCopyWith<_$DayTripStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DayTripStateEditingCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateEditingCopyWith(_$DayTripStateEditing value,
          $Res Function(_$DayTripStateEditing) then) =
      __$$DayTripStateEditingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      List<TripStop> tripStops,
      String? description,
      bool isSaving,
      bool hasStartTimeToSave});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$DayTripStateEditingCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateEditing>
    implements _$$DayTripStateEditingCopyWith<$Res> {
  __$$DayTripStateEditingCopyWithImpl(
      _$DayTripStateEditing _value, $Res Function(_$DayTripStateEditing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? description = freezed,
    Object? isSaving = null,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_$DayTripStateEditing(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      tripStops: null == tripStops
          ? _value._tripStops
          : tripStops // ignore: cast_nullable_to_non_nullable
              as List<TripStop>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStartTimeToSave: null == hasStartTimeToSave
          ? _value.hasStartTimeToSave
          : hasStartTimeToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DayTripStateEditing implements DayTripStateEditing {
  const _$DayTripStateEditing(
      {required this.trip,
      required this.dayTrip,
      final List<TripStop> tripStops = const [],
      required this.description,
      this.isSaving = false,
      this.hasStartTimeToSave = false})
      : _tripStops = tripStops;

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  final List<TripStop> _tripStops;
  @override
  @JsonKey()
  List<TripStop> get tripStops {
    if (_tripStops is EqualUnmodifiableListView) return _tripStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripStops);
  }

  @override
  final String? description;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final bool hasStartTimeToSave;

  @override
  String toString() {
    return 'DayTripState.editing(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, description: $description, isSaving: $isSaving, hasStartTimeToSave: $hasStartTimeToSave)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTripStateEditing &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            const DeepCollectionEquality()
                .equals(other._tripStops, _tripStops) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trip,
      dayTrip,
      const DeepCollectionEquality().hash(_tripStops),
      description,
      isSaving,
      hasStartTimeToSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTripStateEditingCopyWith<_$DayTripStateEditing> get copyWith =>
      __$$DayTripStateEditingCopyWithImpl<_$DayTripStateEditing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)
        normal,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? errorMessage,
            bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleted,
  }) {
    return editing(
        trip, dayTrip, tripStops, description, isSaving, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
  }) {
    return editing?.call(
        trip, dayTrip, tripStops, description, isSaving, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(
          trip, dayTrip, tripStops, description, isSaving, hasStartTimeToSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTripStateNormal value) normal,
    required TResult Function(DayTripStateError value) error,
    required TResult Function(DayTripStateEditing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DayTripStateNormal value)? normal,
    TResult? Function(DayTripStateError value)? error,
    TResult? Function(DayTripStateEditing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTripStateNormal value)? normal,
    TResult Function(DayTripStateError value)? error,
    TResult Function(DayTripStateEditing value)? editing,
    TResult Function(DayTripStateDeleting value)? deleting,
    TResult Function(DayTripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class DayTripStateEditing implements DayTripState {
  const factory DayTripStateEditing(
      {required final Trip trip,
      required final DayTrip dayTrip,
      final List<TripStop> tripStops,
      required final String? description,
      final bool isSaving,
      final bool hasStartTimeToSave}) = _$DayTripStateEditing;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  List<TripStop> get tripStops;
  String? get description;
  bool get isSaving;
  @override
  bool get hasStartTimeToSave;
  @override
  @JsonKey(ignore: true)
  _$$DayTripStateEditingCopyWith<_$DayTripStateEditing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DayTripStateDeletingCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateDeletingCopyWith(_$DayTripStateDeleting value,
          $Res Function(_$DayTripStateDeleting) then) =
      __$$DayTripStateDeletingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      List<TripStop> tripStops,
      bool hasStartTimeToSave});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$DayTripStateDeletingCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateDeleting>
    implements _$$DayTripStateDeletingCopyWith<$Res> {
  __$$DayTripStateDeletingCopyWithImpl(_$DayTripStateDeleting _value,
      $Res Function(_$DayTripStateDeleting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_$DayTripStateDeleting(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      tripStops: null == tripStops
          ? _value._tripStops
          : tripStops // ignore: cast_nullable_to_non_nullable
              as List<TripStop>,
      hasStartTimeToSave: null == hasStartTimeToSave
          ? _value.hasStartTimeToSave
          : hasStartTimeToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DayTripStateDeleting implements DayTripStateDeleting {
  const _$DayTripStateDeleting(
      {required this.trip,
      required this.dayTrip,
      final List<TripStop> tripStops = const [],
      this.hasStartTimeToSave = false})
      : _tripStops = tripStops;

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  final List<TripStop> _tripStops;
  @override
  @JsonKey()
  List<TripStop> get tripStops {
    if (_tripStops is EqualUnmodifiableListView) return _tripStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripStops);
  }

  @override
  @JsonKey()
  final bool hasStartTimeToSave;

  @override
  String toString() {
    return 'DayTripState.deleting(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, hasStartTimeToSave: $hasStartTimeToSave)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTripStateDeleting &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            const DeepCollectionEquality()
                .equals(other._tripStops, _tripStops) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, dayTrip,
      const DeepCollectionEquality().hash(_tripStops), hasStartTimeToSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTripStateDeletingCopyWith<_$DayTripStateDeleting> get copyWith =>
      __$$DayTripStateDeletingCopyWithImpl<_$DayTripStateDeleting>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)
        normal,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? errorMessage,
            bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleted,
  }) {
    return deleting(trip, dayTrip, tripStops, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
  }) {
    return deleting?.call(trip, dayTrip, tripStops, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(trip, dayTrip, tripStops, hasStartTimeToSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTripStateNormal value) normal,
    required TResult Function(DayTripStateError value) error,
    required TResult Function(DayTripStateEditing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DayTripStateNormal value)? normal,
    TResult? Function(DayTripStateError value)? error,
    TResult? Function(DayTripStateEditing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTripStateNormal value)? normal,
    TResult Function(DayTripStateError value)? error,
    TResult Function(DayTripStateEditing value)? editing,
    TResult Function(DayTripStateDeleting value)? deleting,
    TResult Function(DayTripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class DayTripStateDeleting implements DayTripState {
  const factory DayTripStateDeleting(
      {required final Trip trip,
      required final DayTrip dayTrip,
      final List<TripStop> tripStops,
      final bool hasStartTimeToSave}) = _$DayTripStateDeleting;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  List<TripStop> get tripStops;
  @override
  bool get hasStartTimeToSave;
  @override
  @JsonKey(ignore: true)
  _$$DayTripStateDeletingCopyWith<_$DayTripStateDeleting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DayTripStateDeletedCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateDeletedCopyWith(_$DayTripStateDeleted value,
          $Res Function(_$DayTripStateDeleted) then) =
      __$$DayTripStateDeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      List<TripStop> tripStops,
      bool hasStartTimeToSave});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$DayTripStateDeletedCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateDeleted>
    implements _$$DayTripStateDeletedCopyWith<$Res> {
  __$$DayTripStateDeletedCopyWithImpl(
      _$DayTripStateDeleted _value, $Res Function(_$DayTripStateDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_$DayTripStateDeleted(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      tripStops: null == tripStops
          ? _value._tripStops
          : tripStops // ignore: cast_nullable_to_non_nullable
              as List<TripStop>,
      hasStartTimeToSave: null == hasStartTimeToSave
          ? _value.hasStartTimeToSave
          : hasStartTimeToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DayTripStateDeleted implements DayTripStateDeleted {
  const _$DayTripStateDeleted(
      {required this.trip,
      required this.dayTrip,
      final List<TripStop> tripStops = const [],
      this.hasStartTimeToSave = false})
      : _tripStops = tripStops;

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  final List<TripStop> _tripStops;
  @override
  @JsonKey()
  List<TripStop> get tripStops {
    if (_tripStops is EqualUnmodifiableListView) return _tripStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripStops);
  }

  @override
  @JsonKey()
  final bool hasStartTimeToSave;

  @override
  String toString() {
    return 'DayTripState.deleted(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, hasStartTimeToSave: $hasStartTimeToSave)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTripStateDeleted &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            const DeepCollectionEquality()
                .equals(other._tripStops, _tripStops) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, dayTrip,
      const DeepCollectionEquality().hash(_tripStops), hasStartTimeToSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTripStateDeletedCopyWith<_$DayTripStateDeleted> get copyWith =>
      __$$DayTripStateDeletedCopyWithImpl<_$DayTripStateDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)
        normal,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? errorMessage,
            bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleted,
  }) {
    return deleted(trip, dayTrip, tripStops, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
  }) {
    return deleted?.call(trip, dayTrip, tripStops, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave,
            bool isSaving)?
        normal,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? errorMessage, bool hasStartTimeToSave)?
        error,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description, bool isSaving, bool hasStartTimeToSave)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(trip, dayTrip, tripStops, hasStartTimeToSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTripStateNormal value) normal,
    required TResult Function(DayTripStateError value) error,
    required TResult Function(DayTripStateEditing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DayTripStateNormal value)? normal,
    TResult? Function(DayTripStateError value)? error,
    TResult? Function(DayTripStateEditing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTripStateNormal value)? normal,
    TResult Function(DayTripStateError value)? error,
    TResult Function(DayTripStateEditing value)? editing,
    TResult Function(DayTripStateDeleting value)? deleting,
    TResult Function(DayTripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DayTripStateDeleted implements DayTripState {
  const factory DayTripStateDeleted(
      {required final Trip trip,
      required final DayTrip dayTrip,
      final List<TripStop> tripStops,
      final bool hasStartTimeToSave}) = _$DayTripStateDeleted;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  List<TripStop> get tripStops;
  @override
  bool get hasStartTimeToSave;
  @override
  @JsonKey(ignore: true)
  _$$DayTripStateDeletedCopyWith<_$DayTripStateDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}
