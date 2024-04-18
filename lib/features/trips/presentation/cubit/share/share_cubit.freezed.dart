// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShareState {
  Map<String, String>? get sharedUsers => throw _privateConstructorUsedError;
  String get userEmailQuery => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        initial,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        loaded,
    required TResult Function(Map<String, String>? sharedUsers,
            String userEmailQuery, String errorMessage)
        error,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        userAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialShareState value) initial,
    required TResult Function(_LoadedShareState value) loaded,
    required TResult Function(_ErrorShareState value) error,
    required TResult Function(_UserAddedShareState value) userAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialShareState value)? initial,
    TResult? Function(_LoadedShareState value)? loaded,
    TResult? Function(_ErrorShareState value)? error,
    TResult? Function(_UserAddedShareState value)? userAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialShareState value)? initial,
    TResult Function(_LoadedShareState value)? loaded,
    TResult Function(_ErrorShareState value)? error,
    TResult Function(_UserAddedShareState value)? userAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareStateCopyWith<ShareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareStateCopyWith<$Res> {
  factory $ShareStateCopyWith(
          ShareState value, $Res Function(ShareState) then) =
      _$ShareStateCopyWithImpl<$Res, ShareState>;
  @useResult
  $Res call({Map<String, String>? sharedUsers, String userEmailQuery});
}

/// @nodoc
class _$ShareStateCopyWithImpl<$Res, $Val extends ShareState>
    implements $ShareStateCopyWith<$Res> {
  _$ShareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
  }) {
    return _then(_value.copyWith(
      sharedUsers: freezed == sharedUsers
          ? _value.sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      userEmailQuery: null == userEmailQuery
          ? _value.userEmailQuery
          : userEmailQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialShareStateImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$InitialShareStateImplCopyWith(_$InitialShareStateImpl value,
          $Res Function(_$InitialShareStateImpl) then) =
      __$$InitialShareStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String>? sharedUsers, String userEmailQuery});
}

