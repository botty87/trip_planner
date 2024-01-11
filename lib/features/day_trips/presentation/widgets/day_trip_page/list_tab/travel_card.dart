import 'package:duration_picker/duration_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/day_trip/travel_card_abstract.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

class TravelCard extends TravelCardAbstract {
  const TravelCard({super.key, required super.tripStop});

  @override
  Function(BuildContext context) get onTap => (context) async {
        final travelTime = await showDurationPicker(
            context: context, initialTime: Duration(minutes: super.tripStop.travelTimeToNextStop));
        if (travelTime != null && context.mounted) {
          context
              .read<DayTripCubit>()
              .updateTravelTimeToNextStop(super.tripStop.id, travelTime.inMinutes);
        }
      };
}
