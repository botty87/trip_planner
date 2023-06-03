import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/usecases/usecase.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart';
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failure.dart';

import 'listen_user_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UserRepository>()])

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
    when(mockUserRepository.listenUser())
        .thenAnswer((_) => Stream.value(Right(tUser)));
    
    // act
    final result = usecase(NoParams());

    // assert
    expect(result, emits(Right(tUser)));
    verify(mockUserRepository.listenUser());
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return a failure when there is no user', () async {
    // arrange
    when(mockUserRepository.listenUser())
        .thenAnswer((_) => Stream.value(Left(UserFailure())));
    
    // act
    final result = usecase(NoParams());

    // assert
    expect(result, emits(Left(UserFailure())));
    verify(mockUserRepository.listenUser());
    verifyNoMoreInteractions(mockUserRepository);
  });
}