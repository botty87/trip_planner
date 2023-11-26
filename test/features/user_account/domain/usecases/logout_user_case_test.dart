import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/usecases/usecase.dart';
import 'package:trip_planner/features/user_account/domain/usecases/logout_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import '../repositories/mock_user_repository.mocks.dart';

void main() {
  late LogoutUser usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = LogoutUser(mockUserRepository);
  });

  test('should logout user from the repository', () async {
    // arrange
    when(mockUserRepository.logoutUser()).thenAnswer((_) async {
      return const Right(null);
    });

    // act
    final result = await usecase(const NoParams());

    // assert
    expect(result, const Right(null));
    verify(mockUserRepository.logoutUser());
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return a failure when there is an error', () async {
    // arrange
    when(mockUserRepository.logoutUser()).thenAnswer((_) async {
      return left(const UserFailures.unknownError());
    });

    // act
    final result = await usecase(const NoParams());

    // assert
    expect(result, left(const UserFailures.unknownError()));
    verify(mockUserRepository.logoutUser());
    verifyNoMoreInteractions(mockUserRepository);
  });
}
