part of '../../pages/account_page.dart';

class _UserDetails extends StatelessWidget {
  const _UserDetails();

  @override
  Widget build(BuildContext context) {
    final user = context.read<AccountCubit>().state.user;

    return Padding(
      padding: const EdgeInsets.only(
        left: pageHorizontalPadding,
        right: pageHorizontalPadding,
        bottom: pageVerticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            LocaleKeys.yourName.tr(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            user.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: verticalSpaceL),
          Text(
            LocaleKeys.yourEmail.tr(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            user.email,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 17),
          ),
          const SizedBox(height: verticalSpaceL),
          Center(
            child: ElevatedButton(
              key: const Key('logoutButton'),
              onPressed: () => _logOut(context),
              child: Text(LocaleKeys.logout.tr()),
            ),
          ),
        ],
      ),
    );
  }

  _logOut(BuildContext context) async {
    //Show a dialog to confirm the logout
    final result = await showOkCancelAlertDialog(
      context: context,
      title: LocaleKeys.logout.tr(),
      message: LocaleKeys.logoutConfirmation.tr(),
      okLabel: LocaleKeys.logout.tr(),
      cancelLabel: LocaleKeys.cancel.tr(),
    );

    //If the user confirms the logout, then log out
    if (result == OkCancelResult.ok && context.mounted) {
      context.read<AccountCubit>().logOut();
    }
  }
}
