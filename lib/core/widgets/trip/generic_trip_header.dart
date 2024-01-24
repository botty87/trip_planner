import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:text_link/text_link.dart';

import '../../constants.dart';

class GenericTripDescription extends StatelessWidget {
  //TODO remove nullable
  final String? headerText;

  const GenericTripDescription({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Linkify(
      onOpen: (link) async {
        if (!await launchUrl(Uri.parse(link.url))) {
          throw Exception('Could not launch ${link.url}');
        }
      },
      text: headerText!,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.justify,
    );
  }
}
