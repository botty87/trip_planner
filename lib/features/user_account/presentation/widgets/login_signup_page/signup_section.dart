part of '../../pages/login_signup_page.dart';

class _SignUpSection extends StatelessWidget {
  const _SignUpSection();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginSignupCubit>();

    return Column(
      children: [
        BlocSelector<LoginSignupCubit, LoginSignupState, String?>(
          selector: (state) {
            return state.passwordError;
          },
          builder: (context, passwordError) {
            return PasswordTextField(
              key: const Key('signup_password_text_field'),
              decoration: InputDecoration(
                labelText: LocaleKeys.confirmPassword.tr(),
                errorText: passwordError,
              ),
              onChanged: cubit.confirmPasswordChanged,
              initialObscurity: true,
              textInputAction: TextInputAction.next,
              autofillHints: const [AutofillHints.newPassword],
            );
          },
        ),
        const SizedBox(height: verticalSpace),
        BlocSelector<LoginSignupCubit, LoginSignupState, String?>(
          selector: (state) {
            return state.nameError;
          },
          builder: (context, nameError) {
            return TextField(
              key: const Key('signup_name_text_field'),
              decoration: InputDecoration(
                labelText: LocaleKeys.name.tr(),
                errorText: nameError,
              ),
              onChanged: cubit.nameChanged,
              textInputAction: TextInputAction.done,
              autofillHints: const [AutofillHints.name],
              onSubmitted: (_) => _signUp(context),
            );
          },
        ),
        const SizedBox(height: verticalSpaceL),
        BlocSelector<LoginSignupCubit, LoginSignupState, bool>(
          selector: (state) {
            return state.isLoading;
          },
          builder: (context, isLoading) {
            return ElevatedButton(
              key: const Key('signup_button'),
              onPressed: isLoading ? null : () => _signUp(context),
              child: Text(LocaleKeys.register.tr()),
            );
          },
        ),
      ],
    );
  }

  _signUp(BuildContext context) {
    final cubit = context.read<LoginSignupCubit>();
    FocusManager.instance.primaryFocus?.unfocus();
    cubit.signUp();
  }
}
