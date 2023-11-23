part of '../../pages/account_page.dart';

class _AccountPageBody extends StatelessWidget {
  const _AccountPageBody();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        //On error show snackbar, but only if the error is not caused by reauthentication
        BlocListener<AccountCubit, AccountState>(
          listenWhen: (previous, current) => current is! AccountStateReauthenticating,
          listener: (context, state) {
            //On error show snackbar
            if (state.errorMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                Snackbars.error(state.errorMessage!),
              );
            }
          },
        ),
        //On reauthentication show modal bottom sheet
        BlocListener<AccountCubit, AccountState>(
          listenWhen: (previous, current) =>
              previous is AccountStateEditing && current is AccountStateReauthenticating,
          listener: (context, state) {
            if (state is AccountStateReauthenticating) {
              _showReauthenticationModalBottom(context);
            }
          },
        ),
        //On reauthentication to normal state, hide modal bottom sheet
        BlocListener<AccountCubit, AccountState>(
          listenWhen: (previous, current) =>
              previous is AccountStateReauthenticating && current is AccountStateNormal,
          listener: (context, state) {
            Navigator.of(context).pop();
          },
        ),
        //On user change update the user
        BlocListener<UserCubit, UserState>(
          listenWhen: (previous, current) => current is UserStateLoggedIn,
          listener: (context, state) {
            context.read<AccountCubit>().updateUser((state as UserStateLoggedIn).user);
          },
        ),
      ],
      child: BlocBuilder<AccountCubit, AccountState>(
        buildWhen: (previous, current) =>
            (previous.runtimeType != current.runtimeType) &&
            current is! AccountStateReauthenticating &&
            current is! AccountStateDeleting,
        builder: (context, state) {
          return AnimatedSwitcherPlus.flipY(
            duration: const Duration(milliseconds: 500),
            child: state.maybeMap(
              normal: (_) => const _UserDetails(),
              editing: (_) => const _EditUserDetails(),
              orElse: () => throw Exception('Invalid state'),
            ),
          );
        },
      ),
    );
  }
}
