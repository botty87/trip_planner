import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/tutorials/domain/entities/tutorials_data.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart';
import 'package:bloc_test/bloc_test.dart';

import 'user_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ListenUser>()])
void main() {
  late MockListenUser mockListenUser;

  //User for the test
  const User tUser = User(
    id: '123',
    email: '',
    name: '',
    tutorialsData: TutorialsData(),
  );

  setUp(() {
    mockListenUser = MockListenUser();
  });

  blocTest<UserCubit, UserState>(
    'Emits UserStateLoggedOut when user is null',
    setUp: () {
      when(mockListenUser(any)).thenAnswer((_) => Stream.value(right(null)));
    },
    build: () => UserCubit(listenUserState: mockListenUser),
    expect: () => const <UserState>[UserState.loggedOut()],
  );

  blocTest<UserCubit, UserState>(
    'Emits UserStateLoggedIn when user is not null',
    setUp: () {
      when(mockListenUser(any)).thenAnswer((_) => Stream.value(right(tUser)));
    },
    build: () => UserCubit(listenUserState: mockListenUser),
    expect: () => <UserState>[const UserState.loggedIn(user: tUser)],
  );
}
