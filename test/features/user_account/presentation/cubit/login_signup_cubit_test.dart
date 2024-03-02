import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart';
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart';
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart';

import 'login_signup_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<RegisterUser>(), MockSpec<LoginUser>(), MockSpec<RecoverPassword>()])
void main() {
  late MockRegisterUser mockRegisterUser;
  late MockLoginUser mockLoginUser;
  late MockRecoverPassword mockRecoverPassword;

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  setUp(() {
    mockRegisterUser = MockRegisterUser();
    mockLoginUser = MockLoginUser();
    mockRecoverPassword = MockRecoverPassword();
  });

  blocTest<LoginSignupCubit, LoginSignupState>(
    'should emit updated email state when email is changed',
    build: () => LoginSignupCubit(
        loginUser: mockLoginUser,
        registerUser: mockRegisterUser,
        recoverPassword: mockRecoverPassword),
    act: (cubit) => cubit.emailChanged('email'),
    expect: () => [
      LoginSignupState(email: 'email'),
    ],
  );

  blocTest<LoginSignupCubit, LoginSignupState>(
    'should emit updated password state when password is changed',
    build: () => LoginSignupCubit(
        loginUser: mockLoginUser,
        registerUser: mockRegisterUser,
        recoverPassword: mockRecoverPassword),
    act: (cubit) => cubit.passwordChanged('password'),
    expect: () => [
      LoginSignupState(password: 'password'),
    ],
  );

  blocTest<LoginSignupCubit, LoginSignupState>(
    'should emit updated confirmPassword state when confirmPassword is changed',
    build: () => LoginSignupCubit(
        loginUser: mockLoginUser,
        registerUser: mockRegisterUser,
        recoverPassword: mockRecoverPassword),
    act: (cubit) => cubit.confirmPasswordChanged('confirmPassword'),
    expect: () => [
      LoginSignupState(confirmPassword: 'confirmPassword'),
    ],
  );

  blocTest<LoginSignupCubit, LoginSignupState>(
    'should emit updated name state when name is changed',
    build: () => LoginSignupCubit(
        loginUser: mockLoginUser,
        registerUser: mockRegisterUser,
        recoverPassword: mockRecoverPassword),
    act: (cubit) => cubit.nameChanged('name'),
    expect: () => [
      LoginSignupState(name: 'name'),
    ],
  );

  group('signup tests', () {
    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit email error when email is invalid, password empty error when password is empty and name empty error when name is empty',
      seed: () => LoginSignupState(email: 'email'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.signUp(),
      expect: () => [
        LoginSignupState(email: 'email', emailError: LocaleKeys.invalidEmail),
        LoginSignupState(
            email: 'email',
            emailError: LocaleKeys.invalidEmail,
            passwordError: LocaleKeys.passwordEmpty),
        LoginSignupState(
            email: 'email',
            emailError: LocaleKeys.invalidEmail,
            passwordError: LocaleKeys.passwordEmpty,
            nameError: LocaleKeys.nameEmpty),
      ],
    );

    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit email error when email is invalid, password mismatch error when passwords are not equals and name empty error when name is empty',
      seed: () => LoginSignupState(
          email: 'email', password: 'password', confirmPassword: 'confirmPassword'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.signUp(),
      expect: () => [
        LoginSignupState(
            email: 'email',
            password: 'password',
            confirmPassword: 'confirmPassword',
            emailError: LocaleKeys.invalidEmail),
        LoginSignupState(
            email: 'email',
            password: 'password',
            confirmPassword: 'confirmPassword',
            emailError: LocaleKeys.invalidEmail,
            passwordError: LocaleKeys.passwordsDontMatch),
        LoginSignupState(
            email: 'email',
            password: 'password',
            confirmPassword: 'confirmPassword',
            emailError: LocaleKeys.invalidEmail,
            passwordError: LocaleKeys.passwordsDontMatch,
            nameError: LocaleKeys.nameEmpty),
      ],
    );

    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit isLoading true, call registerUser and emit isLoading false when email, password and name are valid',
      setUp: () {
        when(mockRegisterUser(any)).thenAnswer((_) async => right(null));
      },
      seed: () => LoginSignupState(
          email: 'email@email.it', password: 'password', confirmPassword: 'password', name: 'name'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.signUp(),
      expect: () => [
        LoginSignupState(
            email: 'email@email.it',
            password: 'password',
            confirmPassword: 'password',
            name: 'name',
            isLoading: true),
        LoginSignupState(
            email: 'email@email.it',
            password: 'password',
            confirmPassword: 'password',
            name: 'name',
            isLoading: false),
      ],
    );

    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit authentication error when registerUser returns an error',
      setUp: () {
        when(mockRegisterUser(any))
            .thenAnswer((_) async => left(const UserFailures.unknownError()));
      },
      seed: () => LoginSignupState(
          email: 'email@email.it', password: 'password', confirmPassword: 'password', name: 'name'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.signUp(),
      expect: () => [
        LoginSignupState(
            email: 'email@email.it',
            password: 'password',
            confirmPassword: 'password',
            name: 'name',
            isLoading: true),
        LoginSignupState(
            email: 'email@email.it',
            password: 'password',
            confirmPassword: 'password',
            name: 'name',
            isLoading: false,
            authenticationError: LocaleKeys.unknownError.tr()),
      ],
    );
  });

  group('login tests', () {
    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit user not found when email is invalid',
      setUp: () {
        when(mockLoginUser(any)).thenAnswer((_) async => left(const UserFailures.userNotFound()));
      },
      seed: () => LoginSignupState(email: 'email'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.login(),
      expect: () => [
        LoginSignupState(isLoading: true, email: 'email'),
        LoginSignupState(
            isLoading: false, email: 'email', authenticationError: LocaleKeys.userNotFound),
      ],
    );

    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit isLoading true, call loginUser and emit isLoading false when email and password are valid',
      setUp: () {
        when(mockLoginUser(any)).thenAnswer((_) async => right(null));
      },
      seed: () => LoginSignupState(email: 'email', password: 'password'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.login(),
      expect: () => [
        LoginSignupState(email: 'email', password: 'password', isLoading: true),
        LoginSignupState(email: 'email', password: 'password', isLoading: false),
      ],
    );

    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit authentication error when loginUser returns an error',
      setUp: () {
        when(mockLoginUser(any)).thenAnswer((_) async => left(const UserFailures.unknownError()));
      },
      seed: () => LoginSignupState(email: 'email', password: 'password'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.login(),
      expect: () => [
        LoginSignupState(email: 'email', password: 'password', isLoading: true),
        LoginSignupState(
            email: 'email',
            password: 'password',
            isLoading: false,
            authenticationError: LocaleKeys.unknownError.tr()),
      ],
    );
  });

  group('recover password tests', () {
    blocTest<LoginSignupCubit, LoginSignupState>(
      'should user not found error when email is invalid',
      setUp: () {
        when(mockRecoverPassword(any))
            .thenAnswer((_) async => left(const UserFailures.userNotFound()));
      },
      seed: () => LoginSignupState(email: 'email'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.recoverUserPassword(),
      expect: () => [
        LoginSignupState(isLoading: true, email: 'email'),
        LoginSignupState(
            email: 'email', authenticationError: LocaleKeys.userNotFound, isLoading: false),
      ],
    );

    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit isLoading true, call recoverPassword and emit isLoading false when email is valid, with recoverPasswordSuccess message',
      setUp: () {
        when(mockRecoverPassword(any)).thenAnswer((_) async => right(null));
      },
      seed: () => LoginSignupState(email: 'email'),
      build: () => LoginSignupCubit(
          loginUser: mockLoginUser,
          registerUser: mockRegisterUser,
          recoverPassword: mockRecoverPassword),
      act: (cubit) => cubit.recoverUserPassword(),
      expect: () => [
        LoginSignupState(email: 'email', isLoading: true),
        LoginSignupState(
            email: 'email',
            isLoading: false,
            successMessage: LocaleKeys.recoverPasswordSuccess.tr()),
      ],
    );
  });
}
