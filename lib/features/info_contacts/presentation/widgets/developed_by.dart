part of '../pages/info_contacts_page.dart';

class _DevelopedBy extends StatelessWidget {
  final Orientation orientation;
  const _DevelopedBy({required this.orientation});

  @override
  Widget build(BuildContext context) {
    final lineSeparator = orientation == Orientation.portrait ? '\n' : ' ';

    return Text.rich(
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
          const TextSpan(text: '.'),
          TextSpan(text: lineSeparator),
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
          const TextSpan(text: '.'),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
