import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart';
import 'package:trip_planner/features/user_account/presentation/pages/login_signup_page.dart';

class MockLoginSignupCubit extends MockCubit<LoginSignupState> implements LoginSignupCubit {}

void main() {
  late MockLoginSignupCubit mockLoginSignupCubit;

  group('LoginSignupPage', () {
    group('Test initial page state', () {
      late MockLoginSignupCubit mockLoginSignupCubit;

      setUp(() {
        mockLoginSignupCubit = MockLoginSignupCubit();
      });

      testWidgets('should display 4 text fields', (WidgetTester tester) async {
        final initialState = LoginSignupState();
        whenListen(
          mockLoginSignupCubit,
          Stream.fromIterable([initialState]),
          initialState: initialState,
        );
        // arrange
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: LoginSignupPage(
                cubit: mockLoginSignupCubit,
              ),
            ),
          ),
        );
        // act
        expect(find.byType(TextField), findsNWidgets(4));

        final emailTextField = find.text(LocaleKeys.email.tr());
        final passwordTextField = find.text(LocaleKeys.password.tr());
        final nameTextField = find.text(LocaleKeys.name.tr());
        final confirmPasswordTextField = find.text(LocaleKeys.confirmPassword.tr());

        // assert
        expect(emailTextField, findsOneWidget);
        expect(passwordTextField, findsOneWidget);
        expect(nameTextField, findsOneWidget);
        expect(confirmPasswordTextField, findsOneWidget);
      });

      testWidgets('should display login,recover password and signup buttons', (widgetTester) async {
        final initialState = LoginSignupState();
        whenListen(
          mockLoginSignupCubit,
          Stream.fromIterable([initialState]),
          initialState: initialState,
        );
        // arrange
        await widgetTester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: LoginSignupPage(
                cubit: mockLoginSignupCubit,
              ),
            ),
          ),
        );
        // act
        final loginButton = find.text(LocaleKeys.login.tr());
        final recoverPasswordButton = find.text(LocaleKeys.recoverPassword.tr());
        final signUpButton = find.text(LocaleKeys.register.tr());

        // assert
        expect(loginButton, findsOneWidget);
        expect(recoverPasswordButton, findsOneWidget);
        expect(signUpButton, findsOneWidget);

        //verify two buttons are ElevatedButton
        expect(find.byType(ElevatedButton), findsNWidgets(2));

        //verify one button is TextButton
        expect(find.byType(TextButton), findsOneWidget);
      });
    });

    group('test text events', () {
      late LoginSignupCubit loginSignupCubit;

      setUp(() {
        loginSignupCubit = LoginSignupCubit();
      });

      testWidgets('should display error message when email is invalid', (widgetTester) async {
        // arrange
        await widgetTester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: LoginSignupPage(
                cubit: loginSignupCubit,
              ),
            ),
          ),
        );
        // act
        final signupButton = find.byKey(const Key('signup_button'));
        await widgetTester.ensureVisible(signupButton);
        await widgetTester.tap(signupButton);
        await widgetTester.pump();

        // assert
        final emailErrorText = find.text(LocaleKeys.invalidEmail.tr());
        expect(emailErrorText, findsOneWidget);
      });

      testWidgets('should display error message when password is empty', (widgetTester) async {
        // arrange
        await widgetTester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: LoginSignupPage(
                cubit: loginSignupCubit,
              ),
            ),
          ),
        );
        // act
        final signupButton = find.byKey(const Key('signup_button'));
        await widgetTester.ensureVisible(signupButton);
        await widgetTester.tap(signupButton);
        await widgetTester.pump();

        // assert
        final emailErrorText = find.text(LocaleKeys.passwordEmpty.tr());
        expect(emailErrorText, findsNWidgets(2));
      });

      testWidgets('should display error message when passwords mismatch', (widgetTester) async {
        // arrange
        await widgetTester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: LoginSignupPage(
                cubit: loginSignupCubit,
              ),
            ),
          ),
        );
        // act
        final passwordTextField = find.byKey(const Key('login_password_text_field'));
        await widgetTester.enterText(passwordTextField, "123456");
        final signupButton = find.byKey(const Key('signup_button'));
        await widgetTester.ensureVisible(signupButton);
        await widgetTester.tap(signupButton);
        await widgetTester.pump();

        // assert
        final emailErrorText = find.text(LocaleKeys.passwordsDontMatch.tr());
        expect(emailErrorText, findsNWidgets(2));
      });

      testWidgets('should display error message when name is empty', (widgetTester) async {
        // arrange
        await widgetTester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: LoginSignupPage(
                cubit: loginSignupCubit,
              ),
            ),
          ),
        );
        // act
        final signupButton = find.byKey(const Key('signup_button'));
        await widgetTester.ensureVisible(signupButton);
        await widgetTester.tap(signupButton);
        await widgetTester.pump();

        // assert
        final emailErrorText = find.text(LocaleKeys.nameEmpty.tr());
        expect(emailErrorText, findsOneWidget);
      });
    });
  });
}
