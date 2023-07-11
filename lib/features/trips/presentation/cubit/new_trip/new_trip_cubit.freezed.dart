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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewTripState {
  String? get tripName => throw _privateConstructorUsedError;
  String? get tripDescription => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get createSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewTripStateCopyWith<NewTripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTripStateCopyWith<$Res> {
  factory $NewTripStateCopyWith(
          NewTripState value, $Res Function(NewTripState) then) =
      _$NewTripStateCopyWithImpl<$Res, NewTripState>;
  @useResult
  $Res call(
      {String? tripName,
      String? tripDescription,
      DateTime? startDate,
      String? errorMessage,
      bool isLoading,
      bool createSuccess});
}

/// @nodoc
class _$NewTripStateCopyWithImpl<$Res, $Val extends NewTripState>
    implements $NewTripStateCopyWith<$Res> {
  _$NewTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripName = freezed,
    Object? tripDescription = freezed,
    Object? startDate = freezed,
    Object? errorMessage = freezed,
    Object? isLoading = null,
    Object? createSuccess = null,
  }) {
    return _then(_value.copyWith(
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createSuccess: null == createSuccess
          ? _value.createSuccess
          : createSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewTripStateCopyWith<$Res>
    implements $NewTripStateCopyWith<$Res> {
  factory _$$_NewTripStateCopyWith(
          _$_NewTripState value, $Res Function(_$_NewTripState) then) =
      __$$_NewTripStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? tripName,
      String? tripDescription,
      DateTime? startDate,
      String? errorMessage,
      bool isLoading,
      bool createSuccess});
}

/// @nodoc
class __$$_NewTripStateCopyWithImpl<$Res>
    extends _$NewTripStateCopyWithImpl<$Res, _$_NewTripState>
    implements _$$_NewTripStateCopyWith<$Res> {
  __$$_NewTripStateCopyWithImpl(
      _$_NewTripState _value, $Res Function(_$_NewTripState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripName = freezed,
    Object? tripDescription = freezed,
    Object? startDate = freezed,
    Object? errorMessage = freezed,
    Object? isLoading = null,
    Object? createSuccess = null,
  }) {
    return _then(_$_NewTripState(
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createSuccess: null == createSuccess
          ? _value.createSuccess
          : createSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewTripState implements _NewTripState {
  const _$_NewTripState(
      {this.tripName,
      this.tripDescription,
      this.startDate,
      this.errorMessage,
      this.isLoading = false,
      this.createSuccess = false});

  @override
  final String? tripName;
  @override
  final String? tripDescription;
  @override
  final DateTime? startDate;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool createSuccess;

  @override
  String toString() {
    return 'NewTripState(tripName: $tripName, tripDescription: $tripDescription, startDate: $startDate, errorMessage: $errorMessage, isLoading: $isLoading, createSuccess: $createSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewTripState &&
            (identical(other.tripName, tripName) ||
                other.tripName == tripName) &&
            (identical(other.tripDescription, tripDescription) ||
                other.tripDescription == tripDescription) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.createSuccess, createSuccess) ||
                other.createSuccess == createSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripName, tripDescription,
      startDate, errorMessage, isLoading, createSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewTripStateCopyWith<_$_NewTripState> get copyWith =>
      __$$_NewTripStateCopyWithImpl<_$_NewTripState>(this, _$identity);
}

abstract class _NewTripState implements NewTripState {
  const factory _NewTripState(
      {final String? tripName,
      final String? tripDescription,
      final DateTime? startDate,
      final String? errorMessage,
      final bool isLoading,
      final bool createSuccess}) = _$_NewTripState;

  @override
  String? get tripName;
  @override
  String? get tripDescription;
  @override
  DateTime? get startDate;
  @override
  String? get errorMessage;
  @override
  bool get isLoading;
  @override
  bool get createSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_NewTripStateCopyWith<_$_NewTripState> get copyWith =>
      throw _privateConstructorUsedError;
}
