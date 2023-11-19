import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/usecases/usecase.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import '../repositories/mock_user_repository.mocks.dart';

void main() {
  late ListenUser usecase;
  late MockUserRepository mockUserRepository;

  //User for the test
  final User tUser = User(
    id: '123',
    email: '',
    name: '',
  );

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = ListenUser(mockUserRepository);
  });

  test('should listen user from the repository', () async {
    // arrange
    when(mockUserRepository.listenUser()).thenAnswer((_) => Stream.value(Right(tUser)));

    // act
    final result = usecase(const NoParams());

    // assert
    expect(result, emits(Right(tUser)));
    verify(mockUserRepository.listenUser());
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return a failure when there is no user', () async {
    // arrange
    when(mockUserRepository.listenUser()).thenAnswer((_) => Stream.value(const Left(UserFailures())));

    // act
    final result = usecase(const NoParams());

    // assert
    expect(result, emits(const Left(UserFailures())));
    verify(mockUserRepository.listenUser());
    verifyNoMoreInteractions(mockUserRepository);
  });
}
