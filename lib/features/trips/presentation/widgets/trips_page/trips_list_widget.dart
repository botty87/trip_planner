import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/trip_card.dart';

import '../../cubit/trips/trips_cubit.dart';

class TripsListWidget extends StatelessWidget {
  const TripsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final trips = context.select((TripsCubit cubit) => cubit.state.trips);

    return SafeArea(
      child: ListView.separated(
        padding: DEFAULT_PAGE_PADDING,
        itemCount: trips.length,
        itemBuilder: (context, index) => TripCard(trip: trips[index]),
        separatorBuilder: (BuildContext context, int index) => SizedBox(height: 8),
      ),
    );
  }
}
