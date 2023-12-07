import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:text_link/text_link.dart';

import '../../constants.dart';

abstract base class GenericTripDescription extends StatelessWidget {
  final String? headerText;

  const GenericTripDescription({super.key, this.headerText});

  @override
  Widget build(BuildContext context) {
    return headerText != null
        ? Padding(
            padding: const EdgeInsets.only(bottom: verticalSpaceS),
            child: Linkify(
              onOpen: (link) async {
                if (!await launchUrl(Uri.parse(link.url))) {
                  throw Exception('Could not launch ${link.url}');
                }
              },
              text: headerText!,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          )
        : const SizedBox.shrink();
  }
}
