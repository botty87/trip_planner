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
abstract class _$$DayTripStateNormalImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateNormalImplCopyWith(_$DayTripStateNormalImpl value,
          $Res Function(_$DayTripStateNormalImpl) then) =
      __$$DayTripStateNormalImplCopyWithImpl<$Res>;
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
class __$$DayTripStateNormalImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateNormalImpl>
    implements _$$DayTripStateNormalImplCopyWith<$Res> {
  __$$DayTripStateNormalImplCopyWithImpl(_$DayTripStateNormalImpl _value,
      $Res Function(_$DayTripStateNormalImpl) _then)
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
    return _then(_$DayTripStateNormalImpl(
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

class _$DayTripStateNormalImpl implements DayTripStateNormal {
  const _$DayTripStateNormalImpl(
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
            other is _$DayTripStateNormalImpl &&
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
  _$$DayTripStateNormalImplCopyWith<_$DayTripStateNormalImpl> get copyWith =>
      __$$DayTripStateNormalImplCopyWithImpl<_$DayTripStateNormalImpl>(
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
      final bool isSaving}) = _$DayTripStateNormalImpl;

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
  _$$DayTripStateNormalImplCopyWith<_$DayTripStateNormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DayTripStateErrorImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateErrorImplCopyWith(_$DayTripStateErrorImpl value,
          $Res Function(_$DayTripStateErrorImpl) then) =
      __$$DayTripStateErrorImplCopyWithImpl<$Res>;
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
class __$$DayTripStateErrorImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateErrorImpl>
    implements _$$DayTripStateErrorImplCopyWith<$Res> {
  __$$DayTripStateErrorImplCopyWithImpl(_$DayTripStateErrorImpl _value,
      $Res Function(_$DayTripStateErrorImpl) _then)
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
    return _then(_$DayTripStateErrorImpl(
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

class _$DayTripStateErrorImpl implements DayTripStateError {
  const _$DayTripStateErrorImpl(
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
            other is _$DayTripStateErrorImpl &&
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
  _$$DayTripStateErrorImplCopyWith<_$DayTripStateErrorImpl> get copyWith =>
      __$$DayTripStateErrorImplCopyWithImpl<_$DayTripStateErrorImpl>(
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
      final bool hasStartTimeToSave}) = _$DayTripStateErrorImpl;

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
  _$$DayTripStateErrorImplCopyWith<_$DayTripStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DayTripStateEditingImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateEditingImplCopyWith(_$DayTripStateEditingImpl value,
          $Res Function(_$DayTripStateEditingImpl) then) =
      __$$DayTripStateEditingImplCopyWithImpl<$Res>;
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
class __$$DayTripStateEditingImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateEditingImpl>
    implements _$$DayTripStateEditingImplCopyWith<$Res> {
  __$$DayTripStateEditingImplCopyWithImpl(_$DayTripStateEditingImpl _value,
      $Res Function(_$DayTripStateEditingImpl) _then)
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
    return _then(_$DayTripStateEditingImpl(
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

class _$DayTripStateEditingImpl implements DayTripStateEditing {
  const _$DayTripStateEditingImpl(
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
            other is _$DayTripStateEditingImpl &&
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
  _$$DayTripStateEditingImplCopyWith<_$DayTripStateEditingImpl> get copyWith =>
      __$$DayTripStateEditingImplCopyWithImpl<_$DayTripStateEditingImpl>(
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
      final bool hasStartTimeToSave}) = _$DayTripStateEditingImpl;

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
  _$$DayTripStateEditingImplCopyWith<_$DayTripStateEditingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DayTripStateDeletingImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateDeletingImplCopyWith(_$DayTripStateDeletingImpl value,
          $Res Function(_$DayTripStateDeletingImpl) then) =
      __$$DayTripStateDeletingImplCopyWithImpl<$Res>;
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
class __$$DayTripStateDeletingImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateDeletingImpl>
    implements _$$DayTripStateDeletingImplCopyWith<$Res> {
  __$$DayTripStateDeletingImplCopyWithImpl(_$DayTripStateDeletingImpl _value,
      $Res Function(_$DayTripStateDeletingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_$DayTripStateDeletingImpl(
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

class _$DayTripStateDeletingImpl implements DayTripStateDeleting {
  const _$DayTripStateDeletingImpl(
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
            other is _$DayTripStateDeletingImpl &&
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
  _$$DayTripStateDeletingImplCopyWith<_$DayTripStateDeletingImpl>
      get copyWith =>
          __$$DayTripStateDeletingImplCopyWithImpl<_$DayTripStateDeletingImpl>(
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
      final bool hasStartTimeToSave}) = _$DayTripStateDeletingImpl;

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
  _$$DayTripStateDeletingImplCopyWith<_$DayTripStateDeletingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DayTripStateDeletedImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$DayTripStateDeletedImplCopyWith(_$DayTripStateDeletedImpl value,
          $Res Function(_$DayTripStateDeletedImpl) then) =
      __$$DayTripStateDeletedImplCopyWithImpl<$Res>;
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
class __$$DayTripStateDeletedImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$DayTripStateDeletedImpl>
    implements _$$DayTripStateDeletedImplCopyWith<$Res> {
  __$$DayTripStateDeletedImplCopyWithImpl(_$DayTripStateDeletedImpl _value,
      $Res Function(_$DayTripStateDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_$DayTripStateDeletedImpl(
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

class _$DayTripStateDeletedImpl implements DayTripStateDeleted {
  const _$DayTripStateDeletedImpl(
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
            other is _$DayTripStateDeletedImpl &&
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
  _$$DayTripStateDeletedImplCopyWith<_$DayTripStateDeletedImpl> get copyWith =>
      __$$DayTripStateDeletedImplCopyWithImpl<_$DayTripStateDeletedImpl>(
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
      final bool hasStartTimeToSave}) = _$DayTripStateDeletedImpl;

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
  _$$DayTripStateDeletedImplCopyWith<_$DayTripStateDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
