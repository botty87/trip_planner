// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backgrounds_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BackgroundsContainer _$BackgroundsContainerFromJson(Map<String, dynamic> json) {
  return _BackgroundsContainer.fromJson(json);
}

/// @nodoc
mixin _$BackgroundsContainer {
  int? get lightBackgroundIndex => throw _privateConstructorUsedError;
  int? get darkBackgroundIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackgroundsContainerCopyWith<BackgroundsContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundsContainerCopyWith<$Res> {
  factory $BackgroundsContainerCopyWith(BackgroundsContainer value,
          $Res Function(BackgroundsContainer) then) =
      _$BackgroundsContainerCopyWithImpl<$Res, BackgroundsContainer>;
  @useResult
  $Res call({int? lightBackgroundIndex, int? darkBackgroundIndex});
}

/// @nodoc
class _$BackgroundsContainerCopyWithImpl<$Res,
        $Val extends BackgroundsContainer>
    implements $BackgroundsContainerCopyWith<$Res> {
  _$BackgroundsContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightBackgroundIndex = freezed,
    Object? darkBackgroundIndex = freezed,
  }) {
    return _then(_value.copyWith(
      lightBackgroundIndex: freezed == lightBackgroundIndex
          ? _value.lightBackgroundIndex
          : lightBackgroundIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      darkBackgroundIndex: freezed == darkBackgroundIndex
          ? _value.darkBackgroundIndex
          : darkBackgroundIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundsContainerImplCopyWith<$Res>
    implements $BackgroundsContainerCopyWith<$Res> {
  factory _$$BackgroundsContainerImplCopyWith(_$BackgroundsContainerImpl value,
          $Res Function(_$BackgroundsContainerImpl) then) =
      __$$BackgroundsContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? lightBackgroundIndex, int? darkBackgroundIndex});
}

/// @nodoc
class __$$BackgroundsContainerImplCopyWithImpl<$Res>
    extends _$BackgroundsContainerCopyWithImpl<$Res, _$BackgroundsContainerImpl>
    implements _$$BackgroundsContainerImplCopyWith<$Res> {
  __$$BackgroundsContainerImplCopyWithImpl(_$BackgroundsContainerImpl _value,
      $Res Function(_$BackgroundsContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightBackgroundIndex = freezed,
    Object? darkBackgroundIndex = freezed,
  }) {
    return _then(_$BackgroundsContainerImpl(
      lightBackgroundIndex: freezed == lightBackgroundIndex
          ? _value.lightBackgroundIndex
          : lightBackgroundIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      darkBackgroundIndex: freezed == darkBackgroundIndex
          ? _value.darkBackgroundIndex
          : darkBackgroundIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundsContainerImpl implements _BackgroundsContainer {
  const _$BackgroundsContainerImpl(
      {this.lightBackgroundIndex, this.darkBackgroundIndex});

  factory _$BackgroundsContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundsContainerImplFromJson(json);

  @override
  final int? lightBackgroundIndex;
  @override
  final int? darkBackgroundIndex;

  @override
  String toString() {
    return 'BackgroundsContainer(lightBackgroundIndex: $lightBackgroundIndex, darkBackgroundIndex: $darkBackgroundIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundsContainerImpl &&
            (identical(other.lightBackgroundIndex, lightBackgroundIndex) ||
                other.lightBackgroundIndex == lightBackgroundIndex) &&
            (identical(other.darkBackgroundIndex, darkBackgroundIndex) ||
                other.darkBackgroundIndex == darkBackgroundIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lightBackgroundIndex, darkBackgroundIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundsContainerImplCopyWith<_$BackgroundsContainerImpl>
      get copyWith =>
          __$$BackgroundsContainerImplCopyWithImpl<_$BackgroundsContainerImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundsContainerImplToJson(
      this,
    );
  }
}

abstract class _BackgroundsContainer implements BackgroundsContainer {
  const factory _BackgroundsContainer(
      {final int? lightBackgroundIndex,
      final int? darkBackgroundIndex}) = _$BackgroundsContainerImpl;

  factory _BackgroundsContainer.fromJson(Map<String, dynamic> json) =
      _$BackgroundsContainerImpl.fromJson;

  @override
  int? get lightBackgroundIndex;
  @override
  int? get darkBackgroundIndex;
  @override
  @JsonKey(ignore: true)
  _$$BackgroundsContainerImplCopyWith<_$BackgroundsContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
