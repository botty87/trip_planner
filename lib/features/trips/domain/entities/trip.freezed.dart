// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get startDate => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;
  List<String> get sharedWith => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      String name,
      String? description,
      String userId,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
      DateTime createdAt,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
      DateTime startDate,
      bool isPublic,
      String? languageCode,
      List<String> sharedWith});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? startDate = null,
    Object? isPublic = null,
    Object? languageCode = freezed,
    Object? sharedWith = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sharedWith: null == sharedWith
          ? _value.sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
          _$TripImpl value, $Res Function(_$TripImpl) then) =
      __$$TripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      String name,
      String? description,
      String userId,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
      DateTime createdAt,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
      DateTime startDate,
      bool isPublic,
      String? languageCode,
      List<String> sharedWith});
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? startDate = null,
    Object? isPublic = null,
    Object? languageCode = freezed,
    Object? sharedWith = null,
  }) {
    return _then(_$TripImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sharedWith: null == sharedWith
          ? _value._sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripImpl implements _Trip {
  _$TripImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id = '',
      required this.name,
      this.description,
      required this.userId,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
      required this.createdAt,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
      required this.startDate,
      this.isPublic = false,
      this.languageCode,
      final List<String> sharedWith = const []})
      : _sharedWith = sharedWith;

  factory _$TripImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String userId;
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  final DateTime createdAt;
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  final DateTime startDate;
  @override
  @JsonKey()
  final bool isPublic;
  @override
  final String? languageCode;
  final List<String> _sharedWith;
  @override
  @JsonKey()
  List<String> get sharedWith {
    if (_sharedWith is EqualUnmodifiableListView) return _sharedWith;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedWith);
  }

  @override
  String toString() {
    return 'Trip(id: $id, name: $name, description: $description, userId: $userId, createdAt: $createdAt, startDate: $startDate, isPublic: $isPublic, languageCode: $languageCode, sharedWith: $sharedWith)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            const DeepCollectionEquality()
                .equals(other._sharedWith, _sharedWith));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      userId,
      createdAt,
      startDate,
      isPublic,
      languageCode,
      const DeepCollectionEquality().hash(_sharedWith));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripImplToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  factory _Trip(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String id,
      required final String name,
      final String? description,
      required final String userId,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
      required final DateTime createdAt,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
      required final DateTime startDate,
      final bool isPublic,
      final String? languageCode,
      final List<String> sharedWith}) = _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get userId;
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get createdAt;
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: dateTimeFromTimestamp)
  DateTime get startDate;
  @override
  bool get isPublic;
  @override
  String? get languageCode;
  @override
  List<String> get sharedWith;
  @override
  @JsonKey(ignore: true)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
