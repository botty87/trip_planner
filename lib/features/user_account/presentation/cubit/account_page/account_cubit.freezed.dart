// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountState {
  User get user => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String? errorMessage) normal,
    required TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)
        editing,
    required TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)
        reauthenticating,
    required TResult Function(User user, String? errorMessage) deleting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String? errorMessage)? normal,
    TResult? Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult? Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult? Function(User user, String? errorMessage)? deleting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String? errorMessage)? normal,
    TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult Function(User user, String? errorMessage)? deleting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateNormal value) normal,
    required TResult Function(AccountStateEditing value) editing,
    required TResult Function(AccountStateReauthenticating value)
        reauthenticating,
    required TResult Function(AccountStateDeleting value) deleting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
    TResult? Function(AccountStateDeleting value)? deleting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
    TResult Function(AccountStateDeleting value)? deleting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({User user, String? errorMessage});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountStateNormalImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateNormalImplCopyWith(_$AccountStateNormalImpl value,
          $Res Function(_$AccountStateNormalImpl) then) =
      __$$AccountStateNormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String? errorMessage});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AccountStateNormalImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateNormalImpl>
    implements _$$AccountStateNormalImplCopyWith<$Res> {
  __$$AccountStateNormalImplCopyWithImpl(_$AccountStateNormalImpl _value,
      $Res Function(_$AccountStateNormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AccountStateNormalImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountStateNormalImpl implements AccountStateNormal {
  const _$AccountStateNormalImpl({required this.user, this.errorMessage});

  @override
  final User user;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AccountState.normal(user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateNormalImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateNormalImplCopyWith<_$AccountStateNormalImpl> get copyWith =>
      __$$AccountStateNormalImplCopyWithImpl<_$AccountStateNormalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String? errorMessage) normal,
    required TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)
        editing,
    required TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)
        reauthenticating,
    required TResult Function(User user, String? errorMessage) deleting,
  }) {
    return normal(user, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String? errorMessage)? normal,
    TResult? Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult? Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult? Function(User user, String? errorMessage)? deleting,
  }) {
    return normal?.call(user, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String? errorMessage)? normal,
    TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult Function(User user, String? errorMessage)? deleting,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(user, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateNormal value) normal,
    required TResult Function(AccountStateEditing value) editing,
    required TResult Function(AccountStateReauthenticating value)
        reauthenticating,
    required TResult Function(AccountStateDeleting value) deleting,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
    TResult? Function(AccountStateDeleting value)? deleting,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
    TResult Function(AccountStateDeleting value)? deleting,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class AccountStateNormal implements AccountState {
  const factory AccountStateNormal(
      {required final User user,
      final String? errorMessage}) = _$AccountStateNormalImpl;

  @override
  User get user;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateNormalImplCopyWith<_$AccountStateNormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountStateEditingImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateEditingImplCopyWith(_$AccountStateEditingImpl value,
          $Res Function(_$AccountStateEditingImpl) then) =
      __$$AccountStateEditingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      String? errorMessage,
      String? name,
      String? email,
      String? password,
      String? confirmPassword,
      bool isEditingPasswordVisible});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AccountStateEditingImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateEditingImpl>
    implements _$$AccountStateEditingImplCopyWith<$Res> {
  __$$AccountStateEditingImplCopyWithImpl(_$AccountStateEditingImpl _value,
      $Res Function(_$AccountStateEditingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? errorMessage = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? isEditingPasswordVisible = null,
  }) {
    return _then(_$AccountStateEditingImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      isEditingPasswordVisible: null == isEditingPasswordVisible
          ? _value.isEditingPasswordVisible
          : isEditingPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccountStateEditingImpl implements AccountStateEditing {
  const _$AccountStateEditingImpl(
      {required this.user,
      this.errorMessage,
      this.name,
      this.email,
      this.password,
      this.confirmPassword,
      this.isEditingPasswordVisible = false});

  @override
  final User user;
  @override
  final String? errorMessage;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  @JsonKey()
  final bool isEditingPasswordVisible;

  @override
  String toString() {
    return 'AccountState.editing(user: $user, errorMessage: $errorMessage, name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, isEditingPasswordVisible: $isEditingPasswordVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateEditingImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(
                    other.isEditingPasswordVisible, isEditingPasswordVisible) ||
                other.isEditingPasswordVisible == isEditingPasswordVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, errorMessage, name, email,
      password, confirmPassword, isEditingPasswordVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateEditingImplCopyWith<_$AccountStateEditingImpl> get copyWith =>
      __$$AccountStateEditingImplCopyWithImpl<_$AccountStateEditingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String? errorMessage) normal,
    required TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)
        editing,
    required TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)
        reauthenticating,
    required TResult Function(User user, String? errorMessage) deleting,
  }) {
    return editing(user, errorMessage, name, email, password, confirmPassword,
        isEditingPasswordVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String? errorMessage)? normal,
    TResult? Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult? Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult? Function(User user, String? errorMessage)? deleting,
  }) {
    return editing?.call(user, errorMessage, name, email, password,
        confirmPassword, isEditingPasswordVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String? errorMessage)? normal,
    TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult Function(User user, String? errorMessage)? deleting,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(user, errorMessage, name, email, password, confirmPassword,
          isEditingPasswordVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateNormal value) normal,
    required TResult Function(AccountStateEditing value) editing,
    required TResult Function(AccountStateReauthenticating value)
        reauthenticating,
    required TResult Function(AccountStateDeleting value) deleting,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
    TResult? Function(AccountStateDeleting value)? deleting,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
    TResult Function(AccountStateDeleting value)? deleting,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class AccountStateEditing implements AccountState {
  const factory AccountStateEditing(
      {required final User user,
      final String? errorMessage,
      final String? name,
      final String? email,
      final String? password,
      final String? confirmPassword,
      final bool isEditingPasswordVisible}) = _$AccountStateEditingImpl;

  @override
  User get user;
  @override
  String? get errorMessage;
  String? get name;
  String? get email;
  String? get password;
  String? get confirmPassword;
  bool get isEditingPasswordVisible;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateEditingImplCopyWith<_$AccountStateEditingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountStateReauthenticatingImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateReauthenticatingImplCopyWith(
          _$AccountStateReauthenticatingImpl value,
          $Res Function(_$AccountStateReauthenticatingImpl) then) =
      __$$AccountStateReauthenticatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      String? errorMessage,
      String? password,
      bool isSaving,
      EditUserData editUserData});

  @override
  $UserCopyWith<$Res> get user;
  $EditUserDataCopyWith<$Res> get editUserData;
}

