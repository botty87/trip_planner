part of '../pages/login_signup_page.dart';

class _LoginSection extends StatelessWidget {
  const _LoginSection();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginSignupCubit>();

    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: LocaleKeys.email.tr(),
          ),
          onChanged: cubit.emailChanged,
        ),
        SizedBox(height: VERTICAL_SPACE),
        TextField(
          decoration: InputDecoration(
            labelText: LocaleKeys.password.tr(),
          ),
          onChanged: cubit.passwordChanged,
        ),
        SizedBox(height: VERTICAL_SPACE_L),
        ElevatedButton(
          onPressed: () {
            //context.router.push(HomeRoute());
          },
          child: Text(LocaleKeys.login.tr()),
        ),
        SizedBox(height: VERTICAL_SPACE),
        TextButton(
          onPressed: () {
            //context.router.push(SignupRoute());
          },
          child: Text(LocaleKeys.recoverPassword.tr()),
        ),
      ],
    );
  }
}
