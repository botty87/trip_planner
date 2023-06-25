// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trips_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripsState {
  List<Trip> get trips => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripsStateCopyWith<TripsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripsStateCopyWith<$Res> {
  factory $TripsStateCopyWith(
          TripsState value, $Res Function(TripsState) then) =
      _$TripsStateCopyWithImpl<$Res, TripsState>;
  @useResult
  $Res call({List<Trip> trips});
}

/// @nodoc
class _$TripsStateCopyWithImpl<$Res, $Val extends TripsState>
    implements $TripsStateCopyWith<$Res> {
  _$TripsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
  }) {
    return _then(_value.copyWith(
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripsStateCopyWith<$Res>
    implements $TripsStateCopyWith<$Res> {
  factory _$$_TripsStateCopyWith(
          _$_TripsState value, $Res Function(_$_TripsState) then) =
      __$$_TripsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Trip> trips});
}

/// @nodoc
class __$$_TripsStateCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$_TripsState>
    implements _$$_TripsStateCopyWith<$Res> {
  __$$_TripsStateCopyWithImpl(
      _$_TripsState _value, $Res Function(_$_TripsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
  }) {
    return _then(_$_TripsState(
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ));
  }
}

/// @nodoc

class _$_TripsState implements _TripsState {
  _$_TripsState({final List<Trip> trips = const []}) : _trips = trips;

  final List<Trip> _trips;
  @override
  @JsonKey()
  List<Trip> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  String toString() {
    return 'TripsState(trips: $trips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripsState &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripsStateCopyWith<_$_TripsState> get copyWith =>
      __$$_TripsStateCopyWithImpl<_$_TripsState>(this, _$identity);
}

abstract class _TripsState implements TripsState {
  factory _TripsState({final List<Trip> trips}) = _$_TripsState;

  @override
  List<Trip> get trips;
  @override
  @JsonKey(ignore: true)
  _$$_TripsStateCopyWith<_$_TripsState> get copyWith =>
      throw _privateConstructorUsedError;
}
