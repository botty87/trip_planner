part of '../../pages/account_page.dart';

_showReauthenticationModalBottom(BuildContext context) {
  final cubit = context.read<AccountCubit>();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
    builder: (context) {
      //Reauthentication modal bottom
      //Column with title to request reauthentication and email and password fields
      return SafeArea(
        minimum: const EdgeInsets.only(left: pageHorizontalPadding, right: pageHorizontalPadding, bottom: verticalSpaceL),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: verticalSpaceL),
            Text(
              LocaleKeys.reauthenticate.tr(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: verticalSpaceL),
            TextFormField(
              key: const Key('reauth_email_text_field'),
              decoration: InputDecoration(
                labelText: LocaleKeys.email.tr(),
              ),
              textInputAction: TextInputAction.next,
              onChanged: (value) {},
              autofillHints: const [AutofillHints.email],
            ),
            const SizedBox(height: verticalSpace),
            PasswordTextFormField(
              key: const Key('reauth_password_text_field'),
              decoration: InputDecoration(
                labelText: LocaleKeys.password.tr(),
              ),
              onChanged: (value) {},
              initialObscurity: true,
              textInputAction: TextInputAction.done,
              autofillHints: const [AutofillHints.password],
            ),
            const SizedBox(height: verticalSpaceL),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  key: const Key('reauth_cancel_button'),
                  onPressed: () {
                    cubit.cancelReauthentication();
                    Navigator.of(context).pop();
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
      );
    },
  );
}
