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
