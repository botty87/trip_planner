part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loggedOut() = _LoggedOut;
  const factory UserState.loggedIn() = _LoggedIn;
  const factory UserState.loading() = _Loading;
  const factory UserState.error() = _Error;
}
