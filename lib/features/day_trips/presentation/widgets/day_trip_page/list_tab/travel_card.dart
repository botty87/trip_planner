import 'package:duration_picker/duration_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../ui/presentation/widgets/day_trip/generic_travel_card.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

class TravelCard extends StatelessWidget {
  final TripStop tripStop;

  const TravelCard({super.key, required this.tripStop});

  @override
  Widget build(BuildContext context) {
    return GenericTravelCard(
      tripStop: tripStop,
      onTap: () async {
        final travelTime = await showDurationPicker(
            context: context, initialTime: Duration(minutes: tripStop.travelTimeToNextStop));
        if (travelTime != null && context.mounted) {
          context
              .read<DayTripCubit>()
              .updateTravelTimeToNextStop(tripStop.id, travelTime.inMinutes);
        }
      },
    );
  }
}
