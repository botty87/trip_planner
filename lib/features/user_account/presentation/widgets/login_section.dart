part of '../pages/login_signup_page.dart';

class _LoginSection extends StatelessWidget {
  const _LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture(
          AssetBytesLoader(Assets.svg.loginSvg),
          height: 200,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: LocaleKeys.email.tr(),
          ),
        ),
        SizedBox(height: VERTICAL_SPACE),
        TextField(
          decoration: InputDecoration(
            labelText: LocaleKeys.password.tr(),
          ),
        ),
        SizedBox(height: VERTICAL_SPACE),
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
