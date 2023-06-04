import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';

part 'login_signup_state.dart';

part 'login_signup_cubit.freezed.dart';

@injectable
class LoginSignupCubit extends Cubit<LoginSignupState> {
  LoginSignupCubit() : super(LoginSignupState());

  void emailChanged(String email) {
    emit(state.copyWith(email: email, emailError: null));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(password: password));
  }

  void confirmPasswordChanged(String confirmPassword) {
    emit(state.copyWith(confirmPassword: confirmPassword));
  }

  void nameChanged(String name) {
    emit(state.copyWith(name: name));
  }

  void login() {}

  void recoverPassword() {}

  void signUp() {
    bool hasError = false;

    //verify if email is valid
    if (!EmailValidator.validate(state.email ?? '')) {
      emit(state.copyWith(emailError: LocaleKeys.invalidEmail.tr()));
      hasError = true;
    }
    //verify if passwords match
    if (state.password != state.confirmPassword) {
      emit(state.copyWith(passwordError: LocaleKeys.passwordsDontMatch.tr()));
      hasError = true;
    }

    //verify if password is not empty
    if (state.password?.isEmpty ?? true) {
      emit(state.copyWith(passwordError: LocaleKeys.passwordEmpty.tr()));
      hasError = true;
    }

    //verify if name is not empty
    if (state.name?.isEmpty ?? true) {
      emit(state.copyWith(nameError: LocaleKeys.nameEmpty.tr()));
      hasError = true;
    }

    //if (hasError) return;

    emit(state.copyWith(isLoading: true));
  }
}
