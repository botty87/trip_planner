import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/core/usecases/usecase.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/domain/usecases/logout_user.dart';
import 'package:trip_planner/features/user_account/domain/usecases/reauthenticate_user.dart';
import 'package:trip_planner/features/user_account/domain/usecases/update_user_details.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/account_page/account_cubit.dart';

import 'account_cubit_test.mocks.dart';

@GenerateNiceMocks(
    [MockSpec<LogoutUser>(), MockSpec<ReauthenticateUser>(), MockSpec<UpdateUserDetails>()])
void main() {
  late MockLogoutUser mockUserLogout;
  late MockReauthenticateUser mockReauthenticateUser;
  late MockUpdateUserDetails mockUpdateUserDetails;

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
    mockReauthenticateUser = MockReauthenticateUser();
    mockUpdateUserDetails = MockUpdateUserDetails();
  });

  AccountCubit cubit() => AccountCubit(
        user: tUser,
        logoutUser: mockUserLogout,
        reauthenticateUser: mockReauthenticateUser,
        updateUserDetails: mockUpdateUserDetails,
      );

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
        when(mockUserLogout(any)).thenAnswer((_) async => const Left(UserFailures()));
      },
      build: () => cubit(),
      act: (cubit) => cubit.logOut(),
      expect: () => [
        AccountState.normal(
            user: tUser, errorMessage: const UserFailures().getAuthenticationErrorMessage()),
        AccountState.normal(user: tUser),
      ],
      verify: (_) {
        verify(mockUserLogout(const NoParams()));
        verifyNoMoreInteractions(mockUserLogout);
      },
    );
  });

  blocTest(
    'on edit emit edit state',
    build: () => cubit(),
    act: (cubit) => cubit.edit(),
    expect: () => [
      AccountState.editing(user: tUser, name: tUser.name, email: tUser.email),
    ],
  );

  blocTest<AccountCubit, AccountState>(
    'on nameChanged emit AccountStateEditing with name',
    seed: () => AccountState.editing(user: tUser, name: tUser.name, email: tUser.email),
    build: () => cubit(),
    act: (cubit) => cubit.nameChanged('new name'),
    expect: () => [
      AccountState.editing(user: tUser, name: 'new name', email: tUser.email),
    ],
  );

  blocTest<AccountCubit, AccountState>(
    'on emailChanged emit AccountStateEditing with email',
    seed: () => AccountState.editing(user: tUser, name: tUser.name, email: tUser.email),
    build: () => cubit(),
    act: (cubit) => cubit.emailChanged('new email'),
    expect: () => [
      AccountState.editing(user: tUser, name: tUser.name, email: 'new email'),
    ],
  );

  blocTest<AccountCubit, AccountState>(
    'on passwordChanged emit AccountStateEditing with password',
    seed: () => AccountState.editing(user: tUser, name: tUser.name, email: tUser.email),
    build: () => cubit(),
    act: (cubit) => cubit.passwordChanged('new password'),
    expect: () => [
      AccountState.editing(
          user: tUser, name: tUser.name, email: tUser.email, password: 'new password'),
    ],
  );

  blocTest<AccountCubit, AccountState>(
    'on confirmPasswordChanged emit AccountStateEditing with confirmPassword',
    seed: () => AccountState.editing(user: tUser, name: tUser.name, email: tUser.email),
    build: () => cubit(),
    act: (cubit) => cubit.confirmPasswordChanged('new password'),
    expect: () => [
      AccountState.editing(
          user: tUser, name: tUser.name, email: tUser.email, confirmPassword: 'new password'),
    ],
  );

  blocTest<AccountCubit, AccountState>(
    'on editPassword emit AccountStateEditing with isEditingPasswordVisible true',
    seed: () => AccountState.editing(user: tUser, name: tUser.name, email: tUser.email),
    build: () => cubit(),
    act: (cubit) => cubit.editPassword(),
    expect: () => [
      AccountState.editing(
          user: tUser, name: tUser.name, email: tUser.email, isEditingPasswordVisible: true),
    ],
  );

  blocTest<AccountCubit, AccountState>(
    'onReauthEmailChanged emit AccountStateReauthenticating with email',
    seed: () => AccountState.reauthenticating(
      user: tUser,
      editUserData: EditUserData(name: tUser.name, email: tUser.email, password: ''),
    ),
    build: () => cubit(),
    act: (cubit) => cubit.onReauthEmailChanged('new email'),
    expect: () => [
      AccountState.reauthenticating(
        user: tUser,
        editUserData: EditUserData(name: tUser.name, email: tUser.email, password: ''),
        email: 'new email',
      ),
    ],
  );

  blocTest<AccountCubit, AccountState>(
    'onReauthPasswordChanged emit AccountStateReauthenticating with password',
    seed: () => AccountState.reauthenticating(
      user: tUser,
      editUserData: EditUserData(name: tUser.name, email: tUser.email, password: ''),
    ),
    build: () => cubit(),
    act: (cubit) => cubit.onReauthPasswordChanged('new password'),
    expect: () => [
      AccountState.reauthenticating(
        user: tUser,
        editUserData: EditUserData(name: tUser.name, email: tUser.email, password: ''),
        password: 'new password',
      ),
    ],
  );

  group('on save', () {
    blocTest(
      'when nothing change emit normal state',
      seed: () => AccountState.editing(user: tUser, name: tUser.name, email: tUser.email),
      build: () => cubit(),
      act: (cubit) => cubit.save(),
      expect: () => [
        AccountState.normal(user: tUser),
      ],
    );

    blocTest(
      'when password dont match emit error state',
      seed: () => AccountState.editing(
          user: tUser,
          name: tUser.name,
          email: tUser.email,
          isEditingPasswordVisible: true,
          password: 'password',
          confirmPassword: 'password2'),
      build: () => cubit(),
      act: (cubit) => cubit.save(),
      expect: () => [
        AccountState.editing(
            user: tUser,
            name: tUser.name,
            email: tUser.email,
            isEditingPasswordVisible: true,
            password: 'password',
            confirmPassword: 'password2',
            errorMessage: LocaleKeys.passwordsDontMatch.tr()),
        AccountState.editing(
            user: tUser,
            name: tUser.name,
            email: tUser.email,
            isEditingPasswordVisible: true,
            password: 'password',
            confirmPassword: 'password2'),
      ],
    );

    blocTest(
      'when password is empty and confirm password is null do not emit error state',
      seed: () => AccountState.editing(
          user: tUser, name: tUser.name, email: tUser.email, password: '', confirmPassword: null),
      build: () => cubit(),
      act: (cubit) => cubit.save(),
      expect: () => [
        AccountState.reauthenticating(
            user: tUser,
            editUserData: EditUserData(name: tUser.name, email: tUser.email, password: null))
      ],
    );

    blocTest(
      'when password is empty and confirm password is empty do not emit error state',
      seed: () => AccountState.editing(
          user: tUser, name: tUser.name, email: tUser.email, password: '', confirmPassword: ''),
      build: () => cubit(),
      act: (cubit) => cubit.save(),
      expect: () => [
        AccountState.reauthenticating(
            user: tUser,
            editUserData: EditUserData(name: tUser.name, email: tUser.email, password: null))
      ],
    );

    blocTest(
      'when current email is invalid emit error state',
      seed: () => AccountState.editing(user: tUser, name: tUser.name, email: 'invalid email'),
      build: () => cubit(),
      act: (cubit) => cubit.save(),
      expect: () => [
        AccountState.editing(
            user: tUser,
            name: tUser.name,
            email: 'invalid email',
            errorMessage: LocaleKeys.invalidEmail.tr()),
        AccountState.editing(user: tUser, name: tUser.name, email: 'invalid email'),
      ],
    );
  });
}
