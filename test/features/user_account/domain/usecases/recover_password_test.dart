import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import '../repositories/mock_user_repository.mocks.dart';

void main() {
  late RecoverPassword usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = RecoverPassword(mockUserRepository);
  });

  test('should recover password from the repository', () async {
    // arrange
    when(mockUserRepository.recoverPassword('')).thenAnswer((_) async {
      return right(null);
    });

    // act
    final result = await usecase(const RecoverPasswordParams(email: ''));

    // assert
    expect(result, right(null));
    verify(mockUserRepository.recoverPassword(''));
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return a failure when there is an error', () async {
    // arrange
    when(mockUserRepository.recoverPassword('')).thenAnswer((_) async {
      return left(const UserFailures.unknownError());
    });

    // act
    final result = await usecase(const RecoverPasswordParams(email: ''));

    // assert
    expect(result, left(const UserFailures.unknownError()));
    verify(mockUserRepository.recoverPassword(''));
    verifyNoMoreInteractions(mockUserRepository);
  });
}
