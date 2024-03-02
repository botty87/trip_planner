// Mocks generated by Mockito 5.4.4 from annotations
// in trip_planner/test/features/user_account/data/repositories/user_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/settings/domain/entities/settings.dart' as _i5;
import 'package:trip_planner/features/tutorials/domain/entities/tutorials_data.dart' as _i6;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart' as _i2;
import 'package:trip_planner/features/user_account/domain/entities/user.dart' as _i4;

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

/// A class which mocks [UserDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserDataSource extends _i1.Mock implements _i2.UserDataSource {
  @override
  _i3.Stream<_i4.User?> get user => (super.noSuchMethod(
        Invocation.getter(#user),
        returnValue: _i3.Stream<_i4.User?>.empty(),
        returnValueForMissingStub: _i3.Stream<_i4.User?>.empty(),
      ) as _i3.Stream<_i4.User?>);

  @override
  dynamic registerUser({
    required String? email,
    required String? password,
    required String? name,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerUser,
          [],
          {
            #email: email,
            #password: password,
            #name: name,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  dynamic loginUser({
    required String? email,
    required String? password,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #loginUser,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  dynamic recoverPassword(String? email) => super.noSuchMethod(
        Invocation.method(
          #recoverPassword,
          [email],
        ),
        returnValueForMissingStub: null,
      );

  @override
  dynamic reauthenticateUser({
    required String? email,
    required String? password,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #reauthenticateUser,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  dynamic saveSettings(_i5.Settings? settings) => super.noSuchMethod(
        Invocation.method(
          #saveSettings,
          [settings],
        ),
        returnValueForMissingStub: null,
      );

  @override
  dynamic saveTutorialsData(_i6.TutorialsData? tutorialsData) => super.noSuchMethod(
        Invocation.method(
          #saveTutorialsData,
          [tutorialsData],
        ),
        returnValueForMissingStub: null,
      );
}
