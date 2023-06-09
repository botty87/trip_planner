import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failure.dart';

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
    when(mockUserRepository.loginUser()).thenAnswer((_) async {
      return Right(null);
    });

    // act
    final result = await usecase(LoginUserParams('', ''));

    // assert
    expect(result, Right(null));
    verify(mockUserRepository.loginUser());
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return a failure when there is an error', () async {
    // arrange
    when(mockUserRepository.loginUser()).thenAnswer((_) async {
      return left(UserFailure());
    });

    // act
    final result = await usecase(LoginUserParams('', ''));

    // assert
    expect(result, left(UserFailure()));
    verify(mockUserRepository.loginUser());
    verifyNoMoreInteractions(mockUserRepository);
  });
}