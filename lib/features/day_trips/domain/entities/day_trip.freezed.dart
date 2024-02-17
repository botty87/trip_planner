// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayTrip _$DayTripFromJson(Map<String, dynamic> json) {
  return _DayTrip.fromJson(json);
}

/// @nodoc
mixin _$DayTrip {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
  TimeOfDay get startTime => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<TripStopsDirections>? get tripStopsDirections =>
      throw _privateConstructorUsedError;
  bool get tripStopsDirectionsUpToDate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
  TravelMode get travelMode => throw _privateConstructorUsedError;
  bool get showDirections => throw _privateConstructorUsedError;
  bool get useDifferentDirectionsColors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayTripCopyWith<DayTrip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTripCopyWith<$Res> {
  factory $DayTripCopyWith(DayTrip value, $Res Function(DayTrip) then) =
      _$DayTripCopyWithImpl<$Res, DayTrip>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      int index,
      String? description,
      @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
      TimeOfDay startTime,
      @JsonKey(includeIfNull: false)
      List<TripStopsDirections>? tripStopsDirections,
      bool tripStopsDirectionsUpToDate,
      @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
      TravelMode travelMode,
      bool showDirections,
      bool useDifferentDirectionsColors});
}

/// @nodoc
class _$DayTripCopyWithImpl<$Res, $Val extends DayTrip>
    implements $DayTripCopyWith<$Res> {
  _$DayTripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? description = freezed,
    Object? startTime = null,
    Object? tripStopsDirections = freezed,
    Object? tripStopsDirectionsUpToDate = null,
    Object? travelMode = null,
    Object? showDirections = null,
    Object? useDifferentDirectionsColors = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      tripStopsDirections: freezed == tripStopsDirections
          ? _value.tripStopsDirections
          : tripStopsDirections // ignore: cast_nullable_to_non_nullable
              as List<TripStopsDirections>?,
      tripStopsDirectionsUpToDate: null == tripStopsDirectionsUpToDate
          ? _value.tripStopsDirectionsUpToDate
          : tripStopsDirectionsUpToDate // ignore: cast_nullable_to_non_nullable
              as bool,
      travelMode: null == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as TravelMode,
      showDirections: null == showDirections
          ? _value.showDirections
          : showDirections // ignore: cast_nullable_to_non_nullable
              as bool,
      useDifferentDirectionsColors: null == useDifferentDirectionsColors
          ? _value.useDifferentDirectionsColors
          : useDifferentDirectionsColors // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayTripImplCopyWith<$Res> implements $DayTripCopyWith<$Res> {
  factory _$$DayTripImplCopyWith(
          _$DayTripImpl value, $Res Function(_$DayTripImpl) then) =
      __$$DayTripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      int index,
      String? description,
      @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
      TimeOfDay startTime,
      @JsonKey(includeIfNull: false)
      List<TripStopsDirections>? tripStopsDirections,
      bool tripStopsDirectionsUpToDate,
      @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
      TravelMode travelMode,
      bool showDirections,
      bool useDifferentDirectionsColors});
}

