// Mocks generated by Mockito 5.4.4 from annotations
// in trip_planner/test/features/trips/data/repositories/trips_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart' as _i2;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i4;

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

/// A class which mocks [TripsDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTripsDataSource extends _i1.Mock implements _i2.TripsDataSource {
  @override
  _i3.Future<void> addTrip(_i4.Trip? trip) => (super.noSuchMethod(
        Invocation.method(
          #addTrip,
          [trip],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Stream<List<_i4.Trip>> listenTrips(String? userId) => (super.noSuchMethod(
        Invocation.method(
          #listenTrips,
          [userId],
        ),
        returnValue: _i3.Stream<List<_i4.Trip>>.empty(),
        returnValueForMissingStub: _i3.Stream<List<_i4.Trip>>.empty(),
      ) as _i3.Stream<List<_i4.Trip>>);

  @override
  _i3.Future<void> updateTrip(
    String? id,
    String? name,
    String? description,
    DateTime? startDate,
    bool? isPublic,
    String? languageCode,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTrip,
          [
            id,
            name,
            description,
            startDate,
            isPublic,
            languageCode,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> deleteTrip(_i4.Trip? trip) => (super.noSuchMethod(
        Invocation.method(
          #deleteTrip,
          [trip],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  dynamic deleteAllTrips(String? userId) => super.noSuchMethod(
        Invocation.method(
          #deleteAllTrips,
          [userId],
        ),
        returnValueForMissingStub: null,
      );

  @override
  dynamic createFromExistingTrip({
    required _i4.Trip? newTrip,
    required _i4.Trip? existingTrip,
    required bool? showDirections,
    required bool? useDifferentDirectionsColors,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #createFromExistingTrip,
          [],
          {
            #newTrip: newTrip,
            #existingTrip: existingTrip,
            #showDirections: showDirections,
            #useDifferentDirectionsColors: useDifferentDirectionsColors,
          },
        ),
        returnValueForMissingStub: null,
      );
}
