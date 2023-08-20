// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_day_trip_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewDayTripState {
  String? get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description) normal,
    required TResult Function(String? description) saving,
    required TResult Function(String? description) created,
    required TResult Function(String? description, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description)? normal,
    TResult? Function(String? description)? saving,
    TResult? Function(String? description)? created,
    TResult? Function(String? description, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description)? normal,
    TResult Function(String? description)? saving,
    TResult Function(String? description)? created,
    TResult Function(String? description, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDayTripStateNormal value) normal,
    required TResult Function(NewDayTripStateSaving value) saving,
    required TResult Function(NewDayTripStateCreated value) created,
    required TResult Function(NewDayTripStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDayTripStateNormal value)? normal,
    TResult? Function(NewDayTripStateSaving value)? saving,
    TResult? Function(NewDayTripStateCreated value)? created,
    TResult? Function(NewDayTripStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDayTripStateNormal value)? normal,
    TResult Function(NewDayTripStateSaving value)? saving,
    TResult Function(NewDayTripStateCreated value)? created,
    TResult Function(NewDayTripStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewDayTripStateCopyWith<NewDayTripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewDayTripStateCopyWith<$Res> {
  factory $NewDayTripStateCopyWith(
          NewDayTripState value, $Res Function(NewDayTripState) then) =
      _$NewDayTripStateCopyWithImpl<$Res, NewDayTripState>;
  @useResult
  $Res call({String? description});
}

/// @nodoc
class _$NewDayTripStateCopyWithImpl<$Res, $Val extends NewDayTripState>
    implements $NewDayTripStateCopyWith<$Res> {
  _$NewDayTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewDayTripStateNormalCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$NewDayTripStateNormalCopyWith(_$NewDayTripStateNormal value,
          $Res Function(_$NewDayTripStateNormal) then) =
      __$$NewDayTripStateNormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$NewDayTripStateNormalCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$NewDayTripStateNormal>
    implements _$$NewDayTripStateNormalCopyWith<$Res> {
  __$$NewDayTripStateNormalCopyWithImpl(_$NewDayTripStateNormal _value,
      $Res Function(_$NewDayTripStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$NewDayTripStateNormal(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewDayTripStateNormal implements NewDayTripStateNormal {
  const _$NewDayTripStateNormal({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'NewDayTripState.normal(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDayTripStateNormal &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDayTripStateNormalCopyWith<_$NewDayTripStateNormal> get copyWith =>
      __$$NewDayTripStateNormalCopyWithImpl<_$NewDayTripStateNormal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description) normal,
    required TResult Function(String? description) saving,
    required TResult Function(String? description) created,
    required TResult Function(String? description, String errorMessage) error,
  }) {
    return normal(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description)? normal,
    TResult? Function(String? description)? saving,
    TResult? Function(String? description)? created,
    TResult? Function(String? description, String errorMessage)? error,
  }) {
    return normal?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description)? normal,
    TResult Function(String? description)? saving,
    TResult Function(String? description)? created,
    TResult Function(String? description, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDayTripStateNormal value) normal,
    required TResult Function(NewDayTripStateSaving value) saving,
    required TResult Function(NewDayTripStateCreated value) created,
    required TResult Function(NewDayTripStateError value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDayTripStateNormal value)? normal,
    TResult? Function(NewDayTripStateSaving value)? saving,
    TResult? Function(NewDayTripStateCreated value)? created,
    TResult? Function(NewDayTripStateError value)? error,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDayTripStateNormal value)? normal,
    TResult Function(NewDayTripStateSaving value)? saving,
    TResult Function(NewDayTripStateCreated value)? created,
    TResult Function(NewDayTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class NewDayTripStateNormal implements NewDayTripState {
  const factory NewDayTripStateNormal({final String? description}) =
      _$NewDayTripStateNormal;

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$NewDayTripStateNormalCopyWith<_$NewDayTripStateNormal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewDayTripStateSavingCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$NewDayTripStateSavingCopyWith(_$NewDayTripStateSaving value,
          $Res Function(_$NewDayTripStateSaving) then) =
      __$$NewDayTripStateSavingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$NewDayTripStateSavingCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$NewDayTripStateSaving>
    implements _$$NewDayTripStateSavingCopyWith<$Res> {
  __$$NewDayTripStateSavingCopyWithImpl(_$NewDayTripStateSaving _value,
      $Res Function(_$NewDayTripStateSaving) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$NewDayTripStateSaving(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewDayTripStateSaving implements NewDayTripStateSaving {
  const _$NewDayTripStateSaving({required this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'NewDayTripState.saving(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDayTripStateSaving &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDayTripStateSavingCopyWith<_$NewDayTripStateSaving> get copyWith =>
      __$$NewDayTripStateSavingCopyWithImpl<_$NewDayTripStateSaving>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description) normal,
    required TResult Function(String? description) saving,
    required TResult Function(String? description) created,
    required TResult Function(String? description, String errorMessage) error,
  }) {
    return saving(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description)? normal,
    TResult? Function(String? description)? saving,
    TResult? Function(String? description)? created,
    TResult? Function(String? description, String errorMessage)? error,
  }) {
    return saving?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description)? normal,
    TResult Function(String? description)? saving,
    TResult Function(String? description)? created,
    TResult Function(String? description, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDayTripStateNormal value) normal,
    required TResult Function(NewDayTripStateSaving value) saving,
    required TResult Function(NewDayTripStateCreated value) created,
    required TResult Function(NewDayTripStateError value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDayTripStateNormal value)? normal,
    TResult? Function(NewDayTripStateSaving value)? saving,
    TResult? Function(NewDayTripStateCreated value)? created,
    TResult? Function(NewDayTripStateError value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDayTripStateNormal value)? normal,
    TResult Function(NewDayTripStateSaving value)? saving,
    TResult Function(NewDayTripStateCreated value)? created,
    TResult Function(NewDayTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class NewDayTripStateSaving implements NewDayTripState {
  const factory NewDayTripStateSaving({required final String? description}) =
      _$NewDayTripStateSaving;

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$NewDayTripStateSavingCopyWith<_$NewDayTripStateSaving> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewDayTripStateCreatedCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$NewDayTripStateCreatedCopyWith(_$NewDayTripStateCreated value,
          $Res Function(_$NewDayTripStateCreated) then) =
      __$$NewDayTripStateCreatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$NewDayTripStateCreatedCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$NewDayTripStateCreated>
    implements _$$NewDayTripStateCreatedCopyWith<$Res> {
  __$$NewDayTripStateCreatedCopyWithImpl(_$NewDayTripStateCreated _value,
      $Res Function(_$NewDayTripStateCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$NewDayTripStateCreated(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewDayTripStateCreated implements NewDayTripStateCreated {
  const _$NewDayTripStateCreated({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'NewDayTripState.created(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDayTripStateCreated &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDayTripStateCreatedCopyWith<_$NewDayTripStateCreated> get copyWith =>
      __$$NewDayTripStateCreatedCopyWithImpl<_$NewDayTripStateCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description) normal,
    required TResult Function(String? description) saving,
    required TResult Function(String? description) created,
    required TResult Function(String? description, String errorMessage) error,
  }) {
    return created(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description)? normal,
    TResult? Function(String? description)? saving,
    TResult? Function(String? description)? created,
    TResult? Function(String? description, String errorMessage)? error,
  }) {
    return created?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description)? normal,
    TResult Function(String? description)? saving,
    TResult Function(String? description)? created,
    TResult Function(String? description, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDayTripStateNormal value) normal,
    required TResult Function(NewDayTripStateSaving value) saving,
    required TResult Function(NewDayTripStateCreated value) created,
    required TResult Function(NewDayTripStateError value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDayTripStateNormal value)? normal,
    TResult? Function(NewDayTripStateSaving value)? saving,
    TResult? Function(NewDayTripStateCreated value)? created,
    TResult? Function(NewDayTripStateError value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDayTripStateNormal value)? normal,
    TResult Function(NewDayTripStateSaving value)? saving,
    TResult Function(NewDayTripStateCreated value)? created,
    TResult Function(NewDayTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class NewDayTripStateCreated implements NewDayTripState {
  const factory NewDayTripStateCreated({final String? description}) =
      _$NewDayTripStateCreated;

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$NewDayTripStateCreatedCopyWith<_$NewDayTripStateCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewDayTripStateErrorCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$NewDayTripStateErrorCopyWith(_$NewDayTripStateError value,
          $Res Function(_$NewDayTripStateError) then) =
      __$$NewDayTripStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, String errorMessage});
}

/// @nodoc
class __$$NewDayTripStateErrorCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$NewDayTripStateError>
    implements _$$NewDayTripStateErrorCopyWith<$Res> {
  __$$NewDayTripStateErrorCopyWithImpl(_$NewDayTripStateError _value,
      $Res Function(_$NewDayTripStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$NewDayTripStateError(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewDayTripStateError implements NewDayTripStateError {
  const _$NewDayTripStateError(
      {required this.description, required this.errorMessage});

  @override
  final String? description;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NewDayTripState.error(description: $description, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDayTripStateError &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDayTripStateErrorCopyWith<_$NewDayTripStateError> get copyWith =>
      __$$NewDayTripStateErrorCopyWithImpl<_$NewDayTripStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description) normal,
    required TResult Function(String? description) saving,
    required TResult Function(String? description) created,
    required TResult Function(String? description, String errorMessage) error,
  }) {
    return error(description, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description)? normal,
    TResult? Function(String? description)? saving,
    TResult? Function(String? description)? created,
    TResult? Function(String? description, String errorMessage)? error,
  }) {
    return error?.call(description, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description)? normal,
    TResult Function(String? description)? saving,
    TResult Function(String? description)? created,
    TResult Function(String? description, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(description, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewDayTripStateNormal value) normal,
    required TResult Function(NewDayTripStateSaving value) saving,
    required TResult Function(NewDayTripStateCreated value) created,
    required TResult Function(NewDayTripStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewDayTripStateNormal value)? normal,
    TResult? Function(NewDayTripStateSaving value)? saving,
    TResult? Function(NewDayTripStateCreated value)? created,
    TResult? Function(NewDayTripStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewDayTripStateNormal value)? normal,
    TResult Function(NewDayTripStateSaving value)? saving,
    TResult Function(NewDayTripStateCreated value)? created,
    TResult Function(NewDayTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewDayTripStateError implements NewDayTripState {
  const factory NewDayTripStateError(
      {required final String? description,
      required final String errorMessage}) = _$NewDayTripStateError;

  @override
  String? get description;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$NewDayTripStateErrorCopyWith<_$NewDayTripStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
