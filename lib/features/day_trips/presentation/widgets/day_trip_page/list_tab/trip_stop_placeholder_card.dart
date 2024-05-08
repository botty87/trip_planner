import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';

class TripStopPlaceholderCard extends StatelessWidget {
  final TripStopPlaceholder placeholder;

  const TripStopPlaceholderCard(this.placeholder, {super.key});

  @override
  Widget build(BuildContext context) {
    final name = placeholder.name.trim();
    return Container(
      width: 120,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceXs),
      decoration: BoxDecoration(
        color: Colors.yellow,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.6),
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name.isEmpty ? LocaleKeys.placeholder.tr() : name,
            style: Theme.of(context).textTheme.titleMedium,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '${placeholder.duration} min',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
