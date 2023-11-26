import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import '../repositories/mock_user_repository.mocks.dart';

void main() {
  late LoginUser usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = LoginUser(mockUserRepository);
  });

  test('should login user from the repository', () async {
    // arrange
    when(mockUserRepository.loginUser(email: '', password: '')).thenAnswer((_) async {
      return const Right(null);
    });

    // act
    final result = await usecase(const LoginUserParams(email: '', password: ''));

    // assert
    expect(result, const Right(null));
    verify(mockUserRepository.loginUser(email: '', password: ''));
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return a failure when there is an error', () async {
    // arrange
    when(mockUserRepository.loginUser(email: '', password: '')).thenAnswer((_) async {
      return left(const UserFailures.unknownError());
    });

    // act
    final result = await usecase(const LoginUserParams(email: '', password: ''));

    // assert
    expect(result, left(const UserFailures.unknownError()));
    verify(mockUserRepository.loginUser(email: '', password: ''));
    verifyNoMoreInteractions(mockUserRepository);
  });
}