/// @nodoc
class __$$DayTripImplCopyWithImpl<$Res>
    extends _$DayTripCopyWithImpl<$Res, _$DayTripImpl>
    implements _$$DayTripImplCopyWith<$Res> {
  __$$DayTripImplCopyWithImpl(
      _$DayTripImpl _value, $Res Function(_$DayTripImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? description = freezed,
    Object? startTime = null,
    Object? tripStopsDirections = freezed,
    Object? tripStopsDirectionsUpToDate = null,
    Object? travelMode = null,
    Object? showDirections = null,
    Object? useDifferentDirectionsColors = null,
  }) {
    return _then(_$DayTripImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      tripStopsDirections: freezed == tripStopsDirections
          ? _value._tripStopsDirections
          : tripStopsDirections // ignore: cast_nullable_to_non_nullable
              as List<TripStopsDirections>?,
      tripStopsDirectionsUpToDate: null == tripStopsDirectionsUpToDate
          ? _value.tripStopsDirectionsUpToDate
          : tripStopsDirectionsUpToDate // ignore: cast_nullable_to_non_nullable
              as bool,
      travelMode: null == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as TravelMode,
      showDirections: null == showDirections
          ? _value.showDirections
          : showDirections // ignore: cast_nullable_to_non_nullable
              as bool,
      useDifferentDirectionsColors: null == useDifferentDirectionsColors
          ? _value.useDifferentDirectionsColors
          : useDifferentDirectionsColors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayTripImpl implements _DayTrip {
  const _$DayTripImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id = '',
      required this.index,
      this.description,
      @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
      this.startTime = const TimeOfDay(hour: 8, minute: 0),
      @JsonKey(includeIfNull: false)
      final List<TripStopsDirections>? tripStopsDirections,
      this.tripStopsDirectionsUpToDate = false,
      @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
      this.travelMode = TravelMode.driving,
      this.showDirections = true,
      this.useDifferentDirectionsColors = true})
      : _tripStopsDirections = tripStopsDirections;

  factory _$DayTripImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayTripImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String id;
  @override
  final int index;
  @override
  final String? description;
  @override
  @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
  final TimeOfDay startTime;
  final List<TripStopsDirections>? _tripStopsDirections;
  @override
  @JsonKey(includeIfNull: false)
  List<TripStopsDirections>? get tripStopsDirections {
    final value = _tripStopsDirections;
    if (value == null) return null;
    if (_tripStopsDirections is EqualUnmodifiableListView)
      return _tripStopsDirections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool tripStopsDirectionsUpToDate;
  @override
  @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
  final TravelMode travelMode;
  @override
  @JsonKey()
  final bool showDirections;
  @override
  @JsonKey()
  final bool useDifferentDirectionsColors;

  @override
  String toString() {
    return 'DayTrip(id: $id, index: $index, description: $description, startTime: $startTime, tripStopsDirections: $tripStopsDirections, tripStopsDirectionsUpToDate: $tripStopsDirectionsUpToDate, travelMode: $travelMode, showDirections: $showDirections, useDifferentDirectionsColors: $useDifferentDirectionsColors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            const DeepCollectionEquality()
                .equals(other._tripStopsDirections, _tripStopsDirections) &&
            (identical(other.tripStopsDirectionsUpToDate,
                    tripStopsDirectionsUpToDate) ||
                other.tripStopsDirectionsUpToDate ==
                    tripStopsDirectionsUpToDate) &&
            (identical(other.travelMode, travelMode) ||
                other.travelMode == travelMode) &&
            (identical(other.showDirections, showDirections) ||
                other.showDirections == showDirections) &&
            (identical(other.useDifferentDirectionsColors,
                    useDifferentDirectionsColors) ||
                other.useDifferentDirectionsColors ==
                    useDifferentDirectionsColors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      index,
      description,
      startTime,
      const DeepCollectionEquality().hash(_tripStopsDirections),
      tripStopsDirectionsUpToDate,
      travelMode,
      showDirections,
      useDifferentDirectionsColors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTripImplCopyWith<_$DayTripImpl> get copyWith =>
      __$$DayTripImplCopyWithImpl<_$DayTripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayTripImplToJson(
      this,
    );
  }
}

abstract class _DayTrip implements DayTrip {
  const factory _DayTrip(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String id,
      required final int index,
      final String? description,
      @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
      final TimeOfDay startTime,
      @JsonKey(includeIfNull: false)
      final List<TripStopsDirections>? tripStopsDirections,
      final bool tripStopsDirectionsUpToDate,
      @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
      final TravelMode travelMode,
      final bool showDirections,
      final bool useDifferentDirectionsColors}) = _$DayTripImpl;

  factory _DayTrip.fromJson(Map<String, dynamic> json) = _$DayTripImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id;
  @override
  int get index;
  @override
  String? get description;
  @override
  @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
  TimeOfDay get startTime;
  @override
  @JsonKey(includeIfNull: false)
  List<TripStopsDirections>? get tripStopsDirections;
  @override
  bool get tripStopsDirectionsUpToDate;
  @override
  @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
  TravelMode get travelMode;
  @override
  bool get showDirections;
  @override
  bool get useDifferentDirectionsColors;
  @override
  @JsonKey(ignore: true)
  _$$DayTripImplCopyWith<_$DayTripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
