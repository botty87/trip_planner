// Mocks generated by Mockito 5.4.2 from annotations
// in trip_planner/test/features/google_places/data/repositories/google_places_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/google_places/data/datasources/google_places_data_source.dart'
    as _i2;
import 'package:trip_planner/features/google_places/domain/entities/suggestion.dart'
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

/// A class which mocks [GooglePlacesDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockGooglePlacesDataSource extends _i1.Mock
    implements _i2.GooglePlacesDataSource {
  @override
  _i3.Future<List<_i4.Suggestion>> fetchSuggestions({
    required String? query,
    required String? token,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchSuggestions,
          [],
          {
            #query: query,
            #token: token,
          },
        ),
        returnValue: _i3.Future<List<_i4.Suggestion>>.value(<_i4.Suggestion>[]),
        returnValueForMissingStub:
            _i3.Future<List<_i4.Suggestion>>.value(<_i4.Suggestion>[]),
      ) as _i3.Future<List<_i4.Suggestion>>);
}