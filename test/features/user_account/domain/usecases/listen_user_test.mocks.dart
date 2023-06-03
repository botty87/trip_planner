// Mocks generated by Mockito 5.4.1 from annotations
// in trip_planner/test/features/user_account/domain/usecases/listen_user_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/core/error/failures.dart' as _i5;
import 'package:trip_planner/features/user_account/domain/entities/user.dart'
    as _i6;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i3;

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

/// A class which mocks [UserRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepository extends _i1.Mock implements _i3.UserRepository {
  @override
  _i4.Stream<_i2.Either<_i5.Failure, _i6.User>> listenUser() =>
      (super.noSuchMethod(
        Invocation.method(
          #listenUser,
          [],
        ),
        returnValue: _i4.Stream<_i2.Either<_i5.Failure, _i6.User>>.empty(),
        returnValueForMissingStub:
            _i4.Stream<_i2.Either<_i5.Failure, _i6.User>>.empty(),
      ) as _i4.Stream<_i2.Either<_i5.Failure, _i6.User>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, void>> saveUser(_i6.User? user) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveUser,
          [user],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, void>>.value(
            _FakeEither_0<_i5.Failure, void>(
          this,
          Invocation.method(
            #saveUser,
            [user],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, void>>.value(
                _FakeEither_0<_i5.Failure, void>(
          this,
          Invocation.method(
            #saveUser,
            [user],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, void>>);
}
