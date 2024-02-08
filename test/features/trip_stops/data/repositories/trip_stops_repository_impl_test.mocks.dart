// Mocks generated by Mockito 5.4.2 from annotations
// in trip_planner/test/features/trip_stops/data/repositories/trip_stops_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:google_maps_flutter/google_maps_flutter.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i2;
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart'
    as _i5;

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

/// A class which mocks [TripStopsDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTripStopsDataSource extends _i1.Mock
    implements _i2.TripStopsDataSource {
  @override
  _i3.Future<void> addTripStop({
    required String? tripId,
    required String? dayTripId,
    required String? name,
    String? description,
    required _i4.LatLng? location,
    required int? duration,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #addTripStop,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
            #name: name,
            #description: description,
            #location: location,
            #duration: duration,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Stream<List<_i5.TripStop>> listenTripStops({
    required String? tripId,
    required String? dayTripId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #listenTripStops,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
          },
        ),
        returnValue: _i3.Stream<List<_i5.TripStop>>.empty(),
        returnValueForMissingStub: _i3.Stream<List<_i5.TripStop>>.empty(),
      ) as _i3.Stream<List<_i5.TripStop>>);

  @override
  _i3.Future<void> updateTripStopsIndexes({
    required String? tripId,
    required String? dayTripId,
    required List<_i5.TripStop>? tripStops,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTripStopsIndexes,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
            #tripStops: tripStops,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> updateTravelTime({
    required String? tripId,
    required String? dayTripId,
    required String? tripStopId,
    required int? travelTime,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTravelTime,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
            #tripStopId: tripStopId,
            #travelTime: travelTime,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> updateTripStopDone({
    required String? tripId,
    required String? dayTripId,
    required String? tripStopId,
    required bool? isDone,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTripStopDone,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
            #tripStopId: tripStopId,
            #isDone: isDone,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> updateTripStopNote({
    required String? tripId,
    required String? dayTripId,
    required String? tripStopId,
    required String? note,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTripStopNote,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
            #tripStopId: tripStopId,
            #note: note,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> deleteTripStop({
    required String? tripId,
    required String? dayTripId,
    required String? tripStopId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteTripStop,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
            #tripStopId: tripStopId,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> updateTripStop({
    required String? tripId,
    required String? dayTripId,
    required String? tripStopId,
    required String? name,
    required String? description,
    required int? duration,
    required _i4.LatLng? location,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTripStop,
          [],
          {
            #tripId: tripId,
            #dayTripId: dayTripId,
            #tripStopId: tripStopId,
            #name: name,
            #description: description,
            #duration: duration,
            #location: location,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}
