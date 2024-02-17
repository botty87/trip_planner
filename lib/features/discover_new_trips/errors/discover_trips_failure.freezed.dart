// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_trips_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverTripsFailure {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverTripsFailureCopyWith<DiscoverTripsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverTripsFailureCopyWith<$Res> {
  factory $DiscoverTripsFailureCopyWith(DiscoverTripsFailure value,
          $Res Function(DiscoverTripsFailure) then) =
      _$DiscoverTripsFailureCopyWithImpl<$Res, DiscoverTripsFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$DiscoverTripsFailureCopyWithImpl<$Res,
        $Val extends DiscoverTripsFailure>
    implements $DiscoverTripsFailureCopyWith<$Res> {
  _$DiscoverTripsFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$DiscoverTripsFailureImplCopyWith<$Res>
    implements $DiscoverTripsFailureCopyWith<$Res> {
  factory _$$DiscoverTripsFailureImplCopyWith(_$DiscoverTripsFailureImpl value,
          $Res Function(_$DiscoverTripsFailureImpl) then) =
      __$$DiscoverTripsFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DiscoverTripsFailureImplCopyWithImpl<$Res>
    extends _$DiscoverTripsFailureCopyWithImpl<$Res, _$DiscoverTripsFailureImpl>
    implements _$$DiscoverTripsFailureImplCopyWith<$Res> {
  __$$DiscoverTripsFailureImplCopyWithImpl(_$DiscoverTripsFailureImpl _value,
      $Res Function(_$DiscoverTripsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DiscoverTripsFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DiscoverTripsFailureImpl implements _DiscoverTripsFailure {
  const _$DiscoverTripsFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'DiscoverTripsFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverTripsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverTripsFailureImplCopyWith<_$DiscoverTripsFailureImpl>
      get copyWith =>
          __$$DiscoverTripsFailureImplCopyWithImpl<_$DiscoverTripsFailureImpl>(
              this, _$identity);
}

abstract class _DiscoverTripsFailure implements DiscoverTripsFailure {
  const factory _DiscoverTripsFailure({final String? message}) =
      _$DiscoverTripsFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverTripsFailureImplCopyWith<_$DiscoverTripsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
