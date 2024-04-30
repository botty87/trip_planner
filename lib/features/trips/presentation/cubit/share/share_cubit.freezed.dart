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
    required TResult Function(ShareStateInitial value) initial,
    required TResult Function(ShareStateLoaded value) loaded,
    required TResult Function(ShareStateError value) error,
    required TResult Function(ShareStateUserAdded value) userAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareStateInitial value)? initial,
    TResult? Function(ShareStateLoaded value)? loaded,
    TResult? Function(ShareStateError value)? error,
    TResult? Function(ShareStateUserAdded value)? userAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareStateInitial value)? initial,
    TResult Function(ShareStateLoaded value)? loaded,
    TResult Function(ShareStateError value)? error,
    TResult Function(ShareStateUserAdded value)? userAdded,
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
abstract class _$$ShareStateInitialImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$ShareStateInitialImplCopyWith(_$ShareStateInitialImpl value,
          $Res Function(_$ShareStateInitialImpl) then) =
      __$$ShareStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String>? sharedUsers, String userEmailQuery});
}

/// @nodoc
class __$$ShareStateInitialImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareStateInitialImpl>
    implements _$$ShareStateInitialImplCopyWith<$Res> {
  __$$ShareStateInitialImplCopyWithImpl(_$ShareStateInitialImpl _value,
      $Res Function(_$ShareStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
  }) {
    return _then(_$ShareStateInitialImpl(
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

class _$ShareStateInitialImpl implements ShareStateInitial {
  const _$ShareStateInitialImpl(
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
            other is _$ShareStateInitialImpl &&
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
  _$$ShareStateInitialImplCopyWith<_$ShareStateInitialImpl> get copyWith =>
      __$$ShareStateInitialImplCopyWithImpl<_$ShareStateInitialImpl>(
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
    required TResult Function(ShareStateInitial value) initial,
    required TResult Function(ShareStateLoaded value) loaded,
    required TResult Function(ShareStateError value) error,
    required TResult Function(ShareStateUserAdded value) userAdded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareStateInitial value)? initial,
    TResult? Function(ShareStateLoaded value)? loaded,
    TResult? Function(ShareStateError value)? error,
    TResult? Function(ShareStateUserAdded value)? userAdded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareStateInitial value)? initial,
    TResult Function(ShareStateLoaded value)? loaded,
    TResult Function(ShareStateError value)? error,
    TResult Function(ShareStateUserAdded value)? userAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ShareStateInitial implements ShareState {
  const factory ShareStateInitial(
      {final Map<String, String>? sharedUsers,
      final String userEmailQuery}) = _$ShareStateInitialImpl;

  @override
  Map<String, String>? get sharedUsers;
  @override
  String get userEmailQuery;
  @override
  @JsonKey(ignore: true)
  _$$ShareStateInitialImplCopyWith<_$ShareStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareStateLoadedImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$ShareStateLoadedImplCopyWith(_$ShareStateLoadedImpl value,
          $Res Function(_$ShareStateLoadedImpl) then) =
      __$$ShareStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String>? sharedUsers, String userEmailQuery});
}

/// @nodoc
class __$$ShareStateLoadedImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareStateLoadedImpl>
    implements _$$ShareStateLoadedImplCopyWith<$Res> {
  __$$ShareStateLoadedImplCopyWithImpl(_$ShareStateLoadedImpl _value,
      $Res Function(_$ShareStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
  }) {
    return _then(_$ShareStateLoadedImpl(
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

class _$ShareStateLoadedImpl implements ShareStateLoaded {
  const _$ShareStateLoadedImpl(
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
            other is _$ShareStateLoadedImpl &&
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
  _$$ShareStateLoadedImplCopyWith<_$ShareStateLoadedImpl> get copyWith =>
      __$$ShareStateLoadedImplCopyWithImpl<_$ShareStateLoadedImpl>(
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
    required TResult Function(ShareStateInitial value) initial,
    required TResult Function(ShareStateLoaded value) loaded,
    required TResult Function(ShareStateError value) error,
    required TResult Function(ShareStateUserAdded value) userAdded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareStateInitial value)? initial,
    TResult? Function(ShareStateLoaded value)? loaded,
    TResult? Function(ShareStateError value)? error,
    TResult? Function(ShareStateUserAdded value)? userAdded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareStateInitial value)? initial,
    TResult Function(ShareStateLoaded value)? loaded,
    TResult Function(ShareStateError value)? error,
    TResult Function(ShareStateUserAdded value)? userAdded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ShareStateLoaded implements ShareState {
  const factory ShareStateLoaded(
      {required final Map<String, String>? sharedUsers,
      final String userEmailQuery}) = _$ShareStateLoadedImpl;

  @override
  Map<String, String>? get sharedUsers;
  @override
  String get userEmailQuery;
  @override
  @JsonKey(ignore: true)
  _$$ShareStateLoadedImplCopyWith<_$ShareStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareStateErrorImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$ShareStateErrorImplCopyWith(_$ShareStateErrorImpl value,
          $Res Function(_$ShareStateErrorImpl) then) =
      __$$ShareStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String>? sharedUsers,
      String userEmailQuery,
      String errorMessage});
}

/// @nodoc
class __$$ShareStateErrorImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareStateErrorImpl>
    implements _$$ShareStateErrorImplCopyWith<$Res> {
  __$$ShareStateErrorImplCopyWithImpl(
      _$ShareStateErrorImpl _value, $Res Function(_$ShareStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ShareStateErrorImpl(
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

class _$ShareStateErrorImpl implements ShareStateError {
  const _$ShareStateErrorImpl(
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
            other is _$ShareStateErrorImpl &&
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
  _$$ShareStateErrorImplCopyWith<_$ShareStateErrorImpl> get copyWith =>
      __$$ShareStateErrorImplCopyWithImpl<_$ShareStateErrorImpl>(
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
    required TResult Function(ShareStateInitial value) initial,
    required TResult Function(ShareStateLoaded value) loaded,
    required TResult Function(ShareStateError value) error,
    required TResult Function(ShareStateUserAdded value) userAdded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareStateInitial value)? initial,
    TResult? Function(ShareStateLoaded value)? loaded,
    TResult? Function(ShareStateError value)? error,
    TResult? Function(ShareStateUserAdded value)? userAdded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareStateInitial value)? initial,
    TResult Function(ShareStateLoaded value)? loaded,
    TResult Function(ShareStateError value)? error,
    TResult Function(ShareStateUserAdded value)? userAdded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ShareStateError implements ShareState {
  const factory ShareStateError(
      {required final Map<String, String>? sharedUsers,
      required final String userEmailQuery,
      required final String errorMessage}) = _$ShareStateErrorImpl;

  @override
  Map<String, String>? get sharedUsers;
  @override
  String get userEmailQuery;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ShareStateErrorImplCopyWith<_$ShareStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareStateUserAddedImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$ShareStateUserAddedImplCopyWith(_$ShareStateUserAddedImpl value,
          $Res Function(_$ShareStateUserAddedImpl) then) =
      __$$ShareStateUserAddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String>? sharedUsers, String userEmailQuery});
}

/// @nodoc
class __$$ShareStateUserAddedImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareStateUserAddedImpl>
    implements _$$ShareStateUserAddedImplCopyWith<$Res> {
  __$$ShareStateUserAddedImplCopyWithImpl(_$ShareStateUserAddedImpl _value,
      $Res Function(_$ShareStateUserAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedUsers = freezed,
    Object? userEmailQuery = null,
  }) {
    return _then(_$ShareStateUserAddedImpl(
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

class _$ShareStateUserAddedImpl implements ShareStateUserAdded {
  const _$ShareStateUserAddedImpl(
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
            other is _$ShareStateUserAddedImpl &&
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
  _$$ShareStateUserAddedImplCopyWith<_$ShareStateUserAddedImpl> get copyWith =>
      __$$ShareStateUserAddedImplCopyWithImpl<_$ShareStateUserAddedImpl>(
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
    required TResult Function(ShareStateInitial value) initial,
    required TResult Function(ShareStateLoaded value) loaded,
    required TResult Function(ShareStateError value) error,
    required TResult Function(ShareStateUserAdded value) userAdded,
  }) {
    return userAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareStateInitial value)? initial,
    TResult? Function(ShareStateLoaded value)? loaded,
    TResult? Function(ShareStateError value)? error,
    TResult? Function(ShareStateUserAdded value)? userAdded,
  }) {
    return userAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareStateInitial value)? initial,
    TResult Function(ShareStateLoaded value)? loaded,
    TResult Function(ShareStateError value)? error,
    TResult Function(ShareStateUserAdded value)? userAdded,
    required TResult orElse(),
  }) {
    if (userAdded != null) {
      return userAdded(this);
    }
    return orElse();
  }
}

abstract class ShareStateUserAdded implements ShareState {
  const factory ShareStateUserAdded(
      {required final Map<String, String>? sharedUsers,
      final String userEmailQuery}) = _$ShareStateUserAddedImpl;

  @override
  Map<String, String>? get sharedUsers;
  @override
  String get userEmailQuery;
  @override
  @JsonKey(ignore: true)
  _$$ShareStateUserAddedImplCopyWith<_$ShareStateUserAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
