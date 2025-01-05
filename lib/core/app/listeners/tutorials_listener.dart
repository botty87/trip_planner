part of '../my_app.dart';

final class _TutorialsListener extends BlocListener<UserCubit, UserState> {
  _TutorialsListener()
      : super(
          listenWhen: (previous, current) {
            final previousTutorialsData = switch (previous) {
              final UserStateLoggedIn loggedInState => loggedInState.user.tutorialsData,
              _ => null,
            };
            final currentTutorialsData = switch (current) {
              final UserStateLoggedIn loggedInState => loggedInState.user.tutorialsData,
              _ => null,
            };
            return previousTutorialsData != currentTutorialsData;
          },
          listener: (context, state) {
            final tutorialsData = switch (state) {
              final UserStateLoggedIn loggedInState => loggedInState.user.tutorialsData,
              _ => null,
            };
            context.read<TutorialCubit>().updateTutorialsDataFromUser(tutorialsData);
          },
        );
}