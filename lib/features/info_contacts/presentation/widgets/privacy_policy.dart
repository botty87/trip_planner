part of '../pages/info_contacts_page.dart';

class _PrivacyPolicy extends StatelessWidget {
  const _PrivacyPolicy();

  @override
  Widget build(BuildContext context) {
    final webController = getIt<WebViewController>()
      ..loadRequest(Uri.parse(
          'https://doc-hosting.flycricket.io/trip-planner-privacy-policy/ce4b07bb-e4f5-463e-9984-f0f8d28f445d/privacy'));
    return Expanded(
      child: WebViewWidget(controller: webController),
    );
  }
}
