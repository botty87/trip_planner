import 'package:flutter/material.dart';

import '../../constants.dart';

abstract base class GenericTripHeader extends StatelessWidget {
  final String? headerText;

  const GenericTripHeader({super.key, this.headerText});

  @override
  Widget build(BuildContext context) {
    return headerText != null
        ? Padding(
            padding: const EdgeInsets.only(bottom: verticalSpaceS),
            child: Text(
              headerText!,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          )
        : const SizedBox.shrink();
  }
}
