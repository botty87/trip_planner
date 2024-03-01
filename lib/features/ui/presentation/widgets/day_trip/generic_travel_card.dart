import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../trip_stops/domain/entities/trip_stop.dart';

class GenericTravelCard extends StatelessWidget {
  final TripStop tripStop;
  final VoidCallback onTap;

  const GenericTravelCard({
    super.key,
    required this.tripStop,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        _Button(tripStop: tripStop, onTap: onTap),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  final TripStop tripStop;
  final VoidCallback onTap;

  const _Button({required this.tripStop, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.6),
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Center(
          child: Builder(builder: (context) {
            final String travelTimeText;
            final travelTime = tripStop.travelTimeToNextStop;
            if (travelTime < 60) {
              travelTimeText = '$travelTime min';
            } else {
              final int hours = travelTime ~/ 60;
              final int minutes = travelTime % 60;
              final hoursText = LocaleKeys.hour.plural(hours);
              if (minutes != 0) {
                travelTimeText = '$hoursText\n$minutes min';
              } else {
                travelTimeText = hoursText;
              }
            }
            return Text(
              travelTimeText,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            );
          }),
        ),
      ),
    );
  }
}
