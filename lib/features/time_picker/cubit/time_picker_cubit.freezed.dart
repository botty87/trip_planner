// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimePickerState {
  TimeOfDay get time => throw _privateConstructorUsedError;
  SelectedInput get selectedInput => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimePickerStateCopyWith<TimePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimePickerStateCopyWith<$Res> {
  factory $TimePickerStateCopyWith(
          TimePickerState value, $Res Function(TimePickerState) then) =
      _$TimePickerStateCopyWithImpl<$Res, TimePickerState>;
  @useResult
  $Res call({TimeOfDay time, SelectedInput selectedInput});
}

/// @nodoc
class _$TimePickerStateCopyWithImpl<$Res, $Val extends TimePickerState>
    implements $TimePickerStateCopyWith<$Res> {
  _$TimePickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? selectedInput = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      selectedInput: null == selectedInput
          ? _value.selectedInput
          : selectedInput // ignore: cast_nullable_to_non_nullable
              as SelectedInput,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimePickerStateImplCopyWith<$Res>
    implements $TimePickerStateCopyWith<$Res> {
  factory _$$TimePickerStateImplCopyWith(_$TimePickerStateImpl value,
          $Res Function(_$TimePickerStateImpl) then) =
      __$$TimePickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeOfDay time, SelectedInput selectedInput});
}

/// @nodoc
class __$$TimePickerStateImplCopyWithImpl<$Res>
    extends _$TimePickerStateCopyWithImpl<$Res, _$TimePickerStateImpl>
    implements _$$TimePickerStateImplCopyWith<$Res> {
  __$$TimePickerStateImplCopyWithImpl(
      _$TimePickerStateImpl _value, $Res Function(_$TimePickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? selectedInput = null,
  }) {
    return _then(_$TimePickerStateImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      selectedInput: null == selectedInput
          ? _value.selectedInput
          : selectedInput // ignore: cast_nullable_to_non_nullable
              as SelectedInput,
    ));
  }
}

/// @nodoc

class _$TimePickerStateImpl implements _TimePickerState {
  const _$TimePickerStateImpl(
      {required this.time, this.selectedInput = SelectedInput.HOUR});

  @override
  final TimeOfDay time;
  @override
  @JsonKey()
  final SelectedInput selectedInput;

  @override
  String toString() {
    return 'TimePickerState(time: $time, selectedInput: $selectedInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimePickerStateImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.selectedInput, selectedInput) ||
                other.selectedInput == selectedInput));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, selectedInput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimePickerStateImplCopyWith<_$TimePickerStateImpl> get copyWith =>
      __$$TimePickerStateImplCopyWithImpl<_$TimePickerStateImpl>(
          this, _$identity);
}

abstract class _TimePickerState implements TimePickerState {
  const factory _TimePickerState(
      {required final TimeOfDay time,
      final SelectedInput selectedInput}) = _$TimePickerStateImpl;

  @override
  TimeOfDay get time;
  @override
  SelectedInput get selectedInput;
  @override
  @JsonKey(ignore: true)
  _$$TimePickerStateImplCopyWith<_$TimePickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
