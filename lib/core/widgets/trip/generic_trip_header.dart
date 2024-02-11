import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import '../background_container.dart';

class GenericTripDescription extends StatelessWidget with BackgroundImageMixin {
  final String? description;

  const GenericTripDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    final hasBackgroundImage = this.hasBackgroundImage(context);

    if (description?.isEmpty ?? true) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: verticalSpace),
      child: Container(
        decoration: hasBackgroundImage
            ? BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(8),
              )
            : null,
        padding: hasBackgroundImage
            ? const EdgeInsets.symmetric(
                horizontal: horizontalSpaceL,
                vertical: verticalSpaceL,
              )
            : const EdgeInsets.all(0),
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
