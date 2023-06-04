part of '../pages/login_signup_page.dart';

class _SignUpSection extends StatelessWidget {
  const _SignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: LocaleKeys.confirmPassword.tr(),
          ),
        ),
        SizedBox(height: VERTICAL_SPACE),
        TextField(
          decoration: InputDecoration(
            labelText: LocaleKeys.name.tr(),
          ),
        ),
        SizedBox(height: VERTICAL_SPACE_L),
        ElevatedButton(
          onPressed: () {
            //context.router.push(SignupRoute());
          },
          child: Text(LocaleKeys.register.tr()),
        ),
      ],
    );
  }
}