/// @nodoc
class __$$AccountStateReauthenticatingImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateReauthenticatingImpl>
    implements _$$AccountStateReauthenticatingImplCopyWith<$Res> {
  __$$AccountStateReauthenticatingImplCopyWithImpl(
      _$AccountStateReauthenticatingImpl _value,
      $Res Function(_$AccountStateReauthenticatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? errorMessage = freezed,
    Object? password = freezed,
    Object? isSaving = null,
    Object? editUserData = null,
  }) {
    return _then(_$AccountStateReauthenticatingImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      editUserData: null == editUserData
          ? _value.editUserData
          : editUserData // ignore: cast_nullable_to_non_nullable
              as EditUserData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EditUserDataCopyWith<$Res> get editUserData {
    return $EditUserDataCopyWith<$Res>(_value.editUserData, (value) {
      return _then(_value.copyWith(editUserData: value));
    });
  }
}

/// @nodoc

class _$AccountStateReauthenticatingImpl
    implements AccountStateReauthenticating {
  const _$AccountStateReauthenticatingImpl(
      {required this.user,
      this.errorMessage,
      this.password,
      this.isSaving = false,
      required this.editUserData});

  @override
  final User user;
  @override
  final String? errorMessage;
  @override
  final String? password;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  final EditUserData editUserData;

  @override
  String toString() {
    return 'AccountState.reauthenticating(user: $user, errorMessage: $errorMessage, password: $password, isSaving: $isSaving, editUserData: $editUserData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateReauthenticatingImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.editUserData, editUserData) ||
                other.editUserData == editUserData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, errorMessage, password, isSaving, editUserData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateReauthenticatingImplCopyWith<
          _$AccountStateReauthenticatingImpl>
      get copyWith => __$$AccountStateReauthenticatingImplCopyWithImpl<
          _$AccountStateReauthenticatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String? errorMessage) normal,
    required TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)
        editing,
    required TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)
        reauthenticating,
    required TResult Function(User user, String? errorMessage) deleting,
  }) {
    return reauthenticating(
        user, errorMessage, password, isSaving, editUserData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String? errorMessage)? normal,
    TResult? Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult? Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult? Function(User user, String? errorMessage)? deleting,
  }) {
    return reauthenticating?.call(
        user, errorMessage, password, isSaving, editUserData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String? errorMessage)? normal,
    TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult Function(User user, String? errorMessage)? deleting,
    required TResult orElse(),
  }) {
    if (reauthenticating != null) {
      return reauthenticating(
          user, errorMessage, password, isSaving, editUserData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateNormal value) normal,
    required TResult Function(AccountStateEditing value) editing,
    required TResult Function(AccountStateReauthenticating value)
        reauthenticating,
    required TResult Function(AccountStateDeleting value) deleting,
  }) {
    return reauthenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
    TResult? Function(AccountStateDeleting value)? deleting,
  }) {
    return reauthenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
    TResult Function(AccountStateDeleting value)? deleting,
    required TResult orElse(),
  }) {
    if (reauthenticating != null) {
      return reauthenticating(this);
    }
    return orElse();
  }
}

