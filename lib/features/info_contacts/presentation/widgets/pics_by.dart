part of '../pages/info_contacts_page.dart';

class _PicsBy extends StatelessWidget {
  const _PicsBy();
  
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: LocaleKeys.picsBy.tr(),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: 'Pexels',
            style: TextStyle(color: Colors.blue[700]),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launchUrl(Uri.parse('https://www.pexels.com')),
          ),
          const TextSpan(text: '.'),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}