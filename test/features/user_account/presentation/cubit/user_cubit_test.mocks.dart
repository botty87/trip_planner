// Mocks generated by Mockito 5.4.4 from annotations
// in trip_planner/test/features/user_account/presentation/cubit/user_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/core/usecases/usecase.dart' as _i8;
import 'package:trip_planner/features/user_account/domain/entities/user.dart'
    as _i7;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i2;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i3;
import 'package:trip_planner/features/user_account/errors/user_failures.dart'
    as _i6;

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

class _FakeUserRepository_0 extends _i1.SmartFake
    implements _i2.UserRepository {
  _FakeUserRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ListenUser].
///
/// See the documentation for Mockito's code generation for more information.
class MockListenUser extends _i1.Mock implements _i3.ListenUser {
  @override
  _i2.UserRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeUserRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeUserRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.UserRepository);

  @override
  _i4.Stream<_i5.Either<_i6.UserFailures, _i7.User?>> call(
          _i8.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i4.Stream<_i5.Either<_i6.UserFailures, _i7.User?>>.empty(),
        returnValueForMissingStub:
            _i4.Stream<_i5.Either<_i6.UserFailures, _i7.User?>>.empty(),
      ) as _i4.Stream<_i5.Either<_i6.UserFailures, _i7.User?>>);
}
