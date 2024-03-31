// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_new_trip_stop_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverNewTripStopState {
  TripStop get tripStop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverNewTripStopStateCopyWith<DiscoverNewTripStopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverNewTripStopStateCopyWith<$Res> {
  factory $DiscoverNewTripStopStateCopyWith(DiscoverNewTripStopState value,
          $Res Function(DiscoverNewTripStopState) then) =
      _$DiscoverNewTripStopStateCopyWithImpl<$Res, DiscoverNewTripStopState>;
  @useResult
  $Res call({TripStop tripStop});

  $TripStopCopyWith<$Res> get tripStop;
}

/// @nodoc
class _$DiscoverNewTripStopStateCopyWithImpl<$Res,
        $Val extends DiscoverNewTripStopState>
    implements $DiscoverNewTripStopStateCopyWith<$Res> {
  _$DiscoverNewTripStopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripStop = null,
  }) {
    return _then(_value.copyWith(
      tripStop: null == tripStop
          ? _value.tripStop
          : tripStop // ignore: cast_nullable_to_non_nullable
              as TripStop,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripStopCopyWith<$Res> get tripStop {
    return $TripStopCopyWith<$Res>(_value.tripStop, (value) {
      return _then(_value.copyWith(tripStop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NormalImplCopyWith<$Res>
    implements $DiscoverNewTripStopStateCopyWith<$Res> {
  factory _$$NormalImplCopyWith(
          _$NormalImpl value, $Res Function(_$NormalImpl) then) =
      __$$NormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TripStop tripStop});

  @override
  $TripStopCopyWith<$Res> get tripStop;
}

/// @nodoc
class __$$NormalImplCopyWithImpl<$Res>
    extends _$DiscoverNewTripStopStateCopyWithImpl<$Res, _$NormalImpl>
    implements _$$NormalImplCopyWith<$Res> {
  __$$NormalImplCopyWithImpl(
      _$NormalImpl _value, $Res Function(_$NormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripStop = null,
  }) {
    return _then(_$NormalImpl(
      tripStop: null == tripStop
          ? _value.tripStop
          : tripStop // ignore: cast_nullable_to_non_nullable
              as TripStop,
    ));
  }
}

/// @nodoc

class _$NormalImpl implements _Normal {
  const _$NormalImpl({required this.tripStop});

  @override
  final TripStop tripStop;

  @override
  String toString() {
    return 'DiscoverNewTripStopState(tripStop: $tripStop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NormalImpl &&
            (identical(other.tripStop, tripStop) ||
                other.tripStop == tripStop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripStop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      __$$NormalImplCopyWithImpl<_$NormalImpl>(this, _$identity);
}

abstract class _Normal implements DiscoverNewTripStopState {
  const factory _Normal({required final TripStop tripStop}) = _$NormalImpl;

  @override
  TripStop get tripStop;
  @override
  @JsonKey(ignore: true)
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
