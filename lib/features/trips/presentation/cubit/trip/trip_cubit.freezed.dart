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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripState {
  Trip get trip => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip) initial,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loaded,
    required TResult Function(Trip trip, String errorMessage, bool fatal) error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip) deleting,
    required TResult Function(Trip trip) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip)? initial,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult? Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip)? deleting,
    TResult? Function(Trip trip)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip)? initial,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip)? deleting,
    TResult Function(Trip trip)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateInitial value) initial,
    required TResult Function(TripStateLoaded value) loaded,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateInitial value)? initial,
    TResult? Function(TripStateLoaded value)? loaded,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateInitial value)? initial,
    TResult Function(TripStateLoaded value)? loaded,
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
  $Res call({Trip trip});

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
  }) {
    return _then(_value.copyWith(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
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
abstract class _$$TripStateInitialImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateInitialImplCopyWith(_$TripStateInitialImpl value,
          $Res Function(_$TripStateInitialImpl) then) =
      __$$TripStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateInitialImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateInitialImpl>
    implements _$$TripStateInitialImplCopyWith<$Res> {
  __$$TripStateInitialImplCopyWithImpl(_$TripStateInitialImpl _value,
      $Res Function(_$TripStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
  }) {
    return _then(_$TripStateInitialImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
    ));
  }
}

/// @nodoc

class _$TripStateInitialImpl implements TripStateInitial {
  const _$TripStateInitialImpl({required this.trip});

  @override
  final Trip trip;

  @override
  String toString() {
    return 'TripState.initial(trip: $trip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateInitialImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateInitialImplCopyWith<_$TripStateInitialImpl> get copyWith =>
      __$$TripStateInitialImplCopyWithImpl<_$TripStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip) initial,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loaded,
    required TResult Function(Trip trip, String errorMessage, bool fatal) error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip) deleting,
    required TResult Function(Trip trip) deleted,
  }) {
    return initial(trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip)? initial,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult? Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip)? deleting,
    TResult? Function(Trip trip)? deleted,
  }) {
    return initial?.call(trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip)? initial,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip)? deleting,
    TResult Function(Trip trip)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateInitial value) initial,
    required TResult Function(TripStateLoaded value) loaded,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateInitial value)? initial,
    TResult? Function(TripStateLoaded value)? loaded,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateInitial value)? initial,
    TResult Function(TripStateLoaded value)? loaded,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TripStateInitial implements TripState {
  const factory TripStateInitial({required final Trip trip}) =
      _$TripStateInitialImpl;

  @override
  Trip get trip;
  @override
  @JsonKey(ignore: true)
  _$$TripStateInitialImplCopyWith<_$TripStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateLoadedImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateLoadedImplCopyWith(_$TripStateLoadedImpl value,
          $Res Function(_$TripStateLoadedImpl) then) =
      __$$TripStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateLoadedImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateLoadedImpl>
    implements _$$TripStateLoadedImplCopyWith<$Res> {
  __$$TripStateLoadedImplCopyWithImpl(
      _$TripStateLoadedImpl _value, $Res Function(_$TripStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$TripStateLoadedImpl(
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

class _$TripStateLoadedImpl implements TripStateLoaded {
  const _$TripStateLoadedImpl(
      {required this.trip, required final List<DayTrip> dayTrips})
      : _dayTrips = dayTrips;

  @override
  final Trip trip;
  final List<DayTrip> _dayTrips;
  @override
  List<DayTrip> get dayTrips {
    if (_dayTrips is EqualUnmodifiableListView) return _dayTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayTrips);
  }

  @override
  String toString() {
    return 'TripState.loaded(trip: $trip, dayTrips: $dayTrips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateLoadedImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateLoadedImplCopyWith<_$TripStateLoadedImpl> get copyWith =>
      __$$TripStateLoadedImplCopyWithImpl<_$TripStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip) initial,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loaded,
    required TResult Function(Trip trip, String errorMessage, bool fatal) error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip) deleting,
    required TResult Function(Trip trip) deleted,
  }) {
    return loaded(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip)? initial,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult? Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip)? deleting,
    TResult? Function(Trip trip)? deleted,
  }) {
    return loaded?.call(trip, dayTrips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip)? initial,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip)? deleting,
    TResult Function(Trip trip)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(trip, dayTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateInitial value) initial,
    required TResult Function(TripStateLoaded value) loaded,
    required TResult Function(TripStateError value) error,
    required TResult Function(TripStateEditing value) editing,
    required TResult Function(TripStateDeleting value) deleting,
    required TResult Function(TripStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TripStateInitial value)? initial,
    TResult? Function(TripStateLoaded value)? loaded,
    TResult? Function(TripStateError value)? error,
    TResult? Function(TripStateEditing value)? editing,
    TResult? Function(TripStateDeleting value)? deleting,
    TResult? Function(TripStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TripStateInitial value)? initial,
    TResult Function(TripStateLoaded value)? loaded,
    TResult Function(TripStateError value)? error,
    TResult Function(TripStateEditing value)? editing,
    TResult Function(TripStateDeleting value)? deleting,
    TResult Function(TripStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TripStateLoaded implements TripState {
  const factory TripStateLoaded(
      {required final Trip trip,
      required final List<DayTrip> dayTrips}) = _$TripStateLoadedImpl;

  @override
  Trip get trip;
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripStateLoadedImplCopyWith<_$TripStateLoadedImpl> get copyWith =>
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
  $Res call({Trip trip, String errorMessage, bool fatal});

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
    Object? errorMessage = null,
    Object? fatal = null,
  }) {
    return _then(_$TripStateErrorImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      fatal: null == fatal
          ? _value.fatal
          : fatal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TripStateErrorImpl implements TripStateError {
  const _$TripStateErrorImpl(
      {required this.trip, required this.errorMessage, required this.fatal});

  @override
  final Trip trip;
  @override
  final String errorMessage;
  @override
  final bool fatal;

  @override
  String toString() {
    return 'TripState.error(trip: $trip, errorMessage: $errorMessage, fatal: $fatal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateErrorImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.fatal, fatal) || other.fatal == fatal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, errorMessage, fatal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateErrorImplCopyWith<_$TripStateErrorImpl> get copyWith =>
      __$$TripStateErrorImplCopyWithImpl<_$TripStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip) initial,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loaded,
    required TResult Function(Trip trip, String errorMessage, bool fatal) error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip) deleting,
    required TResult Function(Trip trip) deleted,
  }) {
    return error(trip, errorMessage, fatal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip)? initial,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult? Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip)? deleting,
    TResult? Function(Trip trip)? deleted,
  }) {
    return error?.call(trip, errorMessage, fatal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip)? initial,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip)? deleting,
    TResult Function(Trip trip)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(trip, errorMessage, fatal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateInitial value) initial,
    required TResult Function(TripStateLoaded value) loaded,
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
    TResult? Function(TripStateInitial value)? initial,
    TResult? Function(TripStateLoaded value)? loaded,
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
    TResult Function(TripStateInitial value)? initial,
    TResult Function(TripStateLoaded value)? loaded,
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
      required final String errorMessage,
      required final bool fatal}) = _$TripStateErrorImpl;

  @override
  Trip get trip;
  String get errorMessage;
  bool get fatal;
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
      String languageCode,
      bool isSaving,
      String? errorMessage});

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
    Object? languageCode = null,
    Object? isSaving = null,
    Object? errorMessage = freezed,
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
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TripStateEditingImpl implements TripStateEditing {
  const _$TripStateEditingImpl(
      {required this.trip,
      required final List<DayTrip> dayTrips,
      required this.name,
      required this.description,
      required this.startDate,
      required this.isPublic,
      required this.languageCode,
      this.isSaving = false,
      this.errorMessage})
      : _dayTrips = dayTrips;

  @override
  final Trip trip;
  final List<DayTrip> _dayTrips;
  @override
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
  final String languageCode;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TripState.editing(trip: $trip, dayTrips: $dayTrips, name: $name, description: $description, startDate: $startDate, isPublic: $isPublic, languageCode: $languageCode, isSaving: $isSaving, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
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
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
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
      languageCode,
      isSaving,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateEditingImplCopyWith<_$TripStateEditingImpl> get copyWith =>
      __$$TripStateEditingImplCopyWithImpl<_$TripStateEditingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip) initial,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loaded,
    required TResult Function(Trip trip, String errorMessage, bool fatal) error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip) deleting,
    required TResult Function(Trip trip) deleted,
  }) {
    return editing(trip, dayTrips, name, description, startDate, isPublic,
        languageCode, isSaving, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip)? initial,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult? Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip)? deleting,
    TResult? Function(Trip trip)? deleted,
  }) {
    return editing?.call(trip, dayTrips, name, description, startDate, isPublic,
        languageCode, isSaving, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip)? initial,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip)? deleting,
    TResult Function(Trip trip)? deleted,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(trip, dayTrips, name, description, startDate, isPublic,
          languageCode, isSaving, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateInitial value) initial,
    required TResult Function(TripStateLoaded value) loaded,
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
    TResult? Function(TripStateInitial value)? initial,
    TResult? Function(TripStateLoaded value)? loaded,
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
    TResult Function(TripStateInitial value)? initial,
    TResult Function(TripStateLoaded value)? loaded,
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
      required final List<DayTrip> dayTrips,
      required final String name,
      required final String? description,
      required final DateTime startDate,
      required final bool isPublic,
      required final String languageCode,
      final bool isSaving,
      final String? errorMessage}) = _$TripStateEditingImpl;

  @override
  Trip get trip;
  List<DayTrip> get dayTrips;
  String get name;
  String? get description;
  DateTime get startDate;
  bool get isPublic;
  String get languageCode;
  bool get isSaving;
  String? get errorMessage;
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
  $Res call({Trip trip});

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
  }) {
    return _then(_$TripStateDeletingImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
    ));
  }
}

