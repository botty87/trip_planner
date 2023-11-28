part of 'login_signup_cubit.dart';

@freezed
class LoginSignupState with _$LoginSignupState {
  factory LoginSignupState({
    String? email,
    String? password,
    String? confirmPassword,
    String? name,
    String? emailError,
    String? passwordError,
    String? nameError,
    @Default(false) bool isLoading,
    String? authenticationError,
    String? successMessage,
  }) = _LoginSignupState;
}
