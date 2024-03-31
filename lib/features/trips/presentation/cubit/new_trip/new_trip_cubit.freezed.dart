// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_trip_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewTripState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)
        normal,
    required TResult Function() saving,
    required TResult Function() created,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult? Function()? saving,
    TResult? Function()? created,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult Function()? saving,
    TResult Function()? created,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_Saving value)? saving,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTripStateCopyWith<$Res> {
  factory $NewTripStateCopyWith(
          NewTripState value, $Res Function(NewTripState) then) =
      _$NewTripStateCopyWithImpl<$Res, NewTripState>;
}

/// @nodoc
class _$NewTripStateCopyWithImpl<$Res, $Val extends NewTripState>
    implements $NewTripStateCopyWith<$Res> {
  _$NewTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NormalImplCopyWith<$Res> {
  factory _$$NormalImplCopyWith(
          _$NormalImpl value, $Res Function(_$NormalImpl) then) =
      __$$NormalImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? tripName,
      String? tripDescription,
      DateTime? startDate,
      bool isStartDateBeforeToday,
      bool isPublic,
      String languageCode});
}

/// @nodoc
class __$$NormalImplCopyWithImpl<$Res>
    extends _$NewTripStateCopyWithImpl<$Res, _$NormalImpl>
    implements _$$NormalImplCopyWith<$Res> {
  __$$NormalImplCopyWithImpl(
      _$NormalImpl _value, $Res Function(_$NormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripName = freezed,
    Object? tripDescription = freezed,
    Object? startDate = freezed,
    Object? isStartDateBeforeToday = null,
    Object? isPublic = null,
    Object? languageCode = null,
  }) {
    return _then(_$NormalImpl(
      tripName: freezed == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String?,
      tripDescription: freezed == tripDescription
          ? _value.tripDescription
          : tripDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isStartDateBeforeToday: null == isStartDateBeforeToday
          ? _value.isStartDateBeforeToday
          : isStartDateBeforeToday // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NormalImpl implements _Normal {
  const _$NormalImpl(
      {this.tripName,
      this.tripDescription,
      this.startDate,
      this.isStartDateBeforeToday = false,
      this.isPublic = false,
      required this.languageCode});

  @override
  final String? tripName;
  @override
  final String? tripDescription;
  @override
  final DateTime? startDate;
  @override
  @JsonKey()
  final bool isStartDateBeforeToday;
  @override
  @JsonKey()
  final bool isPublic;
  @override
  final String languageCode;

  @override
  String toString() {
    return 'NewTripState.normal(tripName: $tripName, tripDescription: $tripDescription, startDate: $startDate, isStartDateBeforeToday: $isStartDateBeforeToday, isPublic: $isPublic, languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NormalImpl &&
            (identical(other.tripName, tripName) ||
                other.tripName == tripName) &&
            (identical(other.tripDescription, tripDescription) ||
                other.tripDescription == tripDescription) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.isStartDateBeforeToday, isStartDateBeforeToday) ||
                other.isStartDateBeforeToday == isStartDateBeforeToday) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripName, tripDescription,
      startDate, isStartDateBeforeToday, isPublic, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      __$$NormalImplCopyWithImpl<_$NormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)
        normal,
    required TResult Function() saving,
    required TResult Function() created,
    required TResult Function(String errorMessage) error,
  }) {
    return normal(tripName, tripDescription, startDate, isStartDateBeforeToday,
        isPublic, languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult? Function()? saving,
    TResult? Function()? created,
    TResult? Function(String errorMessage)? error,
  }) {
    return normal?.call(tripName, tripDescription, startDate,
        isStartDateBeforeToday, isPublic, languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult Function()? saving,
    TResult Function()? created,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(tripName, tripDescription, startDate,
          isStartDateBeforeToday, isPublic, languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_Saving value)? saving,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _Normal implements NewTripState {
  const factory _Normal(
      {final String? tripName,
      final String? tripDescription,
      final DateTime? startDate,
      final bool isStartDateBeforeToday,
      final bool isPublic,
      required final String languageCode}) = _$NormalImpl;

  String? get tripName;
  String? get tripDescription;
  DateTime? get startDate;
  bool get isStartDateBeforeToday;
  bool get isPublic;
  String get languageCode;
  @JsonKey(ignore: true)
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res> {
  factory _$$SavingImplCopyWith(
          _$SavingImpl value, $Res Function(_$SavingImpl) then) =
      __$$SavingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res>
    extends _$NewTripStateCopyWithImpl<$Res, _$SavingImpl>
    implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(
      _$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavingImpl implements _Saving {
  const _$SavingImpl();

  @override
  String toString() {
    return 'NewTripState.saving()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)
        normal,
    required TResult Function() saving,
    required TResult Function() created,
    required TResult Function(String errorMessage) error,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult? Function()? saving,
    TResult? Function()? created,
    TResult? Function(String errorMessage)? error,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult Function()? saving,
    TResult Function()? created,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_Saving value)? saving,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements NewTripState {
  const factory _Saving() = _$SavingImpl;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
          _$CreatedImpl value, $Res Function(_$CreatedImpl) then) =
      __$$CreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$NewTripStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatedImpl implements _Created {
  const _$CreatedImpl();

  @override
  String toString() {
    return 'NewTripState.created()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)
        normal,
    required TResult Function() saving,
    required TResult Function() created,
    required TResult Function(String errorMessage) error,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult? Function()? saving,
    TResult? Function()? created,
    TResult? Function(String errorMessage)? error,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult Function()? saving,
    TResult Function()? created,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_Saving value)? saving,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements NewTripState {
  const factory _Created() = _$CreatedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NewTripStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NewTripState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)
        normal,
    required TResult Function() saving,
    required TResult Function() created,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult? Function()? saving,
    TResult? Function()? created,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? tripName,
            String? tripDescription,
            DateTime? startDate,
            bool isStartDateBeforeToday,
            bool isPublic,
            String languageCode)?
        normal,
    TResult Function()? saving,
    TResult Function()? created,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_Saving value)? saving,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NewTripState {
  const factory _Error({required final String errorMessage}) = _$ErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
