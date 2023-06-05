import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failure.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart';

import '../pages/login_signup_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<RegisterUser>()])
void main() {
  late MockRegisterUser mockRegisterUser;

  setUp(() {
    mockRegisterUser = MockRegisterUser();
  });

  blocTest<LoginSignupCubit, LoginSignupState>(
    'should emit updated email state when email is changed',
    build: () => LoginSignupCubit(mockRegisterUser),
    act: (cubit) => cubit.emailChanged('email'),
    expect: () => [
      LoginSignupState(email: 'email'),
    ],
  );

  blocTest<LoginSignupCubit, LoginSignupState>(
    'should emit updated password state when password is changed',
    build: () => LoginSignupCubit(mockRegisterUser),
    act: (cubit) => cubit.passwordChanged('password'),
    expect: () => [
      LoginSignupState(password: 'password'),
    ],
  );

  blocTest<LoginSignupCubit, LoginSignupState>(
    'should emit updated confirmPassword state when confirmPassword is changed',
    build: () => LoginSignupCubit(mockRegisterUser),
    act: (cubit) => cubit.confirmPasswordChanged('confirmPassword'),
    expect: () => [
      LoginSignupState(confirmPassword: 'confirmPassword'),
    ],
  );

  blocTest<LoginSignupCubit, LoginSignupState>(
    'should emit updated name state when name is changed',
    build: () => LoginSignupCubit(mockRegisterUser),
    act: (cubit) => cubit.nameChanged('name'),
    expect: () => [
      LoginSignupState(name: 'name'),
    ],
  );

  group('signup tests', () {
    blocTest<LoginSignupCubit, LoginSignupState>(
      'should emit email error when email is invalid, password empty error when password is empty and name empty error when name is empty',
      seed: () => LoginSignupState(email: 'email'),
      build: () => LoginSignupCubit(mockRegisterUser),
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
      build: () => LoginSignupCubit(mockRegisterUser),
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
      build: () => LoginSignupCubit(mockRegisterUser),
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
        when(mockRegisterUser(any)).thenAnswer((_) async => left(UserFailure()));
      },
      seed: () => LoginSignupState(
          email: 'email@email.it', password: 'password', confirmPassword: 'password', name: 'name'),
      build: () => LoginSignupCubit(mockRegisterUser),
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
}
