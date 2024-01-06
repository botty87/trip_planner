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
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loading,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateLoading value) loading,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateNormal value)? normal,
    TResult? Function(TripStateLoading value)? loading,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateNormal value)? normal,
    TResult Function(TripStateLoading value)? loading,
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
abstract class _$$TripStateNormalImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateNormalImplCopyWith(_$TripStateNormalImpl value,
          $Res Function(_$TripStateNormalImpl) then) =
      __$$TripStateNormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateNormalImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateNormalImpl>
    implements _$$TripStateNormalImplCopyWith<$Res> {
  __$$TripStateNormalImplCopyWithImpl(
      _$TripStateNormalImpl _value, $Res Function(_$TripStateNormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$TripStateNormalImpl(
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

class _$TripStateNormalImpl implements TripStateNormal {
  const _$TripStateNormalImpl(
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
            other is _$TripStateNormalImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateNormalImplCopyWith<_$TripStateNormalImpl> get copyWith =>
      __$$TripStateNormalImplCopyWithImpl<_$TripStateNormalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loading,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)
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
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
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
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
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
    required TResult Function(TripStateLoading value) loading,
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
    TResult? Function(TripStateLoading value)? loading,
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
    TResult Function(TripStateLoading value)? loading,
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
      final List<DayTrip> dayTrips}) = _$TripStateNormalImpl;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripStateNormalImplCopyWith<_$TripStateNormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateLoadingImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateLoadingImplCopyWith(_$TripStateLoadingImpl value,
          $Res Function(_$TripStateLoadingImpl) then) =
      __$$TripStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateLoadingImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateLoadingImpl>
    implements _$$TripStateLoadingImplCopyWith<$Res> {
  __$$TripStateLoadingImplCopyWithImpl(_$TripStateLoadingImpl _value,
      $Res Function(_$TripStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$TripStateLoadingImpl(
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

class _$TripStateLoadingImpl implements TripStateLoading {
  const _$TripStateLoadingImpl(
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
    return 'TripState.loading(trip: $trip, dayTrips: $dayTrips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateLoadingImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateLoadingImplCopyWith<_$TripStateLoadingImpl> get copyWith =>
      __$$TripStateLoadingImplCopyWithImpl<_$TripStateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loading,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) {
    return loading(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) {
    return loading?.call(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(trip, dayTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateLoading value) loading,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateNormal value)? normal,
    TResult? Function(TripStateLoading value)? loading,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateNormal value)? normal,
    TResult Function(TripStateLoading value)? loading,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TripStateLoading implements TripState {
  const factory TripStateLoading(
      {required final Trip trip,
      final List<DayTrip> dayTrips}) = _$TripStateLoadingImpl;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripStateLoadingImplCopyWith<_$TripStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateErrorImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateErrorImplCopyWith(_$TripStateErrorImpl value,
          $Res Function(_$TripStateErrorImpl) then) =
      __$$TripStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips, String errorMessage});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateErrorImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateErrorImpl>
    implements _$$TripStateErrorImplCopyWith<$Res> {
  __$$TripStateErrorImplCopyWithImpl(
      _$TripStateErrorImpl _value, $Res Function(_$TripStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
    Object? errorMessage = null,
  }) {
    return _then(_$TripStateErrorImpl(
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

class _$TripStateErrorImpl implements TripStateError {
  const _$TripStateErrorImpl(
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
            other is _$TripStateErrorImpl &&
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
  _$$TripStateErrorImplCopyWith<_$TripStateErrorImpl> get copyWith =>
      __$$TripStateErrorImplCopyWithImpl<_$TripStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loading,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)
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
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
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
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
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
    required TResult Function(TripStateLoading value) loading,
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
    TResult? Function(TripStateLoading value)? loading,
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
    TResult Function(TripStateLoading value)? loading,
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
      required final String errorMessage}) = _$TripStateErrorImpl;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TripStateErrorImplCopyWith<_$TripStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateEditingImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateEditingImplCopyWith(_$TripStateEditingImpl value,
          $Res Function(_$TripStateEditingImpl) then) =
      __$$TripStateEditingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      List<DayTrip> dayTrips,
      String name,
      String? description,
      DateTime startDate,
      bool isPublic,
      bool isSaving});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateEditingImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateEditingImpl>
    implements _$$TripStateEditingImplCopyWith<$Res> {
  __$$TripStateEditingImplCopyWithImpl(_$TripStateEditingImpl _value,
      $Res Function(_$TripStateEditingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
    Object? name = null,
    Object? description = freezed,
    Object? startDate = null,
    Object? isPublic = null,
    Object? isSaving = null,
  }) {
    return _then(_$TripStateEditingImpl(
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
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TripStateEditingImpl implements TripStateEditing {
  const _$TripStateEditingImpl(
      {required this.trip,
      final List<DayTrip> dayTrips = const [],
      required this.name,
      required this.description,
      required this.startDate,
      required this.isPublic,
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
  final bool isPublic;
  @override
  @JsonKey()
  final bool isSaving;

  @override
  String toString() {
    return 'TripState.editing(trip: $trip, dayTrips: $dayTrips, name: $name, description: $description, startDate: $startDate, isPublic: $isPublic, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateEditingImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
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
      isPublic,
      isSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateEditingImplCopyWith<_$TripStateEditingImpl> get copyWith =>
      __$$TripStateEditingImplCopyWithImpl<_$TripStateEditingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loading,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)
        editing,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleting,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) deleted,
  }) {
    return editing(
        trip, dayTrips, name, description, startDate, isPublic, isSaving);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
        editing,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? deleted,
  }) {
    return editing?.call(
        trip, dayTrips, name, description, startDate, isPublic, isSaving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip, List<DayTrip> dayTrips)? normal,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
        editing,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleting,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? deleted,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(
          trip, dayTrips, name, description, startDate, isPublic, isSaving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateNormal value) normal,
    required TResult Function(TripStateLoading value) loading,
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
    TResult? Function(TripStateLoading value)? loading,
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
    TResult Function(TripStateLoading value)? loading,
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
      required final bool isPublic,
      final bool isSaving}) = _$TripStateEditingImpl;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  String get name;
  String? get description;
  DateTime get startDate;
  bool get isPublic;
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$$TripStateEditingImplCopyWith<_$TripStateEditingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateDeletingImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateDeletingImplCopyWith(_$TripStateDeletingImpl value,
          $Res Function(_$TripStateDeletingImpl) then) =
      __$$TripStateDeletingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateDeletingImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateDeletingImpl>
    implements _$$TripStateDeletingImplCopyWith<$Res> {
  __$$TripStateDeletingImplCopyWithImpl(_$TripStateDeletingImpl _value,
      $Res Function(_$TripStateDeletingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$TripStateDeletingImpl(
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

class _$TripStateDeletingImpl implements TripStateDeleting {
  const _$TripStateDeletingImpl(
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
            other is _$TripStateDeletingImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateDeletingImplCopyWith<_$TripStateDeletingImpl> get copyWith =>
      __$$TripStateDeletingImplCopyWithImpl<_$TripStateDeletingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loading,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)
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
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
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
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
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
    required TResult Function(TripStateLoading value) loading,
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
    TResult? Function(TripStateLoading value)? loading,
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
    TResult Function(TripStateLoading value)? loading,
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
      final List<DayTrip> dayTrips}) = _$TripStateDeletingImpl;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripStateDeletingImplCopyWith<_$TripStateDeletingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateDeletedImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateDeletedImplCopyWith(_$TripStateDeletedImpl value,
          $Res Function(_$TripStateDeletedImpl) then) =
      __$$TripStateDeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateDeletedImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateDeletedImpl>
    implements _$$TripStateDeletedImplCopyWith<$Res> {
  __$$TripStateDeletedImplCopyWithImpl(_$TripStateDeletedImpl _value,
      $Res Function(_$TripStateDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$TripStateDeletedImpl(
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

class _$TripStateDeletedImpl implements TripStateDeleted {
  const _$TripStateDeletedImpl(
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
            other is _$TripStateDeletedImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateDeletedImplCopyWith<_$TripStateDeletedImpl> get copyWith =>
      __$$TripStateDeletedImplCopyWithImpl<_$TripStateDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip, List<DayTrip> dayTrips) normal,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loading,
    required TResult Function(
            Trip trip, List<DayTrip> dayTrips, String errorMessage)
        error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)
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
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult? Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
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
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loading,
    TResult Function(Trip trip, List<DayTrip> dayTrips, String errorMessage)?
        error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            bool isSaving)?
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
    required TResult Function(TripStateLoading value) loading,
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
    TResult? Function(TripStateLoading value)? loading,
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
    TResult Function(TripStateLoading value)? loading,
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
      final List<DayTrip> dayTrips}) = _$TripStateDeletedImpl;

  @override
  Trip get trip;
  @override
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripStateDeletedImplCopyWith<_$TripStateDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
