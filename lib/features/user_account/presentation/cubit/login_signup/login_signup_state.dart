part of 'login_signup_cubit.dart';

@freezed
class LoginSignupState with _$LoginSignupState {

  factory LoginSignupState({
    String? email,
    String? password,
    String? confirmPassword,
    String? name,
  }) = _LoginSignupState;

}