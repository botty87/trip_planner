// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get oldTripsImported => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  TutorialsData get tutorialsData => throw _privateConstructorUsedError;
  ViewPreferences get viewPreferences => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      bool oldTripsImported,
      Settings settings,
      TutorialsData tutorialsData,
      ViewPreferences viewPreferences});

  $SettingsCopyWith<$Res> get settings;
  $TutorialsDataCopyWith<$Res> get tutorialsData;
  $ViewPreferencesCopyWith<$Res> get viewPreferences;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? oldTripsImported = null,
    Object? settings = null,
    Object? tutorialsData = null,
    Object? viewPreferences = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      viewPreferences: null == viewPreferences
          ? _value.viewPreferences
          : viewPreferences // ignore: cast_nullable_to_non_nullable
              as ViewPreferences,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TutorialsDataCopyWith<$Res> get tutorialsData {
    return $TutorialsDataCopyWith<$Res>(_value.tutorialsData, (value) {
      return _then(_value.copyWith(tutorialsData: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ViewPreferencesCopyWith<$Res> get viewPreferences {
    return $ViewPreferencesCopyWith<$Res>(_value.viewPreferences, (value) {
      return _then(_value.copyWith(viewPreferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      bool oldTripsImported,
      Settings settings,
      TutorialsData tutorialsData,
      ViewPreferences viewPreferences});

  @override
  $SettingsCopyWith<$Res> get settings;
  @override
  $TutorialsDataCopyWith<$Res> get tutorialsData;
  @override
  $ViewPreferencesCopyWith<$Res> get viewPreferences;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? oldTripsImported = null,
    Object? settings = null,
    Object? tutorialsData = null,
    Object? viewPreferences = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      viewPreferences: null == viewPreferences
          ? _value.viewPreferences
          : viewPreferences // ignore: cast_nullable_to_non_nullable
              as ViewPreferences,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.email,
      required this.name,
      this.oldTripsImported = true,
      required this.settings,
      required this.tutorialsData,
      required this.viewPreferences});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  @JsonKey()
  final bool oldTripsImported;
  @override
  final Settings settings;
  @override
  final TutorialsData tutorialsData;
  @override
  final ViewPreferences viewPreferences;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, oldTripsImported: $oldTripsImported, settings: $settings, tutorialsData: $tutorialsData, viewPreferences: $viewPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.oldTripsImported, oldTripsImported) ||
                other.oldTripsImported == oldTripsImported) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.tutorialsData, tutorialsData) ||
                other.tutorialsData == tutorialsData) &&
            (identical(other.viewPreferences, viewPreferences) ||
                other.viewPreferences == viewPreferences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name,
      oldTripsImported, settings, tutorialsData, viewPreferences);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String email,
      required final String name,
      final bool oldTripsImported,
      required final Settings settings,
      required final TutorialsData tutorialsData,
      required final ViewPreferences viewPreferences}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
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
  ViewPreferences get viewPreferences;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
