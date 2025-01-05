part of '../my_app.dart';

final class _UserStatusListener extends BlocListener<UserCubit, UserState> {
  //TODO: should it be replaced by auto_route guards?
  _UserStatusListener()
      : super(
          listenWhen: (previous, current) {
            //Avoid to change route if user is already logged in
            if (previous is UserStateLoggedIn && current is UserStateLoggedIn) {
              return false;
            }
            return true;
          },
          listener: (context, state) {
            final router = getIt<AppRouter>();
            if (!kIsWeb) {
              FlutterNativeSplash.remove();
            }
            state.whenOrNull(
              loggedOut: () {
                AdaptiveTheme.of(context).setSystem();
                return router.replaceAll([const LoginSignupRoute()]);
              },
              loggedIn: (user) {
                //Set the user theme
                AdaptiveTheme.of(context).setThemeMode(user.settings.themeMode);

                if (user.oldTripsImported) {
                  if (user.tutorialsData.showWelcome) {
                    return router.replaceAll([const TutorialRoute()]);
                  } else {
                    return router.replaceAll([const TripsRoute()]);
                  }
                } else {
                  return router.replaceAll([ImportOldTripsRoute(user: user)]);
                }
              },
              error: () => throw UnimplementedError(),
            );
          },
        );
}
