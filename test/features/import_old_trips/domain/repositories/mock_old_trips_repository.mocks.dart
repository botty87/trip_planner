// Mocks generated by Mockito 5.4.4 from annotations
// in trip_planner/test/features/import_old_trips/domain/repositories/mock_old_trips_repository.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:quiver/collection.dart' as _i7;
import 'package:trip_planner/features/import_old_trips/domain/entities/old_trip.dart'
    as _i6;
import 'package:trip_planner/features/import_old_trips/domain/entities/trip_stops_container.dart'
    as _i9;
import 'package:trip_planner/features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i3;
import 'package:trip_planner/features/import_old_trips/errors/import_old_trips_failure.dart'
    as _i5;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i8;

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

/// A class which mocks [OldTripsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockOldTripsRepository extends _i1.Mock
    implements _i3.OldTripsRepository {
  @override
  _i4.Future<
      _i2.Either<_i5.ImportOldTripsFailure, List<_i6.OldTrip>>> readOldTrips(
          {required String? userId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #readOldTrips,
          [],
          {#userId: userId},
        ),
        returnValue: _i4.Future<
                _i2.Either<_i5.ImportOldTripsFailure, List<_i6.OldTrip>>>.value(
            _FakeEither_0<_i5.ImportOldTripsFailure, List<_i6.OldTrip>>(
          this,
          Invocation.method(
            #readOldTrips,
            [],
            {#userId: userId},
          ),
        )),
        returnValueForMissingStub: _i4.Future<
                _i2.Either<_i5.ImportOldTripsFailure, List<_i6.OldTrip>>>.value(
            _FakeEither_0<_i5.ImportOldTripsFailure, List<_i6.OldTrip>>(
          this,
          Invocation.method(
            #readOldTrips,
            [],
            {#userId: userId},
          ),
        )),
      ) as _i4
          .Future<_i2.Either<_i5.ImportOldTripsFailure, List<_i6.OldTrip>>>);

  @override
  _i4.Future<_i2.Either<_i5.ImportOldTripsFailure, void>> importOldTrips({
    required String? userId,
    required _i7.ListMultimap<_i8.Trip, _i9.TripStopsContainer>? newTrips,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #importOldTrips,
          [],
          {
            #userId: userId,
            #newTrips: newTrips,
          },
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.ImportOldTripsFailure, void>>.value(
                _FakeEither_0<_i5.ImportOldTripsFailure, void>(
          this,
          Invocation.method(
            #importOldTrips,
            [],
            {
              #userId: userId,
              #newTrips: newTrips,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.ImportOldTripsFailure, void>>.value(
                _FakeEither_0<_i5.ImportOldTripsFailure, void>(
          this,
          Invocation.method(
            #importOldTrips,
            [],
            {
              #userId: userId,
              #newTrips: newTrips,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.ImportOldTripsFailure, void>>);
}
