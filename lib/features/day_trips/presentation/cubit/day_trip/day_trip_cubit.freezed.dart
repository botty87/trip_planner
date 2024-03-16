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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DayTripState {
  Trip get trip => throw _privateConstructorUsedError;
  DayTrip get dayTrip => throw _privateConstructorUsedError;
  bool get hasStartTimeToSave => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        initial,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave)
        loaded,
    required TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult? Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
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
  $Res call({Trip trip, DayTrip dayTrip, bool hasStartTimeToSave});

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
abstract class _$$InitialImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, DayTrip dayTrip, bool hasStartTimeToSave});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_$InitialImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      hasStartTimeToSave: null == hasStartTimeToSave
          ? _value.hasStartTimeToSave
          : hasStartTimeToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.trip,
      required this.dayTrip,
      this.hasStartTimeToSave = false});

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  @override
  @JsonKey()
  final bool hasStartTimeToSave;

  @override
  String toString() {
    return 'DayTripState.initial(trip: $trip, dayTrip: $dayTrip, hasStartTimeToSave: $hasStartTimeToSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, trip, dayTrip, hasStartTimeToSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        initial,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave)
        loaded,
    required TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        deleted,
  }) {
    return initial(trip, dayTrip, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult? Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
  }) {
    return initial?.call(trip, dayTrip, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(trip, dayTrip, hasStartTimeToSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(DayTripStateDeleting value)? deleting,
    TResult Function(DayTripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DayTripState {
  const factory _Initial(
      {required final Trip trip,
      required final DayTrip dayTrip,
      final bool hasStartTimeToSave}) = _$InitialImpl;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  bool get hasStartTimeToSave;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      List<TripStop> tripStops,
      bool hasStartTimeToSave,
      bool explictitStartTimeSave});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
    Object? hasStartTimeToSave = null,
    Object? explictitStartTimeSave = null,
  }) {
    return _then(_$LoadedImpl(
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
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.trip,
      required this.dayTrip,
      required final List<TripStop> tripStops,
      this.hasStartTimeToSave = false,
      this.explictitStartTimeSave = false})
      : _tripStops = tripStops;

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  final List<TripStop> _tripStops;
  @override
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
  String toString() {
    return 'DayTripState.loaded(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, hasStartTimeToSave: $hasStartTimeToSave, explictitStartTimeSave: $explictitStartTimeSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            const DeepCollectionEquality()
                .equals(other._tripStops, _tripStops) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave) &&
            (identical(other.explictitStartTimeSave, explictitStartTimeSave) ||
                other.explictitStartTimeSave == explictitStartTimeSave));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trip,
      dayTrip,
      const DeepCollectionEquality().hash(_tripStops),
      hasStartTimeToSave,
      explictitStartTimeSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        initial,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave)
        loaded,
    required TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        deleted,
  }) {
    return loaded(
        trip, dayTrip, tripStops, hasStartTimeToSave, explictitStartTimeSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult? Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
  }) {
    return loaded?.call(
        trip, dayTrip, tripStops, hasStartTimeToSave, explictitStartTimeSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          trip, dayTrip, tripStops, hasStartTimeToSave, explictitStartTimeSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(DayTripStateDeleting value)? deleting,
    TResult Function(DayTripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DayTripState {
  const factory _Loaded(
      {required final Trip trip,
      required final DayTrip dayTrip,
      required final List<TripStop> tripStops,
      final bool hasStartTimeToSave,
      final bool explictitStartTimeSave}) = _$LoadedImpl;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  List<TripStop> get tripStops;
  @override
  bool get hasStartTimeToSave;
  bool get explictitStartTimeSave;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      String errorMessage,
      bool fatal,
      bool hasStartTimeToSave});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? errorMessage = null,
    Object? fatal = null,
    Object? hasStartTimeToSave = null,
  }) {
    return _then(_$ErrorImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      dayTrip: null == dayTrip
          ? _value.dayTrip
          : dayTrip // ignore: cast_nullable_to_non_nullable
              as DayTrip,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      fatal: null == fatal
          ? _value.fatal
          : fatal // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStartTimeToSave: null == hasStartTimeToSave
          ? _value.hasStartTimeToSave
          : hasStartTimeToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {required this.trip,
      required this.dayTrip,
      required this.errorMessage,
      required this.fatal,
      required this.hasStartTimeToSave});

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  @override
  final String errorMessage;
  @override
  final bool fatal;
  @override
  final bool hasStartTimeToSave;

  @override
  String toString() {
    return 'DayTripState.error(trip: $trip, dayTrip: $dayTrip, errorMessage: $errorMessage, fatal: $fatal, hasStartTimeToSave: $hasStartTimeToSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.fatal, fatal) || other.fatal == fatal) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, dayTrip, errorMessage, fatal, hasStartTimeToSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        initial,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave)
        loaded,
    required TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        deleted,
  }) {
    return error(trip, dayTrip, errorMessage, fatal, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult? Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
  }) {
    return error?.call(trip, dayTrip, errorMessage, fatal, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(trip, dayTrip, errorMessage, fatal, hasStartTimeToSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
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

abstract class _Error implements DayTripState {
  const factory _Error(
      {required final Trip trip,
      required final DayTrip dayTrip,
      required final String errorMessage,
      required final bool fatal,
      required final bool hasStartTimeToSave}) = _$ErrorImpl;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  String get errorMessage;
  bool get fatal;
  @override
  bool get hasStartTimeToSave;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditingImplCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$EditingImplCopyWith(
          _$EditingImpl value, $Res Function(_$EditingImpl) then) =
      __$$EditingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      DayTrip dayTrip,
      List<TripStop> tripStops,
      String? description,
      bool isSaving,
      bool hasStartTimeToSave,
      String? errorMessage});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$EditingImplCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$EditingImpl>
    implements _$$EditingImplCopyWith<$Res> {
  __$$EditingImplCopyWithImpl(
      _$EditingImpl _value, $Res Function(_$EditingImpl) _then)
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
    Object? errorMessage = freezed,
  }) {
    return _then(_$EditingImpl(
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditingImpl implements _Editing {
  const _$EditingImpl(
      {required this.trip,
      required this.dayTrip,
      required final List<TripStop> tripStops,
      required this.description,
      this.isSaving = false,
      required this.hasStartTimeToSave,
      this.errorMessage})
      : _tripStops = tripStops;

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  final List<TripStop> _tripStops;
  @override
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
  final bool hasStartTimeToSave;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DayTripState.editing(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, description: $description, isSaving: $isSaving, hasStartTimeToSave: $hasStartTimeToSave, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditingImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            const DeepCollectionEquality()
                .equals(other._tripStops, _tripStops) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trip,
      dayTrip,
      const DeepCollectionEquality().hash(_tripStops),
      description,
      isSaving,
      hasStartTimeToSave,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditingImplCopyWith<_$EditingImpl> get copyWith =>
      __$$EditingImplCopyWithImpl<_$EditingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        initial,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave)
        loaded,
    required TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        deleted,
  }) {
    return editing(trip, dayTrip, tripStops, description, isSaving,
        hasStartTimeToSave, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult? Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
  }) {
    return editing?.call(trip, dayTrip, tripStops, description, isSaving,
        hasStartTimeToSave, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(trip, dayTrip, tripStops, description, isSaving,
          hasStartTimeToSave, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
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

abstract class _Editing implements DayTripState {
  const factory _Editing(
      {required final Trip trip,
      required final DayTrip dayTrip,
      required final List<TripStop> tripStops,
      required final String? description,
      final bool isSaving,
      required final bool hasStartTimeToSave,
      final String? errorMessage}) = _$EditingImpl;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  List<TripStop> get tripStops;
  String? get description;
  bool get isSaving;
  @override
  bool get hasStartTimeToSave;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EditingImplCopyWith<_$EditingImpl> get copyWith =>
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
      required final List<TripStop> tripStops,
      required this.hasStartTimeToSave})
      : _tripStops = tripStops;

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  final List<TripStop> _tripStops;
  @override
  List<TripStop> get tripStops {
    if (_tripStops is EqualUnmodifiableListView) return _tripStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripStops);
  }

  @override
  final bool hasStartTimeToSave;

  @override
  String toString() {
    return 'DayTripState.deleting(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, hasStartTimeToSave: $hasStartTimeToSave)';
  }

  @override
  bool operator ==(Object other) {
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
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        initial,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave)
        loaded,
    required TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        deleted,
  }) {
    return deleting(trip, dayTrip, tripStops, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult? Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
  }) {
    return deleting?.call(trip, dayTrip, tripStops, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
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
      required final List<TripStop> tripStops,
      required final bool hasStartTimeToSave}) = _$DayTripStateDeletingImpl;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
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
  $Res call({Trip trip, DayTrip dayTrip, bool hasStartTimeToSave});

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
      this.hasStartTimeToSave = false});

  @override
  final Trip trip;
  @override
  final DayTrip dayTrip;
  @override
  @JsonKey()
  final bool hasStartTimeToSave;

  @override
  String toString() {
    return 'DayTripState.deleted(trip: $trip, dayTrip: $dayTrip, hasStartTimeToSave: $hasStartTimeToSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTripStateDeletedImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            (identical(other.hasStartTimeToSave, hasStartTimeToSave) ||
                other.hasStartTimeToSave == hasStartTimeToSave));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, trip, dayTrip, hasStartTimeToSave);

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
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        initial,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            bool hasStartTimeToSave,
            bool explictitStartTimeSave)
        loaded,
    required TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)
        error,
    required TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, bool hasStartTimeToSave)
        deleting,
    required TResult Function(
            Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)
        deleted,
  }) {
    return deleted(trip, dayTrip, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult? Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult? Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult? Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
  }) {
    return deleted?.call(trip, dayTrip, hasStartTimeToSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        initial,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave, bool explictitStartTimeSave)?
        loaded,
    TResult Function(Trip trip, DayTrip dayTrip, String errorMessage,
            bool fatal, bool hasStartTimeToSave)?
        error,
    TResult Function(
            Trip trip,
            DayTrip dayTrip,
            List<TripStop> tripStops,
            String? description,
            bool isSaving,
            bool hasStartTimeToSave,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            bool hasStartTimeToSave)?
        deleting,
    TResult Function(Trip trip, DayTrip dayTrip, bool hasStartTimeToSave)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(trip, dayTrip, hasStartTimeToSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(DayTripStateDeleting value) deleting,
    required TResult Function(DayTripStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(DayTripStateDeleting value)? deleting,
    TResult? Function(DayTripStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
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
      final bool hasStartTimeToSave}) = _$DayTripStateDeletedImpl;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  bool get hasStartTimeToSave;
  @override
  @JsonKey(ignore: true)
  _$$DayTripStateDeletedImplCopyWith<_$DayTripStateDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
