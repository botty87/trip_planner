part of '../pages/login_signup_page.dart';

class _SignUpSection extends StatelessWidget {
  const _SignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //context.router.push(SignupRoute());
      },
      child: Text(LocaleKeys.register.tr()),
    );
  }
}