/// @nodoc

class _$TripStateDeletingImpl implements TripStateDeleting {
  const _$TripStateDeletingImpl({required this.trip});

  @override
  final Trip trip;

  @override
  String toString() {
    return 'TripState.deleting(trip: $trip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateDeletingImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateDeletingImplCopyWith<_$TripStateDeletingImpl> get copyWith =>
      __$$TripStateDeletingImplCopyWithImpl<_$TripStateDeletingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip) initial,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loaded,
    required TResult Function(Trip trip, String errorMessage, bool fatal) error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip) deleting,
    required TResult Function(Trip trip) deleted,
  }) {
    return deleting(trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip)? initial,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult? Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip)? deleting,
    TResult? Function(Trip trip)? deleted,
  }) {
    return deleting?.call(trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip)? initial,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip)? deleting,
    TResult Function(Trip trip)? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateInitial value) initial,
    required TResult Function(TripStateLoaded value) loaded,
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
    TResult? Function(TripStateInitial value)? initial,
    TResult? Function(TripStateLoaded value)? loaded,
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
    TResult Function(TripStateInitial value)? initial,
    TResult Function(TripStateLoaded value)? loaded,
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
  const factory TripStateDeleting({required final Trip trip}) =
      _$TripStateDeletingImpl;

  @override
  Trip get trip;
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
  $Res call({Trip trip});

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
  }) {
    return _then(_$TripStateDeletedImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
    ));
  }
}

