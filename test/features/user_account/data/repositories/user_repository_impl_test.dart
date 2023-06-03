import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart';
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/errors/user_failure.dart';

import 'user_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UserDataSource>()])

void main() {
  late MockUserDataSource userDataSource;
  late UserRepositoryImpl userRepositoryImpl;

  //User for the test
  final User tUser = User(
    id: '123',
    email: '',
    name: '',
  );

  setUp(() {
    userDataSource = MockUserDataSource();
    userRepositoryImpl = UserRepositoryImpl(userDataSource);
  });

  test('should listen user from the data source', () async {
    // arrange
    when(userDataSource.listenUser())
        .thenAnswer((_) => Stream.value(tUser));
    
    // act
    final result = userRepositoryImpl.listenUser();

    // assert
    await expectLater(result, emits(right(tUser)));
    verify(userDataSource.listenUser());
    verifyNoMoreInteractions(userDataSource);
  });

  test('should return a failure when there is an exception on data source', () async {
    // arrange
    when(userDataSource.listenUser()).thenAnswer((realInvocation) => throw Exception());
    
    // act
    final result = userRepositoryImpl.listenUser();

    // assert
    await expectLater(result, emits(left(UserFailure())));
    verify(userDataSource.listenUser());
    verifyNoMoreInteractions(userDataSource);
  });
}