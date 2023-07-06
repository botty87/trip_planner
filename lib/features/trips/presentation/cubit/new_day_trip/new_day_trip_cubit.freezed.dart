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
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

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
  $Res call(
      {String? name, String? description, bool isSaving, String? errorMessage});
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
    Object? name = freezed,
    Object? description = freezed,
    Object? isSaving = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewDayTripStateCopyWith<$Res>
    implements $NewDayTripStateCopyWith<$Res> {
  factory _$$_NewDayTripStateCopyWith(
          _$_NewDayTripState value, $Res Function(_$_NewDayTripState) then) =
      __$$_NewDayTripStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? description, bool isSaving, String? errorMessage});
}

/// @nodoc
class __$$_NewDayTripStateCopyWithImpl<$Res>
    extends _$NewDayTripStateCopyWithImpl<$Res, _$_NewDayTripState>
    implements _$$_NewDayTripStateCopyWith<$Res> {
  __$$_NewDayTripStateCopyWithImpl(
      _$_NewDayTripState _value, $Res Function(_$_NewDayTripState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isSaving = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_NewDayTripState(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_NewDayTripState implements _NewDayTripState {
  const _$_NewDayTripState(
      {this.name, this.description, this.isSaving = false, this.errorMessage});

  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NewDayTripState(name: $name, description: $description, isSaving: $isSaving, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewDayTripState &&
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
      Object.hash(runtimeType, name, description, isSaving, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewDayTripStateCopyWith<_$_NewDayTripState> get copyWith =>
      __$$_NewDayTripStateCopyWithImpl<_$_NewDayTripState>(this, _$identity);
}

abstract class _NewDayTripState implements NewDayTripState {
  const factory _NewDayTripState(
      {final String? name,
      final String? description,
      final bool isSaving,
      final String? errorMessage}) = _$_NewDayTripState;

  @override
  String? get name;
  @override
  String? get description;
  @override
  bool get isSaving;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_NewDayTripStateCopyWith<_$_NewDayTripState> get copyWith =>
      throw _privateConstructorUsedError;
}
