part of '../../pages/login_signup_page.dart';

class _LoginSection extends StatelessWidget {
  const _LoginSection();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginSignupCubit>();

    return Column(
      children: [
        BlocSelector<LoginSignupCubit, LoginSignupState, String?>(
          selector: (state) {
            return state.emailError;
          },
          builder: (context, emailError) {
            return TextField(
              key: const Key('login_email_text_field'),
              decoration: InputDecoration(
                labelText: LocaleKeys.email.tr(),
                errorText: emailError,
              ),
              onChanged: cubit.emailChanged,
              textInputAction: TextInputAction.next,
              autofillHints: const [AutofillHints.username],
              keyboardType: TextInputType.emailAddress,
            );
          },
        ),
        const SizedBox(height: verticalSpace),
        BlocSelector<LoginSignupCubit, LoginSignupState, String?>(
          selector: (state) {
            return state.passwordError;
          },
          builder: (context, passwordError) {
            return PasswordTextField(
              key: const Key('login_password_text_field'),
              decoration: InputDecoration(
                labelText: LocaleKeys.password.tr(),
                errorText: passwordError,
              ),
              onChanged: cubit.passwordChanged,
              initialObscurity: true,
              textInputAction: TextInputAction.done,
              autofillHints: const [AutofillHints.password],
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
              onPressed: isLoading
                  ? null
                  : () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      cubit.login();
                    },
              child: Text(LocaleKeys.login.tr()),
            );
          },
        ),
        const SizedBox(height: verticalSpace),
        BlocSelector<LoginSignupCubit, LoginSignupState, bool>(
          selector: (state) {
            return state.isLoading;
          },
          builder: (context, state) {
            return TextButton(
              onPressed: state
                  ? null
                  : () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      cubit.recoverUserPassword();
                    },
              child: Text(LocaleKeys.recoverPassword.tr()),
            );
          },
        ),
      ],
    );
  }
}