/// @nodoc

class _$TripStateDeletedImpl implements TripStateDeleted {
  const _$TripStateDeletedImpl({required this.trip});

  @override
  final Trip trip;

  @override
  String toString() {
    return 'TripState.deleted(trip: $trip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateDeletedImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateDeletedImplCopyWith<_$TripStateDeletedImpl> get copyWith =>
      __$$TripStateDeletedImplCopyWithImpl<_$TripStateDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trip trip) initial,
    required TResult Function(Trip trip, List<DayTrip> dayTrips) loaded,
    required TResult Function(Trip trip, String errorMessage, bool fatal) error,
    required TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)
        editing,
    required TResult Function(Trip trip) deleting,
    required TResult Function(Trip trip) deleted,
  }) {
    return deleted(trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trip trip)? initial,
    TResult? Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult? Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult? Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult? Function(Trip trip)? deleting,
    TResult? Function(Trip trip)? deleted,
  }) {
    return deleted?.call(trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trip trip)? initial,
    TResult Function(Trip trip, List<DayTrip> dayTrips)? loaded,
    TResult Function(Trip trip, String errorMessage, bool fatal)? error,
    TResult Function(
            Trip trip,
            List<DayTrip> dayTrips,
            String name,
            String? description,
            DateTime startDate,
            bool isPublic,
            String languageCode,
            bool isSaving,
            String? errorMessage)?
        editing,
    TResult Function(Trip trip)? deleting,
    TResult Function(Trip trip)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TripStateInitial value) initial,
    required TResult Function(TripStateLoaded value) loaded,
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
    TResult? Function(TripStateInitial value)? initial,
    TResult? Function(TripStateLoaded value)? loaded,
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
    TResult Function(TripStateInitial value)? initial,
    TResult Function(TripStateLoaded value)? loaded,
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
  const factory TripStateDeleted({required final Trip trip}) =
      _$TripStateDeletedImpl;

  @override
  Trip get trip;
  @override
  @JsonKey(ignore: true)
  _$$TripStateDeletedImplCopyWith<_$TripStateDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
