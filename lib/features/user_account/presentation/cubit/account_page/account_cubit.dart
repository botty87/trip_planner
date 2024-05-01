import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/usecases/usecase.dart';
import '../../../../../core/utilities/extensions.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/delete_user.dart';
import '../../../domain/usecases/logout_user.dart';
import '../../../domain/usecases/reauthenticate_user.dart';
import '../../../domain/usecases/update_user_details.dart';

part 'account_cubit.freezed.dart';
part 'account_state.dart';

@injectable
class AccountCubit extends Cubit<AccountState> {
  final LogoutUser _logoutUser;
  final ReauthenticateUser _reauthenticateUser;
  final UpdateUserDetails _updateUserDetails;
  final DeleteUser _deleteUser;

  AccountCubit({
    @factoryParam required user,
    required LogoutUser logoutUser,
    required ReauthenticateUser reauthenticateUser,
    required UpdateUserDetails updateUserDetails,
    required DeleteUser deleteUser,
  })  : _logoutUser = logoutUser,
        _reauthenticateUser = reauthenticateUser,
        _updateUserDetails = updateUserDetails,
        _deleteUser = deleteUser,
        super(AccountState.normal(user: user));

  logOut() async {
    final result = await _logoutUser(const NoParams());

    result.fold(
      (failure) {
        emit(state.copyWith(errorMessage: failure.getUserFailureErrorMessage()));
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
        name: editingState.name?.nullIfEmpty(),
        email: editingState.email?.nullIfEmpty(),
        password: editingState.password?.nullIfEmpty(),
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

  void onReauthPasswordChanged(String value) {
    assert(state is AccountStateReauthenticating);
    emit((state as AccountStateReauthenticating).copyWith(password: value, errorMessage: null));
  }

  void cancelReauthentication() {
    assert(state is AccountStateReauthenticating);
    emit(AccountState.normal(user: state.user));
  }

  reauthenticate() async {
    assert(state is AccountStateReauthenticating);
    final reauthState = state as AccountStateReauthenticating;

    updateUserDetail() async {
      final result = await _updateUserDetails(UpdateUserDetailsParams(
        name: reauthState.editUserData.name,
        email: reauthState.editUserData.email,
        password: reauthState.editUserData.password,
      ));

      result.fold(
        (failure) {
          emit(reauthState.copyWith(
              errorMessage: failure.getUserFailureErrorMessage(), isSaving: false));
        },
        (_) {
          emit(AccountState.normal(user: state.user));
        },
      );
    }

    if (reauthState.password?.isEmpty ?? true) {
      emit(reauthState.copyWith(errorMessage: LocaleKeys.emailEmpty.tr()));
      return;
    }

    emit(reauthState.copyWith(isSaving: true));

    final result = await _reauthenticateUser(ReauthenticateUserParams(
      email: reauthState.user.email,
      password: reauthState.password!,
    ));

    result.fold(
      (failure) {
        emit(reauthState.copyWith(
            errorMessage: failure.getUserFailureErrorMessage(), isSaving: false));
      },
      (_) {
        updateUserDetail();
      },
    );
  }

  void updateUser(User user) {
    emit(state.copyWith(user: user));
  }

  void deleteAccount({required String password}) async {
    emit(AccountState.deleting(user: state.user));

    final result = await _reauthenticateUser(ReauthenticateUserParams(
      email: state.user.email,
      password: password,
    ));

    result.fold(
      (failure) {
        emit(AccountState.normal(
            user: state.user, errorMessage: failure.getUserFailureErrorMessage()));
        emit(state.copyWith(errorMessage: null));
      },
      (_) async {
        final result = await _deleteUser(DeleteUserParams(userId: state.user.id));

        result.fold(
          (failure) {
            emit(AccountState.normal(
                user: state.user, errorMessage: failure.getUserFailureErrorMessage()));
            emit(state.copyWith(errorMessage: null));
          },
          (_) {
            //Emit nothing, the user will be logged out automatically
          },
        );
      },
    );
  }
}
