// Mocks generated by Mockito 5.4.4 from annotations
// in trip_planner/test/features/user_account/domain/repositories/mock_user_repository.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/settings/domain/entities/settings.dart'
    as _i7;
import 'package:trip_planner/features/user_account/domain/entities/user.dart'
    as _i6;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i3;
import 'package:trip_planner/features/user_account/errors/user_failures.dart'
    as _i5;

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

/// A class which mocks [UserRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepository extends _i1.Mock implements _i3.UserRepository {
  @override
  _i4.Stream<_i2.Either<_i5.UserFailures, _i6.User?>> listenUser() =>
      (super.noSuchMethod(
        Invocation.method(
          #listenUser,
          [],
        ),
        returnValue:
            _i4.Stream<_i2.Either<_i5.UserFailures, _i6.User?>>.empty(),
        returnValueForMissingStub:
            _i4.Stream<_i2.Either<_i5.UserFailures, _i6.User?>>.empty(),
      ) as _i4.Stream<_i2.Either<_i5.UserFailures, _i6.User?>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> registerUser({
    required String? email,
    required String? password,
    required String? name,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #registerUser,
          [],
          {
            #email: email,
            #password: password,
            #name: name,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #registerUser,
            [],
            {
              #email: email,
              #password: password,
              #name: name,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #registerUser,
            [],
            {
              #email: email,
              #password: password,
              #name: name,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> loginUser({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #loginUser,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #loginUser,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #loginUser,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> recoverPassword(
          String? email) =>
      (super.noSuchMethod(
        Invocation.method(
          #recoverPassword,
          [email],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #recoverPassword,
            [email],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #recoverPassword,
            [email],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> logoutUser() =>
      (super.noSuchMethod(
        Invocation.method(
          #logoutUser,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #logoutUser,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #logoutUser,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> reauthenticateUser({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateUser,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #reauthenticateUser,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #reauthenticateUser,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> updateUserDetails({
    required String? name,
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateUserDetails,
          [],
          {
            #name: name,
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #updateUserDetails,
            [],
            {
              #name: name,
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #updateUserDetails,
            [],
            {
              #name: name,
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> deleteUser() =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUser,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #deleteUser,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #deleteUser,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> saveSettings(
          _i7.Settings? settings) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveSettings,
          [settings],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #saveSettings,
            [settings],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #saveSettings,
            [settings],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);

  @override
  _i4.Future<_i2.Either<_i5.UserFailures, void>> setShowWelcome(
          bool? showWelcome) =>
      (super.noSuchMethod(
        Invocation.method(
          #setShowWelcome,
          [showWelcome],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
            _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #setShowWelcome,
            [showWelcome],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.UserFailures, void>>.value(
                _FakeEither_0<_i5.UserFailures, void>(
          this,
          Invocation.method(
            #setShowWelcome,
            [showWelcome],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.UserFailures, void>>);
}
