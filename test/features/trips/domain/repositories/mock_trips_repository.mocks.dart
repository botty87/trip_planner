// Mocks generated by Mockito 5.4.1 from annotations
// in trip_planner/test/features/trips/domain/repositories/mock_trips_repository.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i6;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i3;
import 'package:trip_planner/features/trips/errors/trips_failure.dart' as _i5;

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

/// A class which mocks [TripsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTripsRepository extends _i1.Mock implements _i3.TripsRepository {
  @override
  _i4.Future<_i2.Either<_i5.TripsFailure, void>> addTrip(_i6.Trip? trip) =>
      (super.noSuchMethod(
        Invocation.method(
          #addTrip,
          [trip],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.TripsFailure, void>>.value(
            _FakeEither_0<_i5.TripsFailure, void>(
          this,
          Invocation.method(
            #addTrip,
            [trip],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripsFailure, void>>.value(
                _FakeEither_0<_i5.TripsFailure, void>(
          this,
          Invocation.method(
            #addTrip,
            [trip],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.TripsFailure, void>>);
  @override
  _i4.Stream<_i2.Either<_i5.TripsFailure, List<_i6.Trip>>> listenTrips(
          String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #listenTrips,
          [userId],
        ),
        returnValue:
            _i4.Stream<_i2.Either<_i5.TripsFailure, List<_i6.Trip>>>.empty(),
        returnValueForMissingStub:
            _i4.Stream<_i2.Either<_i5.TripsFailure, List<_i6.Trip>>>.empty(),
      ) as _i4.Stream<_i2.Either<_i5.TripsFailure, List<_i6.Trip>>>);
  @override
  _i4.Future<_i2.Either<_i5.TripsFailure, void>> updateTrip(
    String? id,
    String? name,
    String? description,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTrip,
          [
            id,
            name,
            description,
          ],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.TripsFailure, void>>.value(
            _FakeEither_0<_i5.TripsFailure, void>(
          this,
          Invocation.method(
            #updateTrip,
            [
              id,
              name,
              description,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.TripsFailure, void>>.value(
                _FakeEither_0<_i5.TripsFailure, void>(
          this,
          Invocation.method(
            #updateTrip,
            [
              id,
              name,
              description,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.TripsFailure, void>>);
}
