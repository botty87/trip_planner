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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    required TResult Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)
        reauthenticating,
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
    TResult? Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)?
        reauthenticating,
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
    TResult Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)?
        reauthenticating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateNormal value) normal,
    required TResult Function(AccountStateEditing value) editing,
    required TResult Function(AccountStateReauthenticating value)
        reauthenticating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
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
abstract class _$$AccountStateNormalCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateNormalCopyWith(_$AccountStateNormal value,
          $Res Function(_$AccountStateNormal) then) =
      __$$AccountStateNormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String? errorMessage});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AccountStateNormalCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateNormal>
    implements _$$AccountStateNormalCopyWith<$Res> {
  __$$AccountStateNormalCopyWithImpl(
      _$AccountStateNormal _value, $Res Function(_$AccountStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AccountStateNormal(
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

class _$AccountStateNormal implements AccountStateNormal {
  const _$AccountStateNormal({required this.user, this.errorMessage});

  @override
  final User user;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AccountState.normal(user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateNormal &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateNormalCopyWith<_$AccountStateNormal> get copyWith =>
      __$$AccountStateNormalCopyWithImpl<_$AccountStateNormal>(
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
    required TResult Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)
        reauthenticating,
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
    TResult? Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)?
        reauthenticating,
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
    TResult Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)?
        reauthenticating,
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
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
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
      final String? errorMessage}) = _$AccountStateNormal;

  @override
  User get user;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateNormalCopyWith<_$AccountStateNormal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountStateEditingCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateEditingCopyWith(_$AccountStateEditing value,
          $Res Function(_$AccountStateEditing) then) =
      __$$AccountStateEditingCopyWithImpl<$Res>;
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
class __$$AccountStateEditingCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateEditing>
    implements _$$AccountStateEditingCopyWith<$Res> {
  __$$AccountStateEditingCopyWithImpl(
      _$AccountStateEditing _value, $Res Function(_$AccountStateEditing) _then)
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
    return _then(_$AccountStateEditing(
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

class _$AccountStateEditing implements AccountStateEditing {
  const _$AccountStateEditing(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateEditing &&
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
  _$$AccountStateEditingCopyWith<_$AccountStateEditing> get copyWith =>
      __$$AccountStateEditingCopyWithImpl<_$AccountStateEditing>(
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
    required TResult Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)
        reauthenticating,
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
    TResult? Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)?
        reauthenticating,
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
    TResult Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)?
        reauthenticating,
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
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
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
      final bool isEditingPasswordVisible}) = _$AccountStateEditing;

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
  _$$AccountStateEditingCopyWith<_$AccountStateEditing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountStateReauthenticatingCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateReauthenticatingCopyWith(
          _$AccountStateReauthenticating value,
          $Res Function(_$AccountStateReauthenticating) then) =
      __$$AccountStateReauthenticatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      String? errorMessage,
      String? email,
      String? password,
      EditUserData editUserData});

  @override
  $UserCopyWith<$Res> get user;
  $EditUserDataCopyWith<$Res> get editUserData;
}

/// @nodoc
class __$$AccountStateReauthenticatingCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateReauthenticating>
    implements _$$AccountStateReauthenticatingCopyWith<$Res> {
  __$$AccountStateReauthenticatingCopyWithImpl(
      _$AccountStateReauthenticating _value,
      $Res Function(_$AccountStateReauthenticating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? errorMessage = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? editUserData = null,
  }) {
    return _then(_$AccountStateReauthenticating(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$AccountStateReauthenticating implements AccountStateReauthenticating {
  const _$AccountStateReauthenticating(
      {required this.user,
      this.errorMessage,
      this.email,
      this.password,
      required this.editUserData});

  @override
  final User user;
  @override
  final String? errorMessage;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final EditUserData editUserData;

  @override
  String toString() {
    return 'AccountState.reauthenticating(user: $user, errorMessage: $errorMessage, email: $email, password: $password, editUserData: $editUserData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateReauthenticating &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.editUserData, editUserData) ||
                other.editUserData == editUserData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, errorMessage, email, password, editUserData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateReauthenticatingCopyWith<_$AccountStateReauthenticating>
      get copyWith => __$$AccountStateReauthenticatingCopyWithImpl<
          _$AccountStateReauthenticating>(this, _$identity);

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
    required TResult Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)
        reauthenticating,
  }) {
    return reauthenticating(user, errorMessage, email, password, editUserData);
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
    TResult? Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)?
        reauthenticating,
  }) {
    return reauthenticating?.call(
        user, errorMessage, email, password, editUserData);
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
    TResult Function(User user, String? errorMessage, String? email,
            String? password, EditUserData editUserData)?
        reauthenticating,
    required TResult orElse(),
  }) {
    if (reauthenticating != null) {
      return reauthenticating(
          user, errorMessage, email, password, editUserData);
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
  }) {
    return reauthenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateNormal value)? normal,
    TResult? Function(AccountStateEditing value)? editing,
    TResult? Function(AccountStateReauthenticating value)? reauthenticating,
  }) {
    return reauthenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateNormal value)? normal,
    TResult Function(AccountStateEditing value)? editing,
    TResult Function(AccountStateReauthenticating value)? reauthenticating,
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
          final String? email,
          final String? password,
          required final EditUserData editUserData}) =
      _$AccountStateReauthenticating;

  @override
  User get user;
  @override
  String? get errorMessage;
  String? get email;
  String? get password;
  EditUserData get editUserData;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateReauthenticatingCopyWith<_$AccountStateReauthenticating>
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
abstract class _$$_EditUserDataCopyWith<$Res>
    implements $EditUserDataCopyWith<$Res> {
  factory _$$_EditUserDataCopyWith(
          _$_EditUserData value, $Res Function(_$_EditUserData) then) =
      __$$_EditUserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email, String? password});
}

/// @nodoc
class __$$_EditUserDataCopyWithImpl<$Res>
    extends _$EditUserDataCopyWithImpl<$Res, _$_EditUserData>
    implements _$$_EditUserDataCopyWith<$Res> {
  __$$_EditUserDataCopyWithImpl(
      _$_EditUserData _value, $Res Function(_$_EditUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_EditUserData(
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

class _$_EditUserData implements _EditUserData {
  const _$_EditUserData(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserData &&
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
  _$$_EditUserDataCopyWith<_$_EditUserData> get copyWith =>
      __$$_EditUserDataCopyWithImpl<_$_EditUserData>(this, _$identity);
}

abstract class _EditUserData implements EditUserData {
  const factory _EditUserData(
      {required final String? name,
      required final String? email,
      required final String? password}) = _$_EditUserData;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_EditUserDataCopyWith<_$_EditUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
