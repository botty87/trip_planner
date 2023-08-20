// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_trip_stop_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewTripStopState {
  String? get description => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get createSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewTripStopStateCopyWith<NewTripStopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTripStopStateCopyWith<$Res> {
  factory $NewTripStopStateCopyWith(
          NewTripStopState value, $Res Function(NewTripStopState) then) =
      _$NewTripStopStateCopyWithImpl<$Res, NewTripStopState>;
  @useResult
  $Res call(
      {String? description,
      bool isSaving,
      bool createSuccess,
      String? errorMessage});
}

/// @nodoc
class _$NewTripStopStateCopyWithImpl<$Res, $Val extends NewTripStopState>
    implements $NewTripStopStateCopyWith<$Res> {
  _$NewTripStopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? isSaving = null,
    Object? createSuccess = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      createSuccess: null == createSuccess
          ? _value.createSuccess
          : createSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewTripStopStateCopyWith<$Res>
    implements $NewTripStopStateCopyWith<$Res> {
  factory _$$_NewTripStopStateCopyWith(
          _$_NewTripStopState value, $Res Function(_$_NewTripStopState) then) =
      __$$_NewTripStopStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      bool isSaving,
      bool createSuccess,
      String? errorMessage});
}

/// @nodoc
class __$$_NewTripStopStateCopyWithImpl<$Res>
    extends _$NewTripStopStateCopyWithImpl<$Res, _$_NewTripStopState>
    implements _$$_NewTripStopStateCopyWith<$Res> {
  __$$_NewTripStopStateCopyWithImpl(
      _$_NewTripStopState _value, $Res Function(_$_NewTripStopState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? isSaving = null,
    Object? createSuccess = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_NewTripStopState(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      createSuccess: null == createSuccess
          ? _value.createSuccess
          : createSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewTripStopState implements _NewTripStopState {
  const _$_NewTripStopState(
      {this.description,
      this.isSaving = false,
      this.createSuccess = false,
      this.errorMessage});

  @override
  final String? description;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final bool createSuccess;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NewTripStopState(description: $description, isSaving: $isSaving, createSuccess: $createSuccess, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewTripStopState &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.createSuccess, createSuccess) ||
                other.createSuccess == createSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, description, isSaving, createSuccess, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewTripStopStateCopyWith<_$_NewTripStopState> get copyWith =>
      __$$_NewTripStopStateCopyWithImpl<_$_NewTripStopState>(this, _$identity);
}

abstract class _NewTripStopState implements NewTripStopState {
  const factory _NewTripStopState(
      {final String? description,
      final bool isSaving,
      final bool createSuccess,
      final String? errorMessage}) = _$_NewTripStopState;

  @override
  String? get description;
  @override
  bool get isSaving;
  @override
  bool get createSuccess;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_NewTripStopStateCopyWith<_$_NewTripStopState> get copyWith =>
      throw _privateConstructorUsedError;
}
