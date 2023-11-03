// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_places_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GooglePlacesState {
  List<Suggestion> get suggestions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)
        normal,
    required TResult Function(GooglePlacesError error,
            List<Suggestion> suggestions, bool showRetryButton)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)?
        normal,
    TResult? Function(GooglePlacesError error, List<Suggestion> suggestions,
            bool showRetryButton)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)?
        normal,
    TResult Function(GooglePlacesError error, List<Suggestion> suggestions,
            bool showRetryButton)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GooglePlacesStateNormal value) normal,
    required TResult Function(_GooglePlacesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GooglePlacesStateNormal value)? normal,
    TResult? Function(_GooglePlacesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GooglePlacesStateNormal value)? normal,
    TResult Function(_GooglePlacesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GooglePlacesStateCopyWith<GooglePlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglePlacesStateCopyWith<$Res> {
  factory $GooglePlacesStateCopyWith(
          GooglePlacesState value, $Res Function(GooglePlacesState) then) =
      _$GooglePlacesStateCopyWithImpl<$Res, GooglePlacesState>;
  @useResult
  $Res call({List<Suggestion> suggestions});
}

/// @nodoc
class _$GooglePlacesStateCopyWithImpl<$Res, $Val extends GooglePlacesState>
    implements $GooglePlacesStateCopyWith<$Res> {
  _$GooglePlacesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<Suggestion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GooglePlacesStateNormalCopyWith<$Res>
    implements $GooglePlacesStateCopyWith<$Res> {
  factory _$$_GooglePlacesStateNormalCopyWith(_$_GooglePlacesStateNormal value,
          $Res Function(_$_GooglePlacesStateNormal) then) =
      __$$_GooglePlacesStateNormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Suggestion> suggestions,
      bool isLoading,
      PlaceDetails? placeDetails});

  $PlaceDetailsCopyWith<$Res>? get placeDetails;
}

