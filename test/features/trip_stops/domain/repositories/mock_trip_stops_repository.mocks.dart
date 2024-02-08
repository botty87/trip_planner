// Mocks generated by Mockito 5.4.2 from annotations
// in trip_planner/test/features/trip_stops/domain/repositories/mock_trip_stops_repository.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart'
    as _i7;
import 'package:trip_planner/features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i3;
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart'
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

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TripStopsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTripStopsRepository extends _i1.Mock
    implements _i3.TripStopsRepository {
  @override
  _i4.Future<_i2.Either<_i5.TripStopsFailure, void>> addTripStop({
    required String? tripId,
    required String? dayTripId,
    required String? name,
    String? description,
    required _i6.LatLng? location,
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
        returnValue: _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
            _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
                _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
      ) as _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>);

  @override
  _i4.Stream<_i2.Either<_i5.TripStopsFailure, List<_i7.TripStop>>>
      listenTripStops({
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
            returnValue: _i4.Stream<
                _i2.Either<_i5.TripStopsFailure, List<_i7.TripStop>>>.empty(),
            returnValueForMissingStub: _i4.Stream<
                _i2.Either<_i5.TripStopsFailure, List<_i7.TripStop>>>.empty(),
          ) as _i4
              .Stream<_i2.Either<_i5.TripStopsFailure, List<_i7.TripStop>>>);

  @override
  _i4.Future<_i2.Either<_i5.TripStopsFailure, void>> updateTripStopsIndexes({
    required String? tripId,
    required String? dayTripId,
    required List<_i7.TripStop>? tripStops,
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
        returnValue: _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
            _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
          Invocation.method(
            #updateTripStopsIndexes,
            [],
            {
              #tripId: tripId,
              #dayTripId: dayTripId,
              #tripStops: tripStops,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
                _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
          Invocation.method(
            #updateTripStopsIndexes,
            [],
            {
              #tripId: tripId,
              #dayTripId: dayTripId,
              #tripStops: tripStops,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>);

  @override
  _i4.Future<_i2.Either<_i5.TripStopsFailure, void>> updateTravelTime({
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
        returnValue: _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
            _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
                _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
      ) as _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>);

  @override
  _i4.Future<_i2.Either<_i5.TripStopsFailure, void>> updateTripStopDone({
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
        returnValue: _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
            _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
                _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
      ) as _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>);

  @override
  _i4.Future<_i2.Either<_i5.TripStopsFailure, void>> updateTripStopNote({
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
        returnValue: _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
            _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
                _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
      ) as _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>);

  @override
  _i4.Future<_i2.Either<_i5.TripStopsFailure, void>> deleteTripStop({
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
        returnValue: _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
            _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
          Invocation.method(
            #deleteTripStop,
            [],
            {
              #tripId: tripId,
              #dayTripId: dayTripId,
              #tripStopId: tripStopId,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
                _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
          Invocation.method(
            #deleteTripStop,
            [],
            {
              #tripId: tripId,
              #dayTripId: dayTripId,
              #tripStopId: tripStopId,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>);

  @override
  _i4.Future<_i2.Either<_i5.TripStopsFailure, void>> updateTripStop({
    required String? tripId,
    required String? dayTripId,
    required String? tripStopId,
    required String? name,
    required String? description,
    required int? duration,
    required _i6.LatLng? location,
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
        returnValue: _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
            _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>.value(
                _FakeEither_0<_i5.TripStopsFailure, void>(
          this,
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
        )),
      ) as _i4.Future<_i2.Either<_i5.TripStopsFailure, void>>);
}