abstract class AccountStateReauthenticating implements AccountState {
  const factory AccountStateReauthenticating(
          {required final User user,
          final String? errorMessage,
          final String? password,
          final bool isSaving,
          required final EditUserData editUserData}) =
      _$AccountStateReauthenticatingImpl;

  @override
  User get user;
  @override
  String? get errorMessage;
  String? get password;
  bool get isSaving;
  EditUserData get editUserData;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateReauthenticatingImplCopyWith<
          _$AccountStateReauthenticatingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountStateDeletingImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateDeletingImplCopyWith(_$AccountStateDeletingImpl value,
          $Res Function(_$AccountStateDeletingImpl) then) =
      __$$AccountStateDeletingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String? errorMessage});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AccountStateDeletingImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateDeletingImpl>
    implements _$$AccountStateDeletingImplCopyWith<$Res> {
  __$$AccountStateDeletingImplCopyWithImpl(_$AccountStateDeletingImpl _value,
      $Res Function(_$AccountStateDeletingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AccountStateDeletingImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountStateDeletingImpl implements AccountStateDeleting {
  const _$AccountStateDeletingImpl({required this.user, this.errorMessage});

  @override
  final User user;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AccountState.deleting(user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateDeletingImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateDeletingImplCopyWith<_$AccountStateDeletingImpl>
      get copyWith =>
          __$$AccountStateDeletingImplCopyWithImpl<_$AccountStateDeletingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String? errorMessage) normal,
    required TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)
        editing,
    required TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)
        reauthenticating,
    required TResult Function(User user, String? errorMessage) deleting,
  }) {
    return deleting(user, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String? errorMessage)? normal,
    TResult? Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult? Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult? Function(User user, String? errorMessage)? deleting,
  }) {
    return deleting?.call(user, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String? errorMessage)? normal,
    TResult Function(
            User user,
            String? errorMessage,
            String? name,
            String? email,
            String? password,
            String? confirmPassword,
            bool isEditingPasswordVisible)?
        editing,
    TResult Function(User user, String? errorMessage, String? password,
            bool isSaving, EditUserData editUserData)?
        reauthenticating,
    TResult Function(User user, String? errorMessage)? deleting,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(user, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateNormal value) normal,
    required TResult Function(AccountStateEditing value) editing,
    required TResult Function(AccountStateReauthenticating value)
        reauthenticating,
    required TResult Function(AccountStateDeleting value) deleting,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
    TResult? Function(AccountStateDeleting value)? deleting,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
    TResult Function(AccountStateDeleting value)? deleting,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class AccountStateDeleting implements AccountState {
  const factory AccountStateDeleting(
      {required final User user,
      final String? errorMessage}) = _$AccountStateDeletingImpl;

  @override
  User get user;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateDeletingImplCopyWith<_$AccountStateDeletingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditUserData {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditUserDataCopyWith<EditUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserDataCopyWith<$Res> {
  factory $EditUserDataCopyWith(
          EditUserData value, $Res Function(EditUserData) then) =
      _$EditUserDataCopyWithImpl<$Res, EditUserData>;
  @useResult
  $Res call({String? name, String? email, String? password});
}

/// @nodoc
class _$EditUserDataCopyWithImpl<$Res, $Val extends EditUserData>
    implements $EditUserDataCopyWith<$Res> {
  _$EditUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditUserDataImplCopyWith<$Res>
    implements $EditUserDataCopyWith<$Res> {
  factory _$$EditUserDataImplCopyWith(
          _$EditUserDataImpl value, $Res Function(_$EditUserDataImpl) then) =
      __$$EditUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email, String? password});
}

/// @nodoc
class __$$EditUserDataImplCopyWithImpl<$Res>
    extends _$EditUserDataCopyWithImpl<$Res, _$EditUserDataImpl>
    implements _$$EditUserDataImplCopyWith<$Res> {
  __$$EditUserDataImplCopyWithImpl(
      _$EditUserDataImpl _value, $Res Function(_$EditUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$EditUserDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditUserDataImpl implements _EditUserData {
  const _$EditUserDataImpl(
      {required this.name, required this.email, required this.password});

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'EditUserData(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserDataImplCopyWith<_$EditUserDataImpl> get copyWith =>
      __$$EditUserDataImplCopyWithImpl<_$EditUserDataImpl>(this, _$identity);
}

abstract class _EditUserData implements EditUserData {
  const factory _EditUserData(
      {required final String? name,
      required final String? email,
      required final String? password}) = _$EditUserDataImpl;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$EditUserDataImplCopyWith<_$EditUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
