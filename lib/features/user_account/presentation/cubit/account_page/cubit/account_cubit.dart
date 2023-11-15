import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/usecases/usecase.dart';
import '../../../../domain/entities/user.dart';
import '../../../../domain/usecases/logout_user.dart';

part 'account_cubit.freezed.dart';
part 'account_state.dart';

@injectable
class AccountCubit extends Cubit<AccountState> {
  final LogoutUser _logoutUser;

  AccountCubit({@factoryParam required user, required LogoutUser logoutUser})
      : _logoutUser = logoutUser,
        super(AccountState.normal(user: user));

  logOut() async {
    final result = await _logoutUser(const NoParams());

    result.fold(
      (failure) {
        emit(state.copyWith(errorMessage: failure.getAuthenticationErrorMessage()));
        emit(state.copyWith(errorMessage: null));
      },
      (_) => emit(AccountState.normal(user: state.user)),
    );
  }

  edit() {
    emit(AccountState.editing(user: state.user, name: state.user.name, email: state.user.email));
  }

  nameChanged(String value) {
    assert(state is AccountStateEditing);
    emit((state as AccountStateEditing).copyWith(name: value));
  }

  emailChanged(String value) {
    assert(state is AccountStateEditing);
    emit((state as AccountStateEditing).copyWith(email: value));
  }

  passwordChanged(String value) {
    assert(state is AccountStateEditing);
    emit((state as AccountStateEditing).copyWith(password: value));
  }

  confirmPasswordChanged(String value) {
    assert(state is AccountStateEditing);
    emit((state as AccountStateEditing).copyWith(confirmPassword: value));
  }

  save() {
    assert(state is AccountStateEditing);
    final editingState = state as AccountStateEditing;

    //Verify if the user has changed anything
    if (editingState.name == editingState.user.name &&
        editingState.email == editingState.user.email &&
        editingState.password == null &&
        editingState.confirmPassword == null) {
      emit(AccountState.normal(user: editingState.user));
      return;
    }

    //If the email has changed, verify if it is valid
    if (editingState.email != null &&
        editingState.email != editingState.user.email &&
        !EmailValidator.validate(editingState.email ?? '')) {
      emit(editingState.copyWith(errorMessage: LocaleKeys.invalidEmail.tr()));
      emit(editingState.copyWith(errorMessage: null));
      return;
    }

    if (editingState.isEditingPasswordVisible &&
        (editingState.password ?? '') != (editingState.confirmPassword ?? '')) {
      emit(editingState.copyWith(errorMessage: LocaleKeys.passwordsDontMatch.tr()));
      emit(editingState.copyWith(errorMessage: null));
      return;
    }

    emit(AccountState.reauthenticating(
      user: editingState.user,
      editUserData: EditUserData(
        name: editingState.name,
        email: editingState.email,
        password: editingState.password,
      ),
    ));
  }

  cancel() {
    assert(state is AccountStateEditing);
    emit(AccountState.normal(user: state.user));
  }

  editPassword() {
    assert(state is AccountStateEditing);
    final editState = (state as AccountStateEditing);
    emit(editState.copyWith(isEditingPasswordVisible: true));
  }

  void cancelReauthentication() {
    assert(state is AccountStateReauthenticating);
    emit(AccountState.normal(user: state.user));
  }

  reauthenticate() {}
}
