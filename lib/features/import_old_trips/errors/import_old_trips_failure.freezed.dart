// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_old_trips_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImportOldTripsFailure {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImportOldTripsFailureCopyWith<ImportOldTripsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportOldTripsFailureCopyWith<$Res> {
  factory $ImportOldTripsFailureCopyWith(ImportOldTripsFailure value,
          $Res Function(ImportOldTripsFailure) then) =
      _$ImportOldTripsFailureCopyWithImpl<$Res, ImportOldTripsFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ImportOldTripsFailureCopyWithImpl<$Res,
        $Val extends ImportOldTripsFailure>
    implements $ImportOldTripsFailureCopyWith<$Res> {
  _$ImportOldTripsFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImportOldTripsFailureImplCopyWith<$Res>
    implements $ImportOldTripsFailureCopyWith<$Res> {
  factory _$$ImportOldTripsFailureImplCopyWith(
          _$ImportOldTripsFailureImpl value,
          $Res Function(_$ImportOldTripsFailureImpl) then) =
      __$$ImportOldTripsFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ImportOldTripsFailureImplCopyWithImpl<$Res>
    extends _$ImportOldTripsFailureCopyWithImpl<$Res,
        _$ImportOldTripsFailureImpl>
    implements _$$ImportOldTripsFailureImplCopyWith<$Res> {
  __$$ImportOldTripsFailureImplCopyWithImpl(_$ImportOldTripsFailureImpl _value,
      $Res Function(_$ImportOldTripsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ImportOldTripsFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImportOldTripsFailureImpl implements _ImportOldTripsFailure {
  const _$ImportOldTripsFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ImportOldTripsFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportOldTripsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportOldTripsFailureImplCopyWith<_$ImportOldTripsFailureImpl>
      get copyWith => __$$ImportOldTripsFailureImplCopyWithImpl<
          _$ImportOldTripsFailureImpl>(this, _$identity);
}

abstract class _ImportOldTripsFailure implements ImportOldTripsFailure {
  const factory _ImportOldTripsFailure({final String? message}) =
      _$ImportOldTripsFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ImportOldTripsFailureImplCopyWith<_$ImportOldTripsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
