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
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

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
  $Res call({List<Trip> trips, bool isLoading, String? errorMessage});
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
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripsStateImplCopyWith<$Res>
    implements $TripsStateCopyWith<$Res> {
  factory _$$TripsStateImplCopyWith(
          _$TripsStateImpl value, $Res Function(_$TripsStateImpl) then) =
      __$$TripsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Trip> trips, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$TripsStateImplCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$TripsStateImpl>
    implements _$$TripsStateImplCopyWith<$Res> {
  __$$TripsStateImplCopyWithImpl(
      _$TripsStateImpl _value, $Res Function(_$TripsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TripsStateImpl(
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TripsStateImpl implements _TripsState {
  const _$TripsStateImpl(
      {final List<Trip> trips = const [],
      this.isLoading = true,
      this.errorMessage})
      : _trips = trips;

  final List<Trip> _trips;
  @override
  @JsonKey()
  List<Trip> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TripsState(trips: $trips, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsStateImpl &&
            const DeepCollectionEquality().equals(other._trips, _trips) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_trips), isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsStateImplCopyWith<_$TripsStateImpl> get copyWith =>
      __$$TripsStateImplCopyWithImpl<_$TripsStateImpl>(this, _$identity);
}

abstract class _TripsState implements TripsState {
  const factory _TripsState(
      {final List<Trip> trips,
      final bool isLoading,
      final String? errorMessage}) = _$TripsStateImpl;

  @override
  List<Trip> get trips;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TripsStateImplCopyWith<_$TripsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
