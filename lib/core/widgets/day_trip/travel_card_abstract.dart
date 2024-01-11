import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../features/trip_stops/domain/entities/trip_stop.dart';

abstract class TravelCardAbstract extends StatelessWidget {
  final TripStop tripStop;
  Function(BuildContext context) get onTap;

  const TravelCardAbstract({super.key, required this.tripStop});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        GestureDetector(
          onTap: () => onTap(context),
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
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
        ),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
      ],
    );
  }
}
