part of 'account_cubit.dart';

@freezed
sealed class AccountState with _$AccountState {
  const factory AccountState.normal({
    required User user,
  }) = _AccountStateNormal;

  const factory AccountState.error({
    required User user,
    required String message,
  }) = _AccountStateError;
}
