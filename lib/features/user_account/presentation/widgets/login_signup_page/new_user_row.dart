part of '../../pages/login_signup_page.dart';

class _NewUserRow extends StatelessWidget {
  const _NewUserRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Theme.of(context).primaryColorDark)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            LocaleKeys.newHere.tr(),
            style: GoogleFonts.kaushanScript(
                fontSize: 18, color: Theme.of(context).colorScheme.tertiary),
          ),
        ),
        Expanded(child: Divider(color: Theme.of(context).primaryColorDark)),
      ],
    );
  }
}
