part of '../../pages/account_page.dart';

class _EditPassword extends HookWidget {
  const _EditPassword();

  @override
  Widget build(BuildContext context) {
    final lastIsPasswordVisible = useRef<bool>(false);
    final isPasswordVisible = context.select((AccountCubit cubit) {
      return cubit.state.maybeMap(
        editing: (state) {
          lastIsPasswordVisible.value = state.isEditingPasswordVisible;
          return state.isEditingPasswordVisible;
        },
        orElse: () => lastIsPasswordVisible.value,
      );
    });

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: Column(
        children: [
          isPasswordVisible
              ? const SizedBox.shrink()
              : TextButton(
                  key: const Key('edit_password_button'),
                  onPressed: () => context.read<AccountCubit>().editPassword(),
                  child: Text(LocaleKeys.editPassword.tr()),
                ),
          isPasswordVisible ? const _EditPasswordFiels() : const SizedBox(width: double.infinity),
        ],
      ),
    );
  }
}

class _EditPasswordFiels extends StatelessWidget {
  const _EditPasswordFiels();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PasswordTextFormField(
          key: const Key('edit_password_text_field'),
          decoration: InputDecoration(
            labelText: LocaleKeys.newPassword.tr(),
          ),
          onChanged: (value) => context.read<AccountCubit>().passwordChanged(value),
          initialObscurity: true,
          textInputAction: TextInputAction.next,
          autofillHints: const [AutofillHints.newPassword],
        ),
        const SizedBox(height: verticalSpaceL),
        PasswordTextFormField(
          key: const Key('edit_confirm_password_text_field'),
          decoration: InputDecoration(
            labelText: LocaleKeys.confirmPassword.tr(),
          ),
          onChanged: (value) => context.read<AccountCubit>().confirmPasswordChanged(value),
          initialObscurity: true,
          textInputAction: TextInputAction.done,
          autofillHints: const [AutofillHints.newPassword],
          onFieldSubmitted: (_) => context.read<AccountCubit>().save(),
        ),
      ],
    );
  }
}
