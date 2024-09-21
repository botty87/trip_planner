// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get oldTripsImported => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  TutorialsData get tutorialsData => throw _privateConstructorUsedError;
  ViewMode get largeScreenViewMode => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String email,
      String name,
      bool oldTripsImported,
      Settings settings,
      TutorialsData tutorialsData,
      ViewMode largeScreenViewMode});

  $SettingsCopyWith<$Res> get settings;
  $TutorialsDataCopyWith<$Res> get tutorialsData;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? name = null,
    Object? oldTripsImported = null,
    Object? settings = null,
    Object? tutorialsData = null,
    Object? largeScreenViewMode = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      oldTripsImported: null == oldTripsImported
          ? _value.oldTripsImported
          : oldTripsImported // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      tutorialsData: null == tutorialsData
          ? _value.tutorialsData
          : tutorialsData // ignore: cast_nullable_to_non_nullable
              as TutorialsData,
      largeScreenViewMode: null == largeScreenViewMode
          ? _value.largeScreenViewMode
          : largeScreenViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TutorialsDataCopyWith<$Res> get tutorialsData {
    return $TutorialsDataCopyWith<$Res>(_value.tutorialsData, (value) {
      return _then(_value.copyWith(tutorialsData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String email,
      String name,
      bool oldTripsImported,
      Settings settings,
      TutorialsData tutorialsData,
      ViewMode largeScreenViewMode});

  @override
  $SettingsCopyWith<$Res> get settings;
  @override
  $TutorialsDataCopyWith<$Res> get tutorialsData;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? name = null,
    Object? oldTripsImported = null,
    Object? settings = null,
    Object? tutorialsData = null,
    Object? largeScreenViewMode = null,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      oldTripsImported: null == oldTripsImported
          ? _value.oldTripsImported
          : oldTripsImported // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      tutorialsData: null == tutorialsData
          ? _value.tutorialsData
          : tutorialsData // ignore: cast_nullable_to_non_nullable
              as TutorialsData,
      largeScreenViewMode: null == largeScreenViewMode
          ? _value.largeScreenViewMode
          : largeScreenViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.email,
      required this.name,
      this.oldTripsImported = false,
      this.settings = const Settings(),
      this.tutorialsData = const TutorialsData(),
      this.largeScreenViewMode = ViewMode.grid})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  @override
  final String email;
  @override
  final String name;
  @override
  @JsonKey()
  final bool oldTripsImported;
  @override
  @JsonKey()
  final Settings settings;
  @override
  @JsonKey()
  final TutorialsData tutorialsData;
  @override
  @JsonKey()
  final ViewMode largeScreenViewMode;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, name: $name, oldTripsImported: $oldTripsImported, settings: $settings, tutorialsData: $tutorialsData, largeScreenViewMode: $largeScreenViewMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.oldTripsImported, oldTripsImported) ||
                other.oldTripsImported == oldTripsImported) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.tutorialsData, tutorialsData) ||
                other.tutorialsData == tutorialsData) &&
            (identical(other.largeScreenViewMode, largeScreenViewMode) ||
                other.largeScreenViewMode == largeScreenViewMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name,
      oldTripsImported, settings, tutorialsData, largeScreenViewMode);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final String email,
      required final String name,
      final bool oldTripsImported,
      final Settings settings,
      final TutorialsData tutorialsData,
      final ViewMode largeScreenViewMode}) = _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  String get email;
  @override
  String get name;
  @override
  bool get oldTripsImported;
  @override
  Settings get settings;
  @override
  TutorialsData get tutorialsData;
  @override
  ViewMode get largeScreenViewMode;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
