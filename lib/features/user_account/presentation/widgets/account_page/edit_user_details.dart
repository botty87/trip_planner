part of '../../pages/account_page.dart';

class _EditUserDetails extends StatelessWidget {
  const _EditUserDetails();

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
        children: [
          TextFormField(
            key: const Key('edit_name_text_field'),
            initialValue: user.name,
            decoration: InputDecoration(
              labelText: LocaleKeys.name.tr(),
            ),
            textInputAction: TextInputAction.next,
            onChanged: (value) => context.read<AccountCubit>().nameChanged(value),
            autofillHints: const [AutofillHints.name],
          ),
          const SizedBox(height: verticalSpaceL),
          TextFormField(
            key: const Key('edit_email_text_field'),
            initialValue: user.email,
            decoration: InputDecoration(
              labelText: LocaleKeys.email.tr(),
            ),
            textInputAction: TextInputAction.next,
            onChanged: (value) => context.read<AccountCubit>().emailChanged(value),
            autofillHints: const [AutofillHints.email],
          ),
          const SizedBox(height: verticalSpaceL),
          const _EditPassword(),
          const SizedBox(height: verticalSpaceL),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                key: const Key('cancel_button'),
                onPressed: () => context.read<AccountCubit>().cancel(),
                child: Text(LocaleKeys.cancel.tr()),
              ),
              ElevatedButton(
                key: const Key('save_button'),
                onPressed: () => context.read<AccountCubit>().save(),
                child: Text(LocaleKeys.save.tr()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
