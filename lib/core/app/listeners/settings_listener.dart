part of '../my_app.dart';

final class _SettingsListener extends BlocListener<UserCubit, UserState> {
  _SettingsListener()
      : super(
          listenWhen: (previous, current) {
            final previousSettings = switch (previous) {
              final UserStateLoggedIn loggedInState => loggedInState.user.settings,
              _ => null,
            };
            final currentSettings = switch (current) {
              final UserStateLoggedIn loggedInState => loggedInState.user.settings,
              _ => null,
            };
            return previousSettings != currentSettings;
          },
          listener: (context, state) {
            final settings = switch (state) {
              final UserStateLoggedIn loggedInState => loggedInState.user.settings,
              _ => null,
            };
            context.read<SettingsCubit>().updateSettingsFromUser(settings);
          },
        );
}
