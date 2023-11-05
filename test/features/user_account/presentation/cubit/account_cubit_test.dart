import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/usecases/usecase.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/domain/usecases/logout_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/account_page/cubit/account_cubit.dart';

import 'account_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<LogoutUser>(),
])
void main() {
  late MockLogoutUser mockUserLogout;

  final tUser = User(
    id: '1',
    name: 'John Doe',
    email: 'email@email.com',
  );

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    mockUserLogout = MockLogoutUser();
  });

  AccountCubit cubit() => AccountCubit(user: tUser, logoutUser: mockUserLogout);

  group('logout', () {
    blocTest<AccountCubit, AccountState>(
      'should emit AccountState.normal when logout is successful',
      setUp: () {
        when(mockUserLogout(any)).thenAnswer((_) async => const Right(null));
      },
      build: () => cubit(),
      act: (cubit) => cubit.logOut(),
      expect: () => [
        AccountState.normal(user: tUser),
      ],
      verify: (_) {
        verify(mockUserLogout(const NoParams()));
        verifyNoMoreInteractions(mockUserLogout);
      },
    );

    blocTest<AccountCubit, AccountState>(
      'should emit AccountState.error when logout fails',
      setUp: () {
        when(mockUserLogout(any)).thenAnswer((_) async => Left(UserFailures()));
      },
      build: () => cubit(),
      act: (cubit) => cubit.logOut(),
      expect: () => [
        AccountState.error(user: tUser, message: UserFailures().getAuthenticationErrorMessage()),
      ],
      verify: (_) {
        verify(mockUserLogout(const NoParams()));
        verifyNoMoreInteractions(mockUserLogout);
      },
    );
  });
}
