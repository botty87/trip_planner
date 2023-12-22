import 'package:duration_picker/duration_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

class TravelCard extends StatelessWidget {
  final TripStop tripStop;
  const TravelCard({super.key, required this.tripStop});

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
          onTap: () async {
            final travelTime = await showDurationPicker(
                context: context, initialTime: Duration(minutes: tripStop.travelTimeToNextStop));
            if (travelTime != null && context.mounted) {
              context
                  .read<DayTripCubit>()
                  .updateTravelTimeToNextStop(tripStop.id, travelTime.inMinutes);
            }
          },
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
