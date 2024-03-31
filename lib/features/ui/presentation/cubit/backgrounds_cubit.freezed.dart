// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backgrounds_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BackgroundsState {
  Map<int, File> get lightBackgrounds => throw _privateConstructorUsedError;
  Map<int, File> get darkBackgrounds => throw _privateConstructorUsedError;
  File? get currentBackgroundImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BackgroundsStateCopyWith<BackgroundsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundsStateCopyWith<$Res> {
  factory $BackgroundsStateCopyWith(
          BackgroundsState value, $Res Function(BackgroundsState) then) =
      _$BackgroundsStateCopyWithImpl<$Res, BackgroundsState>;
  @useResult
  $Res call(
      {Map<int, File> lightBackgrounds,
      Map<int, File> darkBackgrounds,
      File? currentBackgroundImage});
}

/// @nodoc
class _$BackgroundsStateCopyWithImpl<$Res, $Val extends BackgroundsState>
    implements $BackgroundsStateCopyWith<$Res> {
  _$BackgroundsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightBackgrounds = null,
    Object? darkBackgrounds = null,
    Object? currentBackgroundImage = freezed,
  }) {
    return _then(_value.copyWith(
      lightBackgrounds: null == lightBackgrounds
          ? _value.lightBackgrounds
          : lightBackgrounds // ignore: cast_nullable_to_non_nullable
              as Map<int, File>,
      darkBackgrounds: null == darkBackgrounds
          ? _value.darkBackgrounds
          : darkBackgrounds // ignore: cast_nullable_to_non_nullable
              as Map<int, File>,
      currentBackgroundImage: freezed == currentBackgroundImage
          ? _value.currentBackgroundImage
          : currentBackgroundImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundsStateImplCopyWith<$Res>
    implements $BackgroundsStateCopyWith<$Res> {
  factory _$$BackgroundsStateImplCopyWith(_$BackgroundsStateImpl value,
          $Res Function(_$BackgroundsStateImpl) then) =
      __$$BackgroundsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, File> lightBackgrounds,
      Map<int, File> darkBackgrounds,
      File? currentBackgroundImage});
}

/// @nodoc
class __$$BackgroundsStateImplCopyWithImpl<$Res>
    extends _$BackgroundsStateCopyWithImpl<$Res, _$BackgroundsStateImpl>
    implements _$$BackgroundsStateImplCopyWith<$Res> {
  __$$BackgroundsStateImplCopyWithImpl(_$BackgroundsStateImpl _value,
      $Res Function(_$BackgroundsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightBackgrounds = null,
    Object? darkBackgrounds = null,
    Object? currentBackgroundImage = freezed,
  }) {
    return _then(_$BackgroundsStateImpl(
      lightBackgrounds: null == lightBackgrounds
          ? _value._lightBackgrounds
          : lightBackgrounds // ignore: cast_nullable_to_non_nullable
              as Map<int, File>,
      darkBackgrounds: null == darkBackgrounds
          ? _value._darkBackgrounds
          : darkBackgrounds // ignore: cast_nullable_to_non_nullable
              as Map<int, File>,
      currentBackgroundImage: freezed == currentBackgroundImage
          ? _value.currentBackgroundImage
          : currentBackgroundImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$BackgroundsStateImpl implements _BackgroundsState {
  const _$BackgroundsStateImpl(
      {final Map<int, File> lightBackgrounds = const {},
      final Map<int, File> darkBackgrounds = const {},
      this.currentBackgroundImage})
      : _lightBackgrounds = lightBackgrounds,
        _darkBackgrounds = darkBackgrounds;

  final Map<int, File> _lightBackgrounds;
  @override
  @JsonKey()
  Map<int, File> get lightBackgrounds {
    if (_lightBackgrounds is EqualUnmodifiableMapView) return _lightBackgrounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lightBackgrounds);
  }

  final Map<int, File> _darkBackgrounds;
  @override
  @JsonKey()
  Map<int, File> get darkBackgrounds {
    if (_darkBackgrounds is EqualUnmodifiableMapView) return _darkBackgrounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_darkBackgrounds);
  }

  @override
  final File? currentBackgroundImage;

  @override
  String toString() {
    return 'BackgroundsState(lightBackgrounds: $lightBackgrounds, darkBackgrounds: $darkBackgrounds, currentBackgroundImage: $currentBackgroundImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._lightBackgrounds, _lightBackgrounds) &&
            const DeepCollectionEquality()
                .equals(other._darkBackgrounds, _darkBackgrounds) &&
            (identical(other.currentBackgroundImage, currentBackgroundImage) ||
                other.currentBackgroundImage == currentBackgroundImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lightBackgrounds),
      const DeepCollectionEquality().hash(_darkBackgrounds),
      currentBackgroundImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundsStateImplCopyWith<_$BackgroundsStateImpl> get copyWith =>
      __$$BackgroundsStateImplCopyWithImpl<_$BackgroundsStateImpl>(
          this, _$identity);
}

abstract class _BackgroundsState implements BackgroundsState {
  const factory _BackgroundsState(
      {final Map<int, File> lightBackgrounds,
      final Map<int, File> darkBackgrounds,
      final File? currentBackgroundImage}) = _$BackgroundsStateImpl;

  @override
  Map<int, File> get lightBackgrounds;
  @override
  Map<int, File> get darkBackgrounds;
  @override
  File? get currentBackgroundImage;
  @override
  @JsonKey(ignore: true)
  _$$BackgroundsStateImplCopyWith<_$BackgroundsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
