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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)
        $default, {
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, String? description)
        editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)?
        $default, {
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description)?
        editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)?
        $default, {
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description)?
        editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DayTripState value) $default, {
    required TResult Function(DayTripStateEditing value) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DayTripState value)? $default, {
    TResult? Function(DayTripStateEditing value)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DayTripState value)? $default, {
    TResult Function(DayTripStateEditing value)? editing,
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
  $Res call({Trip trip, DayTrip dayTrip, List<TripStop> tripStops});

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
abstract class _$$_DayTripStateCopyWith<$Res>
    implements $DayTripStateCopyWith<$Res> {
  factory _$$_DayTripStateCopyWith(
          _$_DayTripState value, $Res Function(_$_DayTripState) then) =
      __$$_DayTripStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, DayTrip dayTrip, List<TripStop> tripStops});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $DayTripCopyWith<$Res> get dayTrip;
}

/// @nodoc
class __$$_DayTripStateCopyWithImpl<$Res>
    extends _$DayTripStateCopyWithImpl<$Res, _$_DayTripState>
    implements _$$_DayTripStateCopyWith<$Res> {
  __$$_DayTripStateCopyWithImpl(
      _$_DayTripState _value, $Res Function(_$_DayTripState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrip = null,
    Object? tripStops = null,
  }) {
    return _then(_$_DayTripState(
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
    ));
  }
}

/// @nodoc

class _$_DayTripState implements _DayTripState {
  const _$_DayTripState(
      {required this.trip,
      required this.dayTrip,
      final List<TripStop> tripStops = const []})
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
  String toString() {
    return 'DayTripState(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayTripState &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dayTrip, dayTrip) || other.dayTrip == dayTrip) &&
            const DeepCollectionEquality()
                .equals(other._tripStops, _tripStops));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, dayTrip,
      const DeepCollectionEquality().hash(_tripStops));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayTripStateCopyWith<_$_DayTripState> get copyWith =>
      __$$_DayTripStateCopyWithImpl<_$_DayTripState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)
        $default, {
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, String? description)
        editing,
  }) {
    return $default(trip, dayTrip, tripStops);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)?
        $default, {
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description)?
        editing,
  }) {
    return $default?.call(trip, dayTrip, tripStops);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)?
        $default, {
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description)?
        editing,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(trip, dayTrip, tripStops);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DayTripState value) $default, {
    required TResult Function(DayTripStateEditing value) editing,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DayTripState value)? $default, {
    TResult? Function(DayTripStateEditing value)? editing,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DayTripState value)? $default, {
    TResult Function(DayTripStateEditing value)? editing,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _DayTripState implements DayTripState {
  const factory _DayTripState(
      {required final Trip trip,
      required final DayTrip dayTrip,
      final List<TripStop> tripStops}) = _$_DayTripState;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  List<TripStop> get tripStops;
  @override
  @JsonKey(ignore: true)
  _$$_DayTripStateCopyWith<_$_DayTripState> get copyWith =>
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
      String? description});

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
    ));
  }
}

/// @nodoc

class _$DayTripStateEditing implements DayTripStateEditing {
  const _$DayTripStateEditing(
      {required this.trip,
      required this.dayTrip,
      final List<TripStop> tripStops = const [],
      required this.description})
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
  String toString() {
    return 'DayTripState.editing(trip: $trip, dayTrip: $dayTrip, tripStops: $tripStops, description: $description)';
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
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, dayTrip,
      const DeepCollectionEquality().hash(_tripStops), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTripStateEditingCopyWith<_$DayTripStateEditing> get copyWith =>
      __$$DayTripStateEditingCopyWithImpl<_$DayTripStateEditing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)
        $default, {
    required TResult Function(Trip trip, DayTrip dayTrip,
            List<TripStop> tripStops, String? description)
        editing,
  }) {
    return editing(trip, dayTrip, tripStops, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)?
        $default, {
    TResult? Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description)?
        editing,
  }) {
    return editing?.call(trip, dayTrip, tripStops, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops)?
        $default, {
    TResult Function(Trip trip, DayTrip dayTrip, List<TripStop> tripStops,
            String? description)?
        editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(trip, dayTrip, tripStops, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DayTripState value) $default, {
    required TResult Function(DayTripStateEditing value) editing,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DayTripState value)? $default, {
    TResult? Function(DayTripStateEditing value)? editing,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DayTripState value)? $default, {
    TResult Function(DayTripStateEditing value)? editing,
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
      required final String? description}) = _$DayTripStateEditing;

  @override
  Trip get trip;
  @override
  DayTrip get dayTrip;
  @override
  List<TripStop> get tripStops;
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$DayTripStateEditingCopyWith<_$DayTripStateEditing> get copyWith =>
      throw _privateConstructorUsedError;
}
