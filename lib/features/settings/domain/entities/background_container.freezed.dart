// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BackgroundContainer _$BackgroundContainerFromJson(Map<String, dynamic> json) {
  return _BackgroundContainer.fromJson(json);
}

/// @nodoc
mixin _$BackgroundContainer {
  String get url => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackgroundContainerCopyWith<BackgroundContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundContainerCopyWith<$Res> {
  factory $BackgroundContainerCopyWith(
          BackgroundContainer value, $Res Function(BackgroundContainer) then) =
      _$BackgroundContainerCopyWithImpl<$Res, BackgroundContainer>;
  @useResult
  $Res call({String url, int index});
}

/// @nodoc
class _$BackgroundContainerCopyWithImpl<$Res, $Val extends BackgroundContainer>
    implements $BackgroundContainerCopyWith<$Res> {
  _$BackgroundContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundContainerImplCopyWith<$Res>
    implements $BackgroundContainerCopyWith<$Res> {
  factory _$$BackgroundContainerImplCopyWith(_$BackgroundContainerImpl value,
          $Res Function(_$BackgroundContainerImpl) then) =
      __$$BackgroundContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int index});
}

/// @nodoc
class __$$BackgroundContainerImplCopyWithImpl<$Res>
    extends _$BackgroundContainerCopyWithImpl<$Res, _$BackgroundContainerImpl>
    implements _$$BackgroundContainerImplCopyWith<$Res> {
  __$$BackgroundContainerImplCopyWithImpl(_$BackgroundContainerImpl _value,
      $Res Function(_$BackgroundContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? index = null,
  }) {
    return _then(_$BackgroundContainerImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundContainerImpl implements _BackgroundContainer {
  _$BackgroundContainerImpl({required this.url, required this.index});

  factory _$BackgroundContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundContainerImplFromJson(json);

  @override
  final String url;
  @override
  final int index;

  @override
  String toString() {
    return 'BackgroundContainer(url: $url, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundContainerImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundContainerImplCopyWith<_$BackgroundContainerImpl> get copyWith =>
      __$$BackgroundContainerImplCopyWithImpl<_$BackgroundContainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundContainerImplToJson(
      this,
    );
  }
}

abstract class _BackgroundContainer implements BackgroundContainer {
  factory _BackgroundContainer(
      {required final String url,
      required final int index}) = _$BackgroundContainerImpl;

  factory _BackgroundContainer.fromJson(Map<String, dynamic> json) =
      _$BackgroundContainerImpl.fromJson;

  @override
  String get url;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$BackgroundContainerImplCopyWith<_$BackgroundContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