/// @nodoc
class __$$InitialShareStateImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$InitialShareStateImpl>
    implements _$$InitialShareStateImplCopyWith<$Res> {
  __$$InitialShareStateImplCopyWithImpl(_$InitialShareStateImpl _value,
      $Res Function(_$InitialShareStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
  }) {
    return _then(_$InitialShareStateImpl(
      sharedUsers: freezed == sharedUsers
          ? _value._sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      userEmailQuery: null == userEmailQuery
          ? _value.userEmailQuery
          : userEmailQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialShareStateImpl implements _InitialShareState {
  const _$InitialShareStateImpl(
      {final Map<String, String>? sharedUsers, this.userEmailQuery = ''})
      : _sharedUsers = sharedUsers;

  final Map<String, String>? _sharedUsers;
  @override
  Map<String, String>? get sharedUsers {
    final value = _sharedUsers;
    if (value == null) return null;
    if (_sharedUsers is EqualUnmodifiableMapView) return _sharedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final String userEmailQuery;

  @override
  String toString() {
    return 'ShareState.initial(sharedUsers: $sharedUsers, userEmailQuery: $userEmailQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialShareStateImpl &&
            const DeepCollectionEquality()
                .equals(other._sharedUsers, _sharedUsers) &&
            (identical(other.userEmailQuery, userEmailQuery) ||
                other.userEmailQuery == userEmailQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_sharedUsers), userEmailQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialShareStateImplCopyWith<_$InitialShareStateImpl> get copyWith =>
      __$$InitialShareStateImplCopyWithImpl<_$InitialShareStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        initial,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        loaded,
    required TResult Function(Map<String, String>? sharedUsers,
            String userEmailQuery, String errorMessage)
        error,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        userAdded,
  }) {
    return initial(sharedUsers, userEmailQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
  }) {
    return initial?.call(sharedUsers, userEmailQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(sharedUsers, userEmailQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialShareState value) initial,
    required TResult Function(_LoadedShareState value) loaded,
    required TResult Function(_ErrorShareState value) error,
    required TResult Function(_UserAddedShareState value) userAdded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialShareState value)? initial,
    TResult? Function(_LoadedShareState value)? loaded,
    TResult? Function(_ErrorShareState value)? error,
    TResult? Function(_UserAddedShareState value)? userAdded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialShareState value)? initial,
    TResult Function(_LoadedShareState value)? loaded,
    TResult Function(_ErrorShareState value)? error,
    TResult Function(_UserAddedShareState value)? userAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialShareState implements ShareState {
  const factory _InitialShareState(
      {final Map<String, String>? sharedUsers,
      final String userEmailQuery}) = _$InitialShareStateImpl;

  @override
  Map<String, String>? get sharedUsers;
  @override
  String get userEmailQuery;
  @override
  @JsonKey(ignore: true)
  _$$InitialShareStateImplCopyWith<_$InitialShareStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedShareStateImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$LoadedShareStateImplCopyWith(_$LoadedShareStateImpl value,
          $Res Function(_$LoadedShareStateImpl) then) =
      __$$LoadedShareStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String>? sharedUsers, String userEmailQuery});
}

/// @nodoc
class __$$LoadedShareStateImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$LoadedShareStateImpl>
    implements _$$LoadedShareStateImplCopyWith<$Res> {
  __$$LoadedShareStateImplCopyWithImpl(_$LoadedShareStateImpl _value,
      $Res Function(_$LoadedShareStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
  }) {
    return _then(_$LoadedShareStateImpl(
      sharedUsers: freezed == sharedUsers
          ? _value._sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      userEmailQuery: null == userEmailQuery
          ? _value.userEmailQuery
          : userEmailQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedShareStateImpl implements _LoadedShareState {
  const _$LoadedShareStateImpl(
      {required final Map<String, String>? sharedUsers,
      this.userEmailQuery = ''})
      : _sharedUsers = sharedUsers;

  final Map<String, String>? _sharedUsers;
  @override
  Map<String, String>? get sharedUsers {
    final value = _sharedUsers;
    if (value == null) return null;
    if (_sharedUsers is EqualUnmodifiableMapView) return _sharedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final String userEmailQuery;

  @override
  String toString() {
    return 'ShareState.loaded(sharedUsers: $sharedUsers, userEmailQuery: $userEmailQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedShareStateImpl &&
            const DeepCollectionEquality()
                .equals(other._sharedUsers, _sharedUsers) &&
            (identical(other.userEmailQuery, userEmailQuery) ||
                other.userEmailQuery == userEmailQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_sharedUsers), userEmailQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedShareStateImplCopyWith<_$LoadedShareStateImpl> get copyWith =>
      __$$LoadedShareStateImplCopyWithImpl<_$LoadedShareStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        initial,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        loaded,
    required TResult Function(Map<String, String>? sharedUsers,
            String userEmailQuery, String errorMessage)
        error,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        userAdded,
  }) {
    return loaded(sharedUsers, userEmailQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
  }) {
    return loaded?.call(sharedUsers, userEmailQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(sharedUsers, userEmailQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialShareState value) initial,
    required TResult Function(_LoadedShareState value) loaded,
    required TResult Function(_ErrorShareState value) error,
    required TResult Function(_UserAddedShareState value) userAdded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialShareState value)? initial,
    TResult? Function(_LoadedShareState value)? loaded,
    TResult? Function(_ErrorShareState value)? error,
    TResult? Function(_UserAddedShareState value)? userAdded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialShareState value)? initial,
    TResult Function(_LoadedShareState value)? loaded,
    TResult Function(_ErrorShareState value)? error,
    TResult Function(_UserAddedShareState value)? userAdded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedShareState implements ShareState {
  const factory _LoadedShareState(
      {required final Map<String, String>? sharedUsers,
      final String userEmailQuery}) = _$LoadedShareStateImpl;

  @override
  Map<String, String>? get sharedUsers;
  @override
  String get userEmailQuery;
  @override
  @JsonKey(ignore: true)
  _$$LoadedShareStateImplCopyWith<_$LoadedShareStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorShareStateImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$ErrorShareStateImplCopyWith(_$ErrorShareStateImpl value,
          $Res Function(_$ErrorShareStateImpl) then) =
      __$$ErrorShareStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String>? sharedUsers,
      String userEmailQuery,
      String errorMessage});
}

/// @nodoc
class __$$ErrorShareStateImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ErrorShareStateImpl>
    implements _$$ErrorShareStateImplCopyWith<$Res> {
  __$$ErrorShareStateImplCopyWithImpl(
      _$ErrorShareStateImpl _value, $Res Function(_$ErrorShareStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorShareStateImpl(
      sharedUsers: freezed == sharedUsers
          ? _value._sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      userEmailQuery: null == userEmailQuery
          ? _value.userEmailQuery
          : userEmailQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorShareStateImpl implements _ErrorShareState {
  const _$ErrorShareStateImpl(
      {required final Map<String, String>? sharedUsers,
      required this.userEmailQuery,
      required this.errorMessage})
      : _sharedUsers = sharedUsers;

  final Map<String, String>? _sharedUsers;
  @override
  Map<String, String>? get sharedUsers {
    final value = _sharedUsers;
    if (value == null) return null;
    if (_sharedUsers is EqualUnmodifiableMapView) return _sharedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String userEmailQuery;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ShareState.error(sharedUsers: $sharedUsers, userEmailQuery: $userEmailQuery, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorShareStateImpl &&
            const DeepCollectionEquality()
                .equals(other._sharedUsers, _sharedUsers) &&
            (identical(other.userEmailQuery, userEmailQuery) ||
                other.userEmailQuery == userEmailQuery) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sharedUsers),
      userEmailQuery,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorShareStateImplCopyWith<_$ErrorShareStateImpl> get copyWith =>
      __$$ErrorShareStateImplCopyWithImpl<_$ErrorShareStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        initial,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        loaded,
    required TResult Function(Map<String, String>? sharedUsers,
            String userEmailQuery, String errorMessage)
        error,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        userAdded,
  }) {
    return error(sharedUsers, userEmailQuery, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
  }) {
    return error?.call(sharedUsers, userEmailQuery, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(sharedUsers, userEmailQuery, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialShareState value) initial,
    required TResult Function(_LoadedShareState value) loaded,
    required TResult Function(_ErrorShareState value) error,
    required TResult Function(_UserAddedShareState value) userAdded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialShareState value)? initial,
    TResult? Function(_LoadedShareState value)? loaded,
    TResult? Function(_ErrorShareState value)? error,
    TResult? Function(_UserAddedShareState value)? userAdded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialShareState value)? initial,
    TResult Function(_LoadedShareState value)? loaded,
    TResult Function(_ErrorShareState value)? error,
    TResult Function(_UserAddedShareState value)? userAdded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorShareState implements ShareState {
  const factory _ErrorShareState(
      {required final Map<String, String>? sharedUsers,
      required final String userEmailQuery,
      required final String errorMessage}) = _$ErrorShareStateImpl;

  @override
  Map<String, String>? get sharedUsers;
  @override
  String get userEmailQuery;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorShareStateImplCopyWith<_$ErrorShareStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAddedShareStateImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$UserAddedShareStateImplCopyWith(_$UserAddedShareStateImpl value,
          $Res Function(_$UserAddedShareStateImpl) then) =
      __$$UserAddedShareStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String>? sharedUsers, String userEmailQuery});
}

/// @nodoc
class __$$UserAddedShareStateImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$UserAddedShareStateImpl>
    implements _$$UserAddedShareStateImplCopyWith<$Res> {
  __$$UserAddedShareStateImplCopyWithImpl(_$UserAddedShareStateImpl _value,
      $Res Function(_$UserAddedShareStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
  }) {
    return _then(_$UserAddedShareStateImpl(
      sharedUsers: freezed == sharedUsers
          ? _value._sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      userEmailQuery: null == userEmailQuery
          ? _value.userEmailQuery
          : userEmailQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAddedShareStateImpl implements _UserAddedShareState {
  const _$UserAddedShareStateImpl(
      {required final Map<String, String>? sharedUsers,
      this.userEmailQuery = ''})
      : _sharedUsers = sharedUsers;

  final Map<String, String>? _sharedUsers;
  @override
  Map<String, String>? get sharedUsers {
    final value = _sharedUsers;
    if (value == null) return null;
    if (_sharedUsers is EqualUnmodifiableMapView) return _sharedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final String userEmailQuery;

  @override
  String toString() {
    return 'ShareState.userAdded(sharedUsers: $sharedUsers, userEmailQuery: $userEmailQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddedShareStateImpl &&
            const DeepCollectionEquality()
                .equals(other._sharedUsers, _sharedUsers) &&
            (identical(other.userEmailQuery, userEmailQuery) ||
                other.userEmailQuery == userEmailQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_sharedUsers), userEmailQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddedShareStateImplCopyWith<_$UserAddedShareStateImpl> get copyWith =>
      __$$UserAddedShareStateImplCopyWithImpl<_$UserAddedShareStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        initial,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        loaded,
    required TResult Function(Map<String, String>? sharedUsers,
            String userEmailQuery, String errorMessage)
        error,
    required TResult Function(
            Map<String, String>? sharedUsers, String userEmailQuery)
        userAdded,
  }) {
    return userAdded(sharedUsers, userEmailQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult? Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
  }) {
    return userAdded?.call(sharedUsers, userEmailQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        initial,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        loaded,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery,
            String errorMessage)?
        error,
    TResult Function(Map<String, String>? sharedUsers, String userEmailQuery)?
        userAdded,
    required TResult orElse(),
  }) {
    if (userAdded != null) {
      return userAdded(sharedUsers, userEmailQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialShareState value) initial,
    required TResult Function(_LoadedShareState value) loaded,
    required TResult Function(_ErrorShareState value) error,
    required TResult Function(_UserAddedShareState value) userAdded,
  }) {
    return userAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialShareState value)? initial,
    TResult? Function(_LoadedShareState value)? loaded,
    TResult? Function(_ErrorShareState value)? error,
    TResult? Function(_UserAddedShareState value)? userAdded,
  }) {
    return userAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialShareState value)? initial,
    TResult Function(_LoadedShareState value)? loaded,
    TResult Function(_ErrorShareState value)? error,
    TResult Function(_UserAddedShareState value)? userAdded,
    required TResult orElse(),
  }) {
    if (userAdded != null) {
      return userAdded(this);
    }
    return orElse();
  }
}

abstract class _UserAddedShareState implements ShareState {
  const factory _UserAddedShareState(
      {required final Map<String, String>? sharedUsers,
      final String userEmailQuery}) = _$UserAddedShareStateImpl;

  @override
  Map<String, String>? get sharedUsers;
  @override
  String get userEmailQuery;
  @override
  @JsonKey(ignore: true)
  _$$UserAddedShareStateImplCopyWith<_$UserAddedShareStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
