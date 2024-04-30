part of 'user_cubit.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState.loggedOut() = UserStateLoggedOut;
  const factory UserState.loggedIn({required User user}) = UserStateLoggedIn;
  const factory UserState.loading() = UserStateLoading;
  const factory UserState.error() = UserStateError;
}
