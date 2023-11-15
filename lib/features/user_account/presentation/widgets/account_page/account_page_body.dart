part of '../../pages/account_page.dart';

class _AccountPageBody extends StatelessWidget {
  const _AccountPageBody();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AccountCubit, AccountState>(
          listener: (context, state) {
            //On error show snackbar
            if (state.errorMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                Snackbars.error(state.errorMessage!),
              );
            }
          },
        ),
        BlocListener<AccountCubit, AccountState>(
          listener: (context, state) {
            if (state is AccountStateReauthenticating) {
              _showReauthenticationModalBottom(context);
            }
          },
        ),
      ],
      child: BlocBuilder<AccountCubit, AccountState>(
        buildWhen: (previous, current) =>
            (previous.runtimeType != current.runtimeType) &&
            current is! AccountStateReauthenticating,
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
