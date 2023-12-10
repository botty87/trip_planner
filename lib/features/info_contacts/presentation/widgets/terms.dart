part of '../pages/info_contacts_page.dart';

class _Terms extends StatelessWidget {
  const _Terms();

  @override
  Widget build(BuildContext context) {
    final webController = getIt<WebViewController>()
      ..loadRequest(Uri.parse(
          'https://doc-hosting.flycricket.io/trip-planner-terms-of-use/36baf5ea-4081-4730-867c-92d40006a63a/terms'));
          return Expanded(
          child: WebViewWidget(controller: webController),
        );
  }
}
