// Mocks generated by Mockito 5.4.1 from annotations
// in trip_planner/test/features/trips/presentation/cubit/trips_cubit_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:dartz/dartz.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i6;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i2;
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

/// A class which mocks [ListenTrips].
///
/// See the documentation for Mockito's code generation for more information.
class MockListenTrips extends _i1.Mock implements _i2.ListenTrips {
  @override
  _i3.Stream<_i4.Either<_i5.TripsFailure, List<_i6.Trip>>> call(
          _i2.ListenTripsParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i3.Stream<_i4.Either<_i5.TripsFailure, List<_i6.Trip>>>.empty(),
        returnValueForMissingStub:
            _i3.Stream<_i4.Either<_i5.TripsFailure, List<_i6.Trip>>>.empty(),
      ) as _i3.Stream<_i4.Either<_i5.TripsFailure, List<_i6.Trip>>>);
}
