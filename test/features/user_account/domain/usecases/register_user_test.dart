import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failure.dart';

import '../repositories/mock_user_repository.mocks.dart';

void main() {
  late RegisterUser usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = RegisterUser(mockUserRepository);
  });

  test('should register user from the repository', () async {
    // arrange
    when(mockUserRepository.registerUser(email: '', password: '', name: '')).thenAnswer((_) async {
      return Right(null);
    });

    // act
    final result = await usecase(RegisterUserParams(email: '', password: '', name: ''));

    // assert
    expect(result, right(null));
    verify(mockUserRepository.registerUser(email: '', password: '', name: ''));
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return a failure when there is an error', () async {
    // arrange
    when(mockUserRepository.registerUser(email: '', password: '', name: '')).thenAnswer((_) async {
      return Left(UserFailure());
    });

    // act
    final result = await usecase(RegisterUserParams(email: '', password: '', name: ''));

    // assert
    expect(result, left(UserFailure()));
    verify(mockUserRepository.registerUser(email: '', password: '', name: ''));
    verifyNoMoreInteractions(mockUserRepository);
  });

}