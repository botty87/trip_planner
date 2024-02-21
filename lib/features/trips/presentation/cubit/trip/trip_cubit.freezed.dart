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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Normal value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Normal value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Normal value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
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
abstract class _$$InitialImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
  }) {
    return _then(_$InitialImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.trip});

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
            other is _$InitialImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Normal value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Normal value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Normal value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TripState {
  const factory _Initial({required final Trip trip}) = _$InitialImpl;

  @override
  Trip get trip;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NormalImplCopyWith<$Res> implements $TripStateCopyWith<$Res> {
  factory _$$NormalImplCopyWith(
          _$NormalImpl value, $Res Function(_$NormalImpl) then) =
      __$$NormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, List<DayTrip> dayTrips});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$NormalImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$NormalImpl>
    implements _$$NormalImplCopyWith<$Res> {
  __$$NormalImplCopyWithImpl(
      _$NormalImpl _value, $Res Function(_$NormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? dayTrips = null,
  }) {
    return _then(_$NormalImpl(
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

class _$NormalImpl implements _Normal {
  const _$NormalImpl(
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
            other is _$NormalImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._dayTrips, _dayTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trip, const DeepCollectionEquality().hash(_dayTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      __$$NormalImplCopyWithImpl<_$NormalImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Normal value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Normal value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Normal value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Normal implements TripState {
  const factory _Normal(
      {required final Trip trip,
      required final List<DayTrip> dayTrips}) = _$NormalImpl;

  @override
  Trip get trip;
  List<DayTrip> get dayTrips;
  @override
  @JsonKey(ignore: true)
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $TripStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, String errorMessage, bool fatal});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? errorMessage = null,
    Object? fatal = null,
  }) {
    return _then(_$ErrorImpl(
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

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
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
            other is _$ErrorImpl &&
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
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Normal value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Normal value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Normal value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TripState {
  const factory _Error(
      {required final Trip trip,
      required final String errorMessage,
      required final bool fatal}) = _$ErrorImpl;

  @override
  Trip get trip;
  String get errorMessage;
  bool get fatal;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditingImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$EditingImplCopyWith(
          _$EditingImpl value, $Res Function(_$EditingImpl) then) =
      __$$EditingImplCopyWithImpl<$Res>;
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
class __$$EditingImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$EditingImpl>
    implements _$$EditingImplCopyWith<$Res> {
  __$$EditingImplCopyWithImpl(
      _$EditingImpl _value, $Res Function(_$EditingImpl) _then)
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
    return _then(_$EditingImpl(
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

class _$EditingImpl implements _Editing {
  const _$EditingImpl(
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
            other is _$EditingImpl &&
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
  _$$EditingImplCopyWith<_$EditingImpl> get copyWith =>
      __$$EditingImplCopyWithImpl<_$EditingImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Normal value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Normal value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Normal value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements TripState {
  const factory _Editing(
      {required final Trip trip,
      required final List<DayTrip> dayTrips,
      required final String name,
      required final String? description,
      required final DateTime startDate,
      required final bool isPublic,
      required final String languageCode,
      final bool isSaving,
      final String? errorMessage}) = _$EditingImpl;

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
  _$$EditingImplCopyWith<_$EditingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(
          _$DeletingImpl value, $Res Function(_$DeletingImpl) then) =
      __$$DeletingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$DeletingImpl>
    implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(
      _$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
  }) {
    return _then(_$DeletingImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
    ));
  }
}

/// @nodoc

class _$DeletingImpl implements _Deleting {
  const _$DeletingImpl({required this.trip});

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
            other is _$DeletingImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletingImplCopyWith<_$DeletingImpl> get copyWith =>
      __$$DeletingImplCopyWithImpl<_$DeletingImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Normal value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Normal value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Normal value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class _Deleting implements TripState {
  const factory _Deleting({required final Trip trip}) = _$DeletingImpl;

  @override
  Trip get trip;
  @override
  @JsonKey(ignore: true)
  _$$DeletingImplCopyWith<_$DeletingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
  }) {
    return _then(_$DeletedImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl({required this.trip});

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
            other is _$DeletedImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Normal value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Normal value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Normal value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TripState {
  const factory _Deleted({required final Trip trip}) = _$DeletedImpl;

  @override
  Trip get trip;
  @override
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
