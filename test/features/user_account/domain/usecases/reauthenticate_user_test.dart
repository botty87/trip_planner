import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/user_account/domain/usecases/reauthenticate_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import '../repositories/mock_user_repository.mocks.dart';

void main() {
  late ReauthenticateUser usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = ReauthenticateUser(mockUserRepository);
  });

  const tEmail = 'test@test.com';
  const tPassword = 'testPassword';

  test('should return right(null) when reauthenticateUser', () async {
    when(mockUserRepository.reauthenticateUser(
            email: anyNamed('email'), password: anyNamed('password')))
        .thenAnswer((_) async => right(null));

    // act
    final result =
        await usecase(const ReauthenticateUserParams(email: tEmail, password: tPassword));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(UserFailures()) when reauthenticateUser throws', () async {
    when(mockUserRepository.reauthenticateUser(
            email: anyNamed('email'), password: anyNamed('password')))
        .thenAnswer((_) async => left(const UserFailures.unknownError()));

    // act
    final result =
        await usecase(const ReauthenticateUserParams(email: tEmail, password: tPassword));
    // assert
    expect(result, equals(left(const UserFailures.unknownError())));
  });
}
