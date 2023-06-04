part of '../pages/login_signup_page.dart';

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
            return TextField(
              key: const Key('signup_password_text_field'),
              decoration: InputDecoration(
                labelText: LocaleKeys.confirmPassword.tr(),
                errorText: passwordError,
              ),
              onChanged: cubit.confirmPasswordChanged,
            );
          },
        ),
        SizedBox(height: VERTICAL_SPACE),
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
            );
          },
        ),
        SizedBox(height: VERTICAL_SPACE_L),
        BlocSelector<LoginSignupCubit, LoginSignupState, bool>(
          selector: (state) {
            return state.isLoading;
          },
          builder: (context, isLoading) {
            return ElevatedButton(
              key: const Key('signup_button'),
              onPressed: isLoading
                  ? null
                  : () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      cubit.signUp();
                    },
              child: Text(LocaleKeys.register.tr()),
            );
          },
        ),
      ],
    );
  }
}
