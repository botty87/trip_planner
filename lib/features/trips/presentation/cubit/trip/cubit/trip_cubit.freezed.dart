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
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Trip trip, String? errorMessage) $default, {
    required TResult Function(Trip trip, String name, String? description,
            bool isSaving, String? errorMessage)
        editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Trip trip, String? errorMessage)? $default, {
    TResult? Function(Trip trip, String name, String? description,
            bool isSaving, String? errorMessage)?
        editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Trip trip, String? errorMessage)? $default, {
    TResult Function(Trip trip, String name, String? description, bool isSaving,
            String? errorMessage)?
        editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripState value) $default, {
    required TResult Function(TripStateEditing value) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripState value)? $default, {
    TResult? Function(TripStateEditing value)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripState value)? $default, {
    TResult Function(TripStateEditing value)? editing,
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
  $Res call({Trip trip, String? errorMessage});

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
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_TripStateCopyWith<$Res> implements $TripStateCopyWith<$Res> {
  factory _$$_TripStateCopyWith(
          _$_TripState value, $Res Function(_$_TripState) then) =
      __$$_TripStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Trip trip, String? errorMessage});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$_TripStateCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$_TripState>
    implements _$$_TripStateCopyWith<$Res> {
  __$$_TripStateCopyWithImpl(
      _$_TripState _value, $Res Function(_$_TripState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_TripState(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TripState implements _TripState {
  const _$_TripState({required this.trip, this.errorMessage});

  @override
  final Trip trip;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TripState(trip: $trip, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripState &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripStateCopyWith<_$_TripState> get copyWith =>
      __$$_TripStateCopyWithImpl<_$_TripState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Trip trip, String? errorMessage) $default, {
    required TResult Function(Trip trip, String name, String? description,
            bool isSaving, String? errorMessage)
        editing,
  }) {
    return $default(trip, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Trip trip, String? errorMessage)? $default, {
    TResult? Function(Trip trip, String name, String? description,
            bool isSaving, String? errorMessage)?
        editing,
  }) {
    return $default?.call(trip, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Trip trip, String? errorMessage)? $default, {
    TResult Function(Trip trip, String name, String? description, bool isSaving,
            String? errorMessage)?
        editing,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(trip, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripState value) $default, {
    required TResult Function(TripStateEditing value) editing,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripState value)? $default, {
    TResult? Function(TripStateEditing value)? editing,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripState value)? $default, {
    TResult Function(TripStateEditing value)? editing,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TripState implements TripState {
  const factory _TripState(
      {required final Trip trip, final String? errorMessage}) = _$_TripState;

  @override
  Trip get trip;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TripStateCopyWith<_$_TripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripStateEditingCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateEditingCopyWith(
          _$TripStateEditing value, $Res Function(_$TripStateEditing) then) =
      __$$TripStateEditingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      String name,
      String? description,
      bool isSaving,
      String? errorMessage});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripStateEditingCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateEditing>
    implements _$$TripStateEditingCopyWith<$Res> {
  __$$TripStateEditingCopyWithImpl(
      _$TripStateEditing _value, $Res Function(_$TripStateEditing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? name = null,
    Object? description = freezed,
    Object? isSaving = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TripStateEditing(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$TripStateEditing implements TripStateEditing {
  const _$TripStateEditing(
      {required this.trip,
      required this.name,
      required this.description,
      this.isSaving = false,
      this.errorMessage});

  @override
  final Trip trip;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TripState.editing(trip: $trip, name: $name, description: $description, isSaving: $isSaving, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateEditing &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, trip, name, description, isSaving, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateEditingCopyWith<_$TripStateEditing> get copyWith =>
      __$$TripStateEditingCopyWithImpl<_$TripStateEditing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Trip trip, String? errorMessage) $default, {
    required TResult Function(Trip trip, String name, String? description,
            bool isSaving, String? errorMessage)
        editing,
  }) {
    return editing(trip, name, description, isSaving, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Trip trip, String? errorMessage)? $default, {
    TResult? Function(Trip trip, String name, String? description,
            bool isSaving, String? errorMessage)?
        editing,
  }) {
    return editing?.call(trip, name, description, isSaving, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Trip trip, String? errorMessage)? $default, {
    TResult Function(Trip trip, String name, String? description, bool isSaving,
            String? errorMessage)?
        editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(trip, name, description, isSaving, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripState value) $default, {
    required TResult Function(TripStateEditing value) editing,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TripState value)? $default, {
    TResult? Function(TripStateEditing value)? editing,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripState value)? $default, {
    TResult Function(TripStateEditing value)? editing,
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
      required final String name,
      required final String? description,
      final bool isSaving,
      final String? errorMessage}) = _$TripStateEditing;

  @override
  Trip get trip;
  String get name;
  String? get description;
  bool get isSaving;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TripStateEditingCopyWith<_$TripStateEditing> get copyWith =>
      throw _privateConstructorUsedError;
}