/// @nodoc
class __$$_GooglePlacesStateNormalCopyWithImpl<$Res>
    extends _$GooglePlacesStateCopyWithImpl<$Res, _$_GooglePlacesStateNormal>
    implements _$$_GooglePlacesStateNormalCopyWith<$Res> {
  __$$_GooglePlacesStateNormalCopyWithImpl(_$_GooglePlacesStateNormal _value,
      $Res Function(_$_GooglePlacesStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
    Object? isLoading = null,
    Object? placeDetails = freezed,
  }) {
    return _then(_$_GooglePlacesStateNormal(
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<Suggestion>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      placeDetails: freezed == placeDetails
          ? _value.placeDetails
          : placeDetails // ignore: cast_nullable_to_non_nullable
              as PlaceDetails?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceDetailsCopyWith<$Res>? get placeDetails {
    if (_value.placeDetails == null) {
      return null;
    }

    return $PlaceDetailsCopyWith<$Res>(_value.placeDetails!, (value) {
      return _then(_value.copyWith(placeDetails: value));
    });
  }
}

/// @nodoc

class _$_GooglePlacesStateNormal implements _GooglePlacesStateNormal {
  const _$_GooglePlacesStateNormal(
      {final List<Suggestion> suggestions = const [],
      this.isLoading = false,
      this.placeDetails})
      : _suggestions = suggestions;

  final List<Suggestion> _suggestions;
  @override
  @JsonKey()
  List<Suggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final PlaceDetails? placeDetails;

  @override
  String toString() {
    return 'GooglePlacesState.normal(suggestions: $suggestions, isLoading: $isLoading, placeDetails: $placeDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GooglePlacesStateNormal &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.placeDetails, placeDetails) ||
                other.placeDetails == placeDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_suggestions),
      isLoading,
      placeDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GooglePlacesStateNormalCopyWith<_$_GooglePlacesStateNormal>
      get copyWith =>
          __$$_GooglePlacesStateNormalCopyWithImpl<_$_GooglePlacesStateNormal>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)
        normal,
    required TResult Function(GooglePlacesError error,
            List<Suggestion> suggestions, bool showRetryButton)
        error,
  }) {
    return normal(suggestions, isLoading, placeDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)?
        normal,
    TResult? Function(GooglePlacesError error, List<Suggestion> suggestions,
            bool showRetryButton)?
        error,
  }) {
    return normal?.call(suggestions, isLoading, placeDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)?
        normal,
    TResult Function(GooglePlacesError error, List<Suggestion> suggestions,
            bool showRetryButton)?
        error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(suggestions, isLoading, placeDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GooglePlacesStateNormal value) normal,
    required TResult Function(_GooglePlacesStateError value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GooglePlacesStateNormal value)? normal,
    TResult? Function(_GooglePlacesStateError value)? error,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GooglePlacesStateNormal value)? normal,
    TResult Function(_GooglePlacesStateError value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _GooglePlacesStateNormal implements GooglePlacesState {
  const factory _GooglePlacesStateNormal(
      {final List<Suggestion> suggestions,
      final bool isLoading,
      final PlaceDetails? placeDetails}) = _$_GooglePlacesStateNormal;

  @override
  List<Suggestion> get suggestions;
  bool get isLoading;
  PlaceDetails? get placeDetails;
  @override
  @JsonKey(ignore: true)
  _$$_GooglePlacesStateNormalCopyWith<_$_GooglePlacesStateNormal>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GooglePlacesStateErrorCopyWith<$Res>
    implements $GooglePlacesStateCopyWith<$Res> {
  factory _$$_GooglePlacesStateErrorCopyWith(_$_GooglePlacesStateError value,
          $Res Function(_$_GooglePlacesStateError) then) =
      __$$_GooglePlacesStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GooglePlacesError error,
      List<Suggestion> suggestions,
      bool showRetryButton});

  $GooglePlacesErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_GooglePlacesStateErrorCopyWithImpl<$Res>
    extends _$GooglePlacesStateCopyWithImpl<$Res, _$_GooglePlacesStateError>
    implements _$$_GooglePlacesStateErrorCopyWith<$Res> {
  __$$_GooglePlacesStateErrorCopyWithImpl(_$_GooglePlacesStateError _value,
      $Res Function(_$_GooglePlacesStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? suggestions = null,
    Object? showRetryButton = null,
  }) {
    return _then(_$_GooglePlacesStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as GooglePlacesError,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<Suggestion>,
      showRetryButton: null == showRetryButton
          ? _value.showRetryButton
          : showRetryButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GooglePlacesErrorCopyWith<$Res> get error {
    return $GooglePlacesErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_GooglePlacesStateError implements _GooglePlacesStateError {
  const _$_GooglePlacesStateError(
      {required this.error,
      final List<Suggestion> suggestions = const [],
      required this.showRetryButton})
      : _suggestions = suggestions;

  @override
  final GooglePlacesError error;
  final List<Suggestion> _suggestions;
  @override
  @JsonKey()
  List<Suggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  final bool showRetryButton;

  @override
  String toString() {
    return 'GooglePlacesState.error(error: $error, suggestions: $suggestions, showRetryButton: $showRetryButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GooglePlacesStateError &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.showRetryButton, showRetryButton) ||
                other.showRetryButton == showRetryButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error,
      const DeepCollectionEquality().hash(_suggestions), showRetryButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GooglePlacesStateErrorCopyWith<_$_GooglePlacesStateError> get copyWith =>
      __$$_GooglePlacesStateErrorCopyWithImpl<_$_GooglePlacesStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)
        normal,
    required TResult Function(GooglePlacesError error,
            List<Suggestion> suggestions, bool showRetryButton)
        error,
  }) {
    return error(this.error, suggestions, showRetryButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)?
        normal,
    TResult? Function(GooglePlacesError error, List<Suggestion> suggestions,
            bool showRetryButton)?
        error,
  }) {
    return error?.call(this.error, suggestions, showRetryButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Suggestion> suggestions, bool isLoading,
            PlaceDetails? placeDetails)?
        normal,
    TResult Function(GooglePlacesError error, List<Suggestion> suggestions,
            bool showRetryButton)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, suggestions, showRetryButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GooglePlacesStateNormal value) normal,
    required TResult Function(_GooglePlacesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GooglePlacesStateNormal value)? normal,
    TResult? Function(_GooglePlacesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GooglePlacesStateNormal value)? normal,
    TResult Function(_GooglePlacesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GooglePlacesStateError implements GooglePlacesState {
  const factory _GooglePlacesStateError(
      {required final GooglePlacesError error,
      final List<Suggestion> suggestions,
      required final bool showRetryButton}) = _$_GooglePlacesStateError;

  GooglePlacesError get error;
  @override
  List<Suggestion> get suggestions;
  bool get showRetryButton;
  @override
  @JsonKey(ignore: true)
  _$$_GooglePlacesStateErrorCopyWith<_$_GooglePlacesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GooglePlacesError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
    required TResult Function(String? message) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
    TResult? Function(String? message)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    TResult Function(String? message)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GooglePlacesErrorNoInternetConnection value)
        noInternetConnection,
    required TResult Function(_GooglePlacesErrorRequestDenied value)
        requestDenied,
    required TResult Function(_GooglePlacesErrorRequestCancelled value)
        requestCancelled,
    required TResult Function(_GooglePlacesErrorUnknownError value)
        unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult? Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult? Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult? Function(_GooglePlacesErrorUnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult Function(_GooglePlacesErrorUnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglePlacesErrorCopyWith<$Res> {
  factory $GooglePlacesErrorCopyWith(
          GooglePlacesError value, $Res Function(GooglePlacesError) then) =
      _$GooglePlacesErrorCopyWithImpl<$Res, GooglePlacesError>;
}

/// @nodoc
class _$GooglePlacesErrorCopyWithImpl<$Res, $Val extends GooglePlacesError>
    implements $GooglePlacesErrorCopyWith<$Res> {
  _$GooglePlacesErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GooglePlacesErrorNoInternetConnectionCopyWith<$Res> {
  factory _$$_GooglePlacesErrorNoInternetConnectionCopyWith(
          _$_GooglePlacesErrorNoInternetConnection value,
          $Res Function(_$_GooglePlacesErrorNoInternetConnection) then) =
      __$$_GooglePlacesErrorNoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GooglePlacesErrorNoInternetConnectionCopyWithImpl<$Res>
    extends _$GooglePlacesErrorCopyWithImpl<$Res,
        _$_GooglePlacesErrorNoInternetConnection>
    implements _$$_GooglePlacesErrorNoInternetConnectionCopyWith<$Res> {
  __$$_GooglePlacesErrorNoInternetConnectionCopyWithImpl(
      _$_GooglePlacesErrorNoInternetConnection _value,
      $Res Function(_$_GooglePlacesErrorNoInternetConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GooglePlacesErrorNoInternetConnection
    implements _GooglePlacesErrorNoInternetConnection {
  const _$_GooglePlacesErrorNoInternetConnection();

  @override
  String toString() {
    return 'GooglePlacesError.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GooglePlacesErrorNoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
    required TResult Function(String? message) unknownError,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
    TResult? Function(String? message)? unknownError,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    TResult Function(String? message)? unknownError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GooglePlacesErrorNoInternetConnection value)
        noInternetConnection,
    required TResult Function(_GooglePlacesErrorRequestDenied value)
        requestDenied,
    required TResult Function(_GooglePlacesErrorRequestCancelled value)
        requestCancelled,
    required TResult Function(_GooglePlacesErrorUnknownError value)
        unknownError,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult? Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult? Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult? Function(_GooglePlacesErrorUnknownError value)? unknownError,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult Function(_GooglePlacesErrorUnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _GooglePlacesErrorNoInternetConnection
    implements GooglePlacesError {
  const factory _GooglePlacesErrorNoInternetConnection() =
      _$_GooglePlacesErrorNoInternetConnection;
}

/// @nodoc
abstract class _$$_GooglePlacesErrorRequestDeniedCopyWith<$Res> {
  factory _$$_GooglePlacesErrorRequestDeniedCopyWith(
          _$_GooglePlacesErrorRequestDenied value,
          $Res Function(_$_GooglePlacesErrorRequestDenied) then) =
      __$$_GooglePlacesErrorRequestDeniedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_GooglePlacesErrorRequestDeniedCopyWithImpl<$Res>
    extends _$GooglePlacesErrorCopyWithImpl<$Res,
        _$_GooglePlacesErrorRequestDenied>
    implements _$$_GooglePlacesErrorRequestDeniedCopyWith<$Res> {
  __$$_GooglePlacesErrorRequestDeniedCopyWithImpl(
      _$_GooglePlacesErrorRequestDenied _value,
      $Res Function(_$_GooglePlacesErrorRequestDenied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_GooglePlacesErrorRequestDenied(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GooglePlacesErrorRequestDenied
    implements _GooglePlacesErrorRequestDenied {
  const _$_GooglePlacesErrorRequestDenied({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GooglePlacesError.requestDenied(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GooglePlacesErrorRequestDenied &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GooglePlacesErrorRequestDeniedCopyWith<_$_GooglePlacesErrorRequestDenied>
      get copyWith => __$$_GooglePlacesErrorRequestDeniedCopyWithImpl<
          _$_GooglePlacesErrorRequestDenied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
    required TResult Function(String? message) unknownError,
  }) {
    return requestDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
    TResult? Function(String? message)? unknownError,
  }) {
    return requestDenied?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    TResult Function(String? message)? unknownError,
    required TResult orElse(),
  }) {
    if (requestDenied != null) {
      return requestDenied(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GooglePlacesErrorNoInternetConnection value)
        noInternetConnection,
    required TResult Function(_GooglePlacesErrorRequestDenied value)
        requestDenied,
    required TResult Function(_GooglePlacesErrorRequestCancelled value)
        requestCancelled,
    required TResult Function(_GooglePlacesErrorUnknownError value)
        unknownError,
  }) {
    return requestDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult? Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult? Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult? Function(_GooglePlacesErrorUnknownError value)? unknownError,
  }) {
    return requestDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult Function(_GooglePlacesErrorUnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (requestDenied != null) {
      return requestDenied(this);
    }
    return orElse();
  }
}

abstract class _GooglePlacesErrorRequestDenied implements GooglePlacesError {
  const factory _GooglePlacesErrorRequestDenied(
      {required final String message}) = _$_GooglePlacesErrorRequestDenied;

  String get message;
  @JsonKey(ignore: true)
  _$$_GooglePlacesErrorRequestDeniedCopyWith<_$_GooglePlacesErrorRequestDenied>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GooglePlacesErrorRequestCancelledCopyWith<$Res> {
  factory _$$_GooglePlacesErrorRequestCancelledCopyWith(
          _$_GooglePlacesErrorRequestCancelled value,
          $Res Function(_$_GooglePlacesErrorRequestCancelled) then) =
      __$$_GooglePlacesErrorRequestCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GooglePlacesErrorRequestCancelledCopyWithImpl<$Res>
    extends _$GooglePlacesErrorCopyWithImpl<$Res,
        _$_GooglePlacesErrorRequestCancelled>
    implements _$$_GooglePlacesErrorRequestCancelledCopyWith<$Res> {
  __$$_GooglePlacesErrorRequestCancelledCopyWithImpl(
      _$_GooglePlacesErrorRequestCancelled _value,
      $Res Function(_$_GooglePlacesErrorRequestCancelled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GooglePlacesErrorRequestCancelled
    implements _GooglePlacesErrorRequestCancelled {
  const _$_GooglePlacesErrorRequestCancelled();

  @override
  String toString() {
    return 'GooglePlacesError.requestCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GooglePlacesErrorRequestCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
    required TResult Function(String? message) unknownError,
  }) {
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
    TResult? Function(String? message)? unknownError,
  }) {
    return requestCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    TResult Function(String? message)? unknownError,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GooglePlacesErrorNoInternetConnection value)
        noInternetConnection,
    required TResult Function(_GooglePlacesErrorRequestDenied value)
        requestDenied,
    required TResult Function(_GooglePlacesErrorRequestCancelled value)
        requestCancelled,
    required TResult Function(_GooglePlacesErrorUnknownError value)
        unknownError,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult? Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult? Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult? Function(_GooglePlacesErrorUnknownError value)? unknownError,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult Function(_GooglePlacesErrorUnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class _GooglePlacesErrorRequestCancelled implements GooglePlacesError {
  const factory _GooglePlacesErrorRequestCancelled() =
      _$_GooglePlacesErrorRequestCancelled;
}

/// @nodoc
abstract class _$$_GooglePlacesErrorUnknownErrorCopyWith<$Res> {
  factory _$$_GooglePlacesErrorUnknownErrorCopyWith(
          _$_GooglePlacesErrorUnknownError value,
          $Res Function(_$_GooglePlacesErrorUnknownError) then) =
      __$$_GooglePlacesErrorUnknownErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_GooglePlacesErrorUnknownErrorCopyWithImpl<$Res>
    extends _$GooglePlacesErrorCopyWithImpl<$Res,
        _$_GooglePlacesErrorUnknownError>
    implements _$$_GooglePlacesErrorUnknownErrorCopyWith<$Res> {
  __$$_GooglePlacesErrorUnknownErrorCopyWithImpl(
      _$_GooglePlacesErrorUnknownError _value,
      $Res Function(_$_GooglePlacesErrorUnknownError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_GooglePlacesErrorUnknownError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GooglePlacesErrorUnknownError
    implements _GooglePlacesErrorUnknownError {
  const _$_GooglePlacesErrorUnknownError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'GooglePlacesError.unknownError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GooglePlacesErrorUnknownError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GooglePlacesErrorUnknownErrorCopyWith<_$_GooglePlacesErrorUnknownError>
      get copyWith => __$$_GooglePlacesErrorUnknownErrorCopyWithImpl<
          _$_GooglePlacesErrorUnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function(String message) requestDenied,
    required TResult Function() requestCancelled,
    required TResult Function(String? message) unknownError,
  }) {
    return unknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function(String message)? requestDenied,
    TResult? Function()? requestCancelled,
    TResult? Function(String? message)? unknownError,
  }) {
    return unknownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function(String message)? requestDenied,
    TResult Function()? requestCancelled,
    TResult Function(String? message)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GooglePlacesErrorNoInternetConnection value)
        noInternetConnection,
    required TResult Function(_GooglePlacesErrorRequestDenied value)
        requestDenied,
    required TResult Function(_GooglePlacesErrorRequestCancelled value)
        requestCancelled,
    required TResult Function(_GooglePlacesErrorUnknownError value)
        unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult? Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult? Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult? Function(_GooglePlacesErrorUnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GooglePlacesErrorNoInternetConnection value)?
        noInternetConnection,
    TResult Function(_GooglePlacesErrorRequestDenied value)? requestDenied,
    TResult Function(_GooglePlacesErrorRequestCancelled value)?
        requestCancelled,
    TResult Function(_GooglePlacesErrorUnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _GooglePlacesErrorUnknownError implements GooglePlacesError {
  const factory _GooglePlacesErrorUnknownError({final String? message}) =
      _$_GooglePlacesErrorUnknownError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_GooglePlacesErrorUnknownErrorCopyWith<_$_GooglePlacesErrorUnknownError>
      get copyWith => throw _privateConstructorUsedError;
}
