import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../../core/constants.dart';
import '../../cubit/trips/trips_cubit.dart';
import 'trip_card.dart';

class TripsListWidget extends StatelessWidget {
  const TripsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final trips = context.select((TripsCubit cubit) => cubit.state.trips);

    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
            ? constraints.maxWidth * 0.8
            : constraints.maxWidth;

        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: ListView.separated(
            padding: defaultPagePadding,
            itemCount: trips.length,
            itemBuilder: (context, index) => TripCard(trip: trips[index]),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: verticalSpace),
          ),
        );
      }),
    );
  }
}
