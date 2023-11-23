part of '../../pages/account_page.dart';

class _UserDetails extends StatelessWidget {
  const _UserDetails();

  @override
  Widget build(BuildContext context) {
    final user = context.read<AccountCubit>().state.user;
    final isDeleting = context.select((AccountCubit cubit) => cubit.state is AccountStateDeleting);

    return Column(
      children: [
        _deleteUserProgressLoader(context, isDeleting),
        Padding(
          padding: const EdgeInsets.only(
            left: pageHorizontalPadding,
            right: pageHorizontalPadding,
            bottom: pageVerticalPadding,
          ),
          child: AbsorbPointer(
            absorbing: isDeleting,
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
                const SizedBox(height: verticalSpaceXL),
                Center(
                  child: ElevatedButton(
                    key: const Key('deleteAccountButton'),
                    onPressed: () => _deleteAccount(context),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.error),
                    child: Text(
                      LocaleKeys.deleteAccount.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Theme.of(context).colorScheme.onError),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _deleteUserProgressLoader(BuildContext context, bool isDeleting) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: Visibility(
        visible: isDeleting,
        child: const Padding(
          padding: EdgeInsets.only(bottom: verticalSpaceL),
          child: LinearProgressIndicator(minHeight: 1),
        ),
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

  _deleteAccount(BuildContext context) {
    //Show a dialog to confirm the account deletion
    showTextInputDialog(
      context: context,
      title: LocaleKeys.deleteAccount.tr(),
      message: LocaleKeys.deleteAccountConfirmation.tr(),
      okLabel: LocaleKeys.deleteAccount.tr(),
      cancelLabel: LocaleKeys.cancel.tr(),
      textFields: [
        DialogTextField(
          hintText: LocaleKeys.password.tr(),
          obscureText: true,
          validator: (value) => (value?.isEmpty ?? true) ? LocaleKeys.passwordEmpty.tr() : null,
        ),
      ],
    ).then((result) {
      //If the user confirms the account deletion, then delete the account
      if (context.mounted) {
        final password = result!.first;
        context.read<AccountCubit>().deleteAccount(password: password);
      }
    });
  }
}
