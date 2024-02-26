// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutorials_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TutorialsState _$TutorialsStateFromJson(Map<String, dynamic> json) {
  return _TutorialsState.fromJson(json);
}

/// @nodoc
mixin _$TutorialsState {
  bool get showWelcome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialsStateCopyWith<TutorialsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialsStateCopyWith<$Res> {
  factory $TutorialsStateCopyWith(
          TutorialsState value, $Res Function(TutorialsState) then) =
      _$TutorialsStateCopyWithImpl<$Res, TutorialsState>;
  @useResult
  $Res call({bool showWelcome});
}

/// @nodoc
class _$TutorialsStateCopyWithImpl<$Res, $Val extends TutorialsState>
    implements $TutorialsStateCopyWith<$Res> {
  _$TutorialsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showWelcome = null,
  }) {
    return _then(_value.copyWith(
      showWelcome: null == showWelcome
          ? _value.showWelcome
          : showWelcome // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialsStateImplCopyWith<$Res>
    implements $TutorialsStateCopyWith<$Res> {
  factory _$$TutorialsStateImplCopyWith(_$TutorialsStateImpl value,
          $Res Function(_$TutorialsStateImpl) then) =
      __$$TutorialsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showWelcome});
}

/// @nodoc
class __$$TutorialsStateImplCopyWithImpl<$Res>
    extends _$TutorialsStateCopyWithImpl<$Res, _$TutorialsStateImpl>
    implements _$$TutorialsStateImplCopyWith<$Res> {
  __$$TutorialsStateImplCopyWithImpl(
      _$TutorialsStateImpl _value, $Res Function(_$TutorialsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showWelcome = null,
  }) {
    return _then(_$TutorialsStateImpl(
      showWelcome: null == showWelcome
          ? _value.showWelcome
          : showWelcome // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorialsStateImpl implements _TutorialsState {
  const _$TutorialsStateImpl({this.showWelcome = true});

  factory _$TutorialsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorialsStateImplFromJson(json);

  @override
  @JsonKey()
  final bool showWelcome;

  @override
  String toString() {
    return 'TutorialsState(showWelcome: $showWelcome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialsStateImpl &&
            (identical(other.showWelcome, showWelcome) ||
                other.showWelcome == showWelcome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, showWelcome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialsStateImplCopyWith<_$TutorialsStateImpl> get copyWith =>
      __$$TutorialsStateImplCopyWithImpl<_$TutorialsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialsStateImplToJson(
      this,
    );
  }
}

abstract class _TutorialsState implements TutorialsState {
  const factory _TutorialsState({final bool showWelcome}) =
      _$TutorialsStateImpl;

  factory _TutorialsState.fromJson(Map<String, dynamic> json) =
      _$TutorialsStateImpl.fromJson;

  @override
  bool get showWelcome;
  @override
  @JsonKey(ignore: true)
  _$$TutorialsStateImplCopyWith<_$TutorialsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
