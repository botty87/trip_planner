part of '../pages/info_contacts_page.dart';

class _DevelopedBy extends StatelessWidget {
  const _DevelopedBy();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: LocaleKeys.developedBy.tr(),
              ),
              const TextSpan(text: ' '),
              TextSpan(
                text: 'Bottichio Marco',
                style: TextStyle(color: Colors.blue[700]),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launchUrl(Uri.parse('https://github.com/botty87'));
                  },
              ),
            ],
          ),
        ),
        const SizedBox(height: verticalSpaceS),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: LocaleKeys.forInformationAndTroubleshooting.tr(),
              ),
              const TextSpan(text: ' '),
              TextSpan(
                text: 'trip.planner@pm.me',
                style: TextStyle(
                  color: Colors.blue[700],
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launchUrl(Uri(
                        scheme: 'mailto',
                        path: 'trip.planner@pm.me',
                        query: _encodeQueryParameters(<String, String>{
                        'subject': 'Trip Planner',
                      }),
                    ));
                  },
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
