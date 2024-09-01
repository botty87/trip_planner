import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants.dart';
import '../background/background_widget_container.dart';

class GenericTripDescription extends StatelessWidget {
  final String? description;
  final EdgeInsets contentPadding;
  final bool isScrollable;

  const GenericTripDescription({
    super.key,
    required this.description,
    this.contentPadding = const EdgeInsets.symmetric(vertical: verticalSpace),
    this.isScrollable = false,
  });

  @override
  Widget build(BuildContext context) {
    if (description?.isEmpty ?? true) {
      return const SizedBox.shrink();
    }

    return BackgroundWidgetContainer(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpace),
      child: SingleChildScrollView(
        padding: contentPadding,
        physics: isScrollable ? const BouncingScrollPhysics() : const NeverScrollableScrollPhysics(),
        child: Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          text: description!,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
