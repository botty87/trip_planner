part of '../../pages/account_page.dart';

_showReauthenticationModalBottom(BuildContext context) {
  final cubit = context.read<AccountCubit>();

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
    useRootNavigator: true,
    builder: (context) {
      //Reauthentication modal bottom
      //Column with title to request reauthentication and email and password fields
      return SafeArea(
        minimum: defaultPagePadding,
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.reauthenticate.tr(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: verticalSpaceL),
              _SavingProgressBar(cubit: cubit),
              const SizedBox(height: verticalSpace),
              PasswordTextFormField(
                key: const Key('reauth_password_text_field'),
                decoration: InputDecoration(
                  labelText: LocaleKeys.password.tr(),
                ),
                onChanged: (value) => cubit.onReauthPasswordChanged(value),
                initialObscurity: true,
                textInputAction: TextInputAction.done,
                autofillHints: const [AutofillHints.password],
                onFieldSubmitted: (_) => cubit.reauthenticate(),
              ),
              const SizedBox(height: verticalSpaceL),
              _ErrorBox(cubit: cubit),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    key: const Key('reauth_cancel_button'),
                    onPressed: () {
                      cubit.cancelReauthentication();
                    },
                    child: Text(LocaleKeys.cancel.tr()),
                  ),
                  const SizedBox(width: horizontalSpaceL),
                  TextButton(
                    key: const Key('reauth_save_button'),
                    onPressed: () => cubit.reauthenticate(),
                    child: Text(LocaleKeys.login.tr()),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

class _ErrorBox extends HookWidget {
  final AccountCubit cubit;
  const _ErrorBox({required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AccountCubit, AccountState, String?>(
      bloc: cubit,
      selector: (state) => state.errorMessage,
      builder: (context, errorMessage) {
        return AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: _buildErrorBox(context, errorMessage),
        );
      },
    );
  }

  Widget _buildErrorBox(BuildContext context, String? errorString) {
    return Visibility(
      visible: errorString != null,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              errorString ?? '',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
            ),
          ).animate().shake(duration: const Duration(milliseconds: 600)),
          const SizedBox(height: verticalSpaceL),
        ],
      ),
    );
  }
}

class _SavingProgressBar extends StatelessWidget {
  final AccountCubit cubit;
  const _SavingProgressBar({required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AccountCubit, AccountState, bool>(
      bloc: cubit,
      selector: (state) =>
          false ||
          state.maybeMap(
            reauthenticating: (state) => state.isSaving,
            orElse: () => false,
          ),
      builder: (context, isSaving) {
        return Visibility(
          visible: isSaving,
          child: const LinearProgressIndicator(minHeight: 1),
        );
      },
    );
  }
}
