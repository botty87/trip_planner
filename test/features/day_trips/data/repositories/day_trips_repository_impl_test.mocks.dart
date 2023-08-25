// Mocks generated by Mockito 5.4.2 from annotations
// in trip_planner/test/features/day_trips/data/repositories/day_trips_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i2;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [DayTripsDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockDayTripsDataSource extends _i1.Mock
    implements _i2.DayTripsDataSource {
  @override
  _i3.Future<void> addDayTrip({
    required String? tripId,
    required _i4.DayTrip? dayTrip,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #addDayTrip,
          [],
          {
            #tripId: tripId,
            #dayTrip: dayTrip,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Stream<List<_i4.DayTrip>> listenDayTrips(String? tripId) =>
      (super.noSuchMethod(
        Invocation.method(
          #listenDayTrips,
          [tripId],
        ),
        returnValue: _i3.Stream<List<_i4.DayTrip>>.empty(),
        returnValueForMissingStub: _i3.Stream<List<_i4.DayTrip>>.empty(),
      ) as _i3.Stream<List<_i4.DayTrip>>);
  @override
  _i3.Future<void> updateDayTripsIndexes({
    required String? tripId,
    required List<_i4.DayTrip>? dayTrips,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateDayTripsIndexes,
          [],
          {
            #tripId: tripId,
            #dayTrips: dayTrips,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> updateDayTrip({
    required String? id,
    required String? tripId,
    required String? description,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateDayTrip,
          [],
          {
            #id: id,
            #tripId: tripId,
            #description: description,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteDayTrip({
    required String? tripId,
    required String? dayTripId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteDayTrip,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}