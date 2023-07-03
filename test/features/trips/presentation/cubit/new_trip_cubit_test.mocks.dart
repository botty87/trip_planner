// Mocks generated by Mockito 5.4.1 from annotations
// in trip_planner/test/features/trips/presentation/cubit/new_trip_cubit_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i2;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i4;
import 'package:trip_planner/features/trips/errors/trips_failure.dart' as _i6;

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

class _FakeTripsRepository_0 extends _i1.SmartFake
    implements _i2.TripsRepository {
  _FakeTripsRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CreateTrip].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateTrip extends _i1.Mock implements _i4.CreateTrip {
  @override
  _i2.TripsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TripsRepository);
  @override
  _i5.Future<_i3.Either<_i6.TripsFailure, void>> call(
          _i4.CreateTripParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.TripsFailure, void>>.value(
            _FakeEither_1<_i6.TripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.TripsFailure, void>>.value(
                _FakeEither_1<_i6.TripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.TripsFailure, void>>);
}
