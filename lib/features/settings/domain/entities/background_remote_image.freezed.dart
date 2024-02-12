// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_remote_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BackgroundRemoteImage _$BackgroundRemoteImageFromJson(
    Map<String, dynamic> json) {
  return _BackgroundRemoteImage.fromJson(json);
}

/// @nodoc
mixin _$BackgroundRemoteImage {
  String get url => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackgroundRemoteImageCopyWith<BackgroundRemoteImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundRemoteImageCopyWith<$Res> {
  factory $BackgroundRemoteImageCopyWith(BackgroundRemoteImage value,
          $Res Function(BackgroundRemoteImage) then) =
      _$BackgroundRemoteImageCopyWithImpl<$Res, BackgroundRemoteImage>;
  @useResult
  $Res call({String url, int index});
}

/// @nodoc
class _$BackgroundRemoteImageCopyWithImpl<$Res,
        $Val extends BackgroundRemoteImage>
    implements $BackgroundRemoteImageCopyWith<$Res> {
  _$BackgroundRemoteImageCopyWithImpl(this._value, this._then);

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
abstract class _$$BackgroundRemoteImageImplCopyWith<$Res>
    implements $BackgroundRemoteImageCopyWith<$Res> {
  factory _$$BackgroundRemoteImageImplCopyWith(
          _$BackgroundRemoteImageImpl value,
          $Res Function(_$BackgroundRemoteImageImpl) then) =
      __$$BackgroundRemoteImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int index});
}

/// @nodoc
class __$$BackgroundRemoteImageImplCopyWithImpl<$Res>
    extends _$BackgroundRemoteImageCopyWithImpl<$Res,
        _$BackgroundRemoteImageImpl>
    implements _$$BackgroundRemoteImageImplCopyWith<$Res> {
  __$$BackgroundRemoteImageImplCopyWithImpl(_$BackgroundRemoteImageImpl _value,
      $Res Function(_$BackgroundRemoteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? index = null,
  }) {
    return _then(_$BackgroundRemoteImageImpl(
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
class _$BackgroundRemoteImageImpl implements _BackgroundRemoteImage {
  const _$BackgroundRemoteImageImpl({required this.url, required this.index});

  factory _$BackgroundRemoteImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundRemoteImageImplFromJson(json);

  @override
  final String url;
  @override
  final int index;

  @override
  String toString() {
    return 'BackgroundRemoteImage(url: $url, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundRemoteImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundRemoteImageImplCopyWith<_$BackgroundRemoteImageImpl>
      get copyWith => __$$BackgroundRemoteImageImplCopyWithImpl<
          _$BackgroundRemoteImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundRemoteImageImplToJson(
      this,
    );
  }
}

abstract class _BackgroundRemoteImage implements BackgroundRemoteImage {
  const factory _BackgroundRemoteImage(
      {required final String url,
      required final int index}) = _$BackgroundRemoteImageImpl;

  factory _BackgroundRemoteImage.fromJson(Map<String, dynamic> json) =
      _$BackgroundRemoteImageImpl.fromJson;

  @override
  String get url;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$BackgroundRemoteImageImplCopyWith<_$BackgroundRemoteImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
