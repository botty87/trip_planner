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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$NewDayTripStateNormalImplCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$NewDayTripStateNormalImplCopyWith(
          _$NewDayTripStateNormalImpl value,
          $Res Function(_$NewDayTripStateNormalImpl) then) =
      __$$NewDayTripStateNormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$NewDayTripStateNormalImplCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$NewDayTripStateNormalImpl>
    implements _$$NewDayTripStateNormalImplCopyWith<$Res> {
  __$$NewDayTripStateNormalImplCopyWithImpl(_$NewDayTripStateNormalImpl _value,
      $Res Function(_$NewDayTripStateNormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$NewDayTripStateNormalImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewDayTripStateNormalImpl implements NewDayTripStateNormal {
  const _$NewDayTripStateNormalImpl({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'NewDayTripState.normal(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDayTripStateNormalImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDayTripStateNormalImplCopyWith<_$NewDayTripStateNormalImpl>
      get copyWith => __$$NewDayTripStateNormalImplCopyWithImpl<
          _$NewDayTripStateNormalImpl>(this, _$identity);

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
      _$NewDayTripStateNormalImpl;

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$NewDayTripStateNormalImplCopyWith<_$NewDayTripStateNormalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewDayTripStateSavingImplCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$NewDayTripStateSavingImplCopyWith(
          _$NewDayTripStateSavingImpl value,
          $Res Function(_$NewDayTripStateSavingImpl) then) =
      __$$NewDayTripStateSavingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$NewDayTripStateSavingImplCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$NewDayTripStateSavingImpl>
    implements _$$NewDayTripStateSavingImplCopyWith<$Res> {
  __$$NewDayTripStateSavingImplCopyWithImpl(_$NewDayTripStateSavingImpl _value,
      $Res Function(_$NewDayTripStateSavingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$NewDayTripStateSavingImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewDayTripStateSavingImpl implements NewDayTripStateSaving {
  const _$NewDayTripStateSavingImpl({required this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'NewDayTripState.saving(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDayTripStateSavingImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDayTripStateSavingImplCopyWith<_$NewDayTripStateSavingImpl>
      get copyWith => __$$NewDayTripStateSavingImplCopyWithImpl<
          _$NewDayTripStateSavingImpl>(this, _$identity);

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
      _$NewDayTripStateSavingImpl;

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$NewDayTripStateSavingImplCopyWith<_$NewDayTripStateSavingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewDayTripStateCreatedImplCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$NewDayTripStateCreatedImplCopyWith(
          _$NewDayTripStateCreatedImpl value,
          $Res Function(_$NewDayTripStateCreatedImpl) then) =
      __$$NewDayTripStateCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$NewDayTripStateCreatedImplCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$NewDayTripStateCreatedImpl>
    implements _$$NewDayTripStateCreatedImplCopyWith<$Res> {
  __$$NewDayTripStateCreatedImplCopyWithImpl(
      _$NewDayTripStateCreatedImpl _value,
      $Res Function(_$NewDayTripStateCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$NewDayTripStateCreatedImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewDayTripStateCreatedImpl implements NewDayTripStateCreated {
  const _$NewDayTripStateCreatedImpl({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'NewDayTripState.created(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDayTripStateCreatedImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDayTripStateCreatedImplCopyWith<_$NewDayTripStateCreatedImpl>
      get copyWith => __$$NewDayTripStateCreatedImplCopyWithImpl<
          _$NewDayTripStateCreatedImpl>(this, _$identity);

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
      _$NewDayTripStateCreatedImpl;

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$NewDayTripStateCreatedImplCopyWith<_$NewDayTripStateCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewDayTripStateErrorImplCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$NewDayTripStateErrorImplCopyWith(_$NewDayTripStateErrorImpl value,
          $Res Function(_$NewDayTripStateErrorImpl) then) =
      __$$NewDayTripStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, String errorMessage});
}

/// @nodoc
class __$$NewDayTripStateErrorImplCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$NewDayTripStateErrorImpl>
    implements _$$NewDayTripStateErrorImplCopyWith<$Res> {
  __$$NewDayTripStateErrorImplCopyWithImpl(_$NewDayTripStateErrorImpl _value,
      $Res Function(_$NewDayTripStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$NewDayTripStateErrorImpl(
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

class _$NewDayTripStateErrorImpl implements NewDayTripStateError {
  const _$NewDayTripStateErrorImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDayTripStateErrorImpl &&
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
  _$$NewDayTripStateErrorImplCopyWith<_$NewDayTripStateErrorImpl>
      get copyWith =>
          __$$NewDayTripStateErrorImplCopyWithImpl<_$NewDayTripStateErrorImpl>(
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
      required final String errorMessage}) = _$NewDayTripStateErrorImpl;

  @override
  String? get description;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$NewDayTripStateErrorImplCopyWith<_$NewDayTripStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
