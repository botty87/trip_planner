// Mocks generated by Mockito 5.4.4 from annotations
// in trip_planner/test/features/discover_new_trips/domain/repositories/mock_discover_trips_repository.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart' as _i7;
import 'package:trip_planner/features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i3;
import 'package:trip_planner/features/discover_new_trips/errors/discover_trips_failure.dart' as _i5;
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart' as _i8;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
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

/// A class which mocks [DiscoverTripsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockDiscoverTripsRepository extends _i1.Mock implements _i3.DiscoverTripsRepository {
  @override
  _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i6.Trip>>> getPublicTrips(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPublicTrips,
          [userId],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i6.Trip>>>.value(
            _FakeEither_0<_i5.DiscoverTripsFailure, List<_i6.Trip>>(
          this,
          Invocation.method(
            #getPublicTrips,
            [userId],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i6.Trip>>>.value(
                _FakeEither_0<_i5.DiscoverTripsFailure, List<_i6.Trip>>(
          this,
          Invocation.method(
            #getPublicTrips,
            [userId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i6.Trip>>>);

  @override
  _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i7.DayTrip>>> getPublicDayTrips(
          String? tripId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPublicDayTrips,
          [tripId],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i7.DayTrip>>>.value(
            _FakeEither_0<_i5.DiscoverTripsFailure, List<_i7.DayTrip>>(
          this,
          Invocation.method(
            #getPublicDayTrips,
            [tripId],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i7.DayTrip>>>.value(
                _FakeEither_0<_i5.DiscoverTripsFailure, List<_i7.DayTrip>>(
          this,
          Invocation.method(
            #getPublicDayTrips,
            [tripId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i7.DayTrip>>>);

  @override
  _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i8.TripStop>>> getPublicTripStops(
    String? tripId,
    String? dayTripId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPublicTripStops,
          [
            tripId,
            dayTripId,
          ],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i8.TripStop>>>.value(
            _FakeEither_0<_i5.DiscoverTripsFailure, List<_i8.TripStop>>(
          this,
          Invocation.method(
            #getPublicTripStops,
            [
              tripId,
              dayTripId,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i8.TripStop>>>.value(
                _FakeEither_0<_i5.DiscoverTripsFailure, List<_i8.TripStop>>(
          this,
          Invocation.method(
            #getPublicTripStops,
            [
              tripId,
              dayTripId,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.DiscoverTripsFailure, List<_i8.TripStop>>>);
}
