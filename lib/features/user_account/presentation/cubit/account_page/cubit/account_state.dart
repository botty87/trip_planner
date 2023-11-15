part of 'account_cubit.dart';

@freezed
sealed class AccountState with _$AccountState {
  const factory AccountState.normal({
    required User user,
    String? errorMessage,
  }) = AccountStateNormal;

  const factory AccountState.editing({
    required User user,
    String? errorMessage,
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
    @Default(false) bool isEditingPasswordVisible,
  }) = AccountStateEditing;

  const factory AccountState.reauthenticating({
    required User user,
    String? errorMessage,
    String? email,
    String? password,
    required EditUserData editUserData,
  }) = AccountStateReauthenticating;
}

@freezed
class EditUserData with _$EditUserData {
  const factory EditUserData({
    required String? name,
    required String? email,
    required String? password,
  }) = _EditUserData;
}
