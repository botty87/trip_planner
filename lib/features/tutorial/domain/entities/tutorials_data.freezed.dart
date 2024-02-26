// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutorials_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TutorialsData _$TutorialsDataFromJson(Map<String, dynamic> json) {
  return _TutorialsData.fromJson(json);
}

/// @nodoc
mixin _$TutorialsData {
  bool get showWelcome => throw _privateConstructorUsedError;
  bool get showPublicTrip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialsDataCopyWith<TutorialsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialsDataCopyWith<$Res> {
  factory $TutorialsDataCopyWith(
          TutorialsData value, $Res Function(TutorialsData) then) =
      _$TutorialsDataCopyWithImpl<$Res, TutorialsData>;
  @useResult
  $Res call({bool showWelcome, bool showPublicTrip});
}

/// @nodoc
class _$TutorialsDataCopyWithImpl<$Res, $Val extends TutorialsData>
    implements $TutorialsDataCopyWith<$Res> {
  _$TutorialsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showWelcome = null,
    Object? showPublicTrip = null,
  }) {
    return _then(_value.copyWith(
      showWelcome: null == showWelcome
          ? _value.showWelcome
          : showWelcome // ignore: cast_nullable_to_non_nullable
              as bool,
      showPublicTrip: null == showPublicTrip
          ? _value.showPublicTrip
          : showPublicTrip // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialsDataImplCopyWith<$Res>
    implements $TutorialsDataCopyWith<$Res> {
  factory _$$TutorialsDataImplCopyWith(
          _$TutorialsDataImpl value, $Res Function(_$TutorialsDataImpl) then) =
      __$$TutorialsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showWelcome, bool showPublicTrip});
}

/// @nodoc
class __$$TutorialsDataImplCopyWithImpl<$Res>
    extends _$TutorialsDataCopyWithImpl<$Res, _$TutorialsDataImpl>
    implements _$$TutorialsDataImplCopyWith<$Res> {
  __$$TutorialsDataImplCopyWithImpl(
      _$TutorialsDataImpl _value, $Res Function(_$TutorialsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showWelcome = null,
    Object? showPublicTrip = null,
  }) {
    return _then(_$TutorialsDataImpl(
      showWelcome: null == showWelcome
          ? _value.showWelcome
          : showWelcome // ignore: cast_nullable_to_non_nullable
              as bool,
      showPublicTrip: null == showPublicTrip
          ? _value.showPublicTrip
          : showPublicTrip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorialsDataImpl implements _TutorialsData {
  const _$TutorialsDataImpl(
      {this.showWelcome = true, this.showPublicTrip = true});

  factory _$TutorialsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorialsDataImplFromJson(json);

  @override
  @JsonKey()
  final bool showWelcome;
  @override
  @JsonKey()
  final bool showPublicTrip;

  @override
  String toString() {
    return 'TutorialsData(showWelcome: $showWelcome, showPublicTrip: $showPublicTrip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialsDataImpl &&
            (identical(other.showWelcome, showWelcome) ||
                other.showWelcome == showWelcome) &&
            (identical(other.showPublicTrip, showPublicTrip) ||
                other.showPublicTrip == showPublicTrip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, showWelcome, showPublicTrip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialsDataImplCopyWith<_$TutorialsDataImpl> get copyWith =>
      __$$TutorialsDataImplCopyWithImpl<_$TutorialsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialsDataImplToJson(
      this,
    );
  }
}

abstract class _TutorialsData implements TutorialsData {
  const factory _TutorialsData(
      {final bool showWelcome,
      final bool showPublicTrip}) = _$TutorialsDataImpl;

  factory _TutorialsData.fromJson(Map<String, dynamic> json) =
      _$TutorialsDataImpl.fromJson;

  @override
  bool get showWelcome;
  @override
  bool get showPublicTrip;
  @override
  @JsonKey(ignore: true)
  _$$TutorialsDataImplCopyWith<_$TutorialsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}