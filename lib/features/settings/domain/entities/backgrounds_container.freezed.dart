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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BackgroundsContainer _$BackgroundsContainerFromJson(Map<String, dynamic> json) {
  return _BackgroundsContainer.fromJson(json);
}

/// @nodoc
mixin _$BackgroundsContainer {
  BackgroundRemoteImage? get ligthBackground =>
      throw _privateConstructorUsedError;
  BackgroundRemoteImage? get darkBackground =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {BackgroundRemoteImage? ligthBackground,
      BackgroundRemoteImage? darkBackground});

  $BackgroundRemoteImageCopyWith<$Res>? get ligthBackground;
  $BackgroundRemoteImageCopyWith<$Res>? get darkBackground;
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
    Object? ligthBackground = freezed,
    Object? darkBackground = freezed,
  }) {
    return _then(_value.copyWith(
      ligthBackground: freezed == ligthBackground
          ? _value.ligthBackground
          : ligthBackground // ignore: cast_nullable_to_non_nullable
              as BackgroundRemoteImage?,
      darkBackground: freezed == darkBackground
          ? _value.darkBackground
          : darkBackground // ignore: cast_nullable_to_non_nullable
              as BackgroundRemoteImage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BackgroundRemoteImageCopyWith<$Res>? get ligthBackground {
    if (_value.ligthBackground == null) {
      return null;
    }

    return $BackgroundRemoteImageCopyWith<$Res>(_value.ligthBackground!,
        (value) {
      return _then(_value.copyWith(ligthBackground: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BackgroundRemoteImageCopyWith<$Res>? get darkBackground {
    if (_value.darkBackground == null) {
      return null;
    }

    return $BackgroundRemoteImageCopyWith<$Res>(_value.darkBackground!,
        (value) {
      return _then(_value.copyWith(darkBackground: value) as $Val);
    });
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
  $Res call(
      {BackgroundRemoteImage? ligthBackground,
      BackgroundRemoteImage? darkBackground});

  @override
  $BackgroundRemoteImageCopyWith<$Res>? get ligthBackground;
  @override
  $BackgroundRemoteImageCopyWith<$Res>? get darkBackground;
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
    Object? ligthBackground = freezed,
    Object? darkBackground = freezed,
  }) {
    return _then(_$BackgroundsContainerImpl(
      ligthBackground: freezed == ligthBackground
          ? _value.ligthBackground
          : ligthBackground // ignore: cast_nullable_to_non_nullable
              as BackgroundRemoteImage?,
      darkBackground: freezed == darkBackground
          ? _value.darkBackground
          : darkBackground // ignore: cast_nullable_to_non_nullable
              as BackgroundRemoteImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundsContainerImpl implements _BackgroundsContainer {
  const _$BackgroundsContainerImpl({this.ligthBackground, this.darkBackground});

  factory _$BackgroundsContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundsContainerImplFromJson(json);

  @override
  final BackgroundRemoteImage? ligthBackground;
  @override
  final BackgroundRemoteImage? darkBackground;

  @override
  String toString() {
    return 'BackgroundsContainer(ligthBackground: $ligthBackground, darkBackground: $darkBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundsContainerImpl &&
            (identical(other.ligthBackground, ligthBackground) ||
                other.ligthBackground == ligthBackground) &&
            (identical(other.darkBackground, darkBackground) ||
                other.darkBackground == darkBackground));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ligthBackground, darkBackground);

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
          {final BackgroundRemoteImage? ligthBackground,
          final BackgroundRemoteImage? darkBackground}) =
      _$BackgroundsContainerImpl;

  factory _BackgroundsContainer.fromJson(Map<String, dynamic> json) =
      _$BackgroundsContainerImpl.fromJson;

  @override
  BackgroundRemoteImage? get ligthBackground;
  @override
  BackgroundRemoteImage? get darkBackground;
  @override
  @JsonKey(ignore: true)
  _$$BackgroundsContainerImplCopyWith<_$BackgroundsContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
