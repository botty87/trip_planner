import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../l10n/locale_keys.g.dart';

class GenericDurationWidget extends StatelessWidget {
  final int durationInMinutes;

  const GenericDurationWidget({super.key, required this.durationInMinutes});

  @override
  Widget build(BuildContext context) {
    final durationInHours = (durationInMinutes / 60).truncate();

    final String estimatedDurationText;

    if (durationInHours == 0) {
      estimatedDurationText = '${durationInMinutes.remainder(60)}m';
    } else {
      estimatedDurationText = '${durationInHours}h ${durationInMinutes.remainder(60)}m';
    }

    return Column(
      children: [
        Text(
          LocaleKeys.tripStopEstimatedDuration.tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          estimatedDurationText,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.grey[800],
                fontSize: 20,
              ),
        ),
      ],
    );
  }
}
