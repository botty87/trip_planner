import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reorderables/reorderables.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../gen/assets.gen.dart';
import '../../cubit/trip/trip_cubit.dart';
import 'day_trip_card.dart';

class DayTripsListWidget extends HookWidget {
  final Orientation orientation;
  const DayTripsListWidget({super.key, required this.orientation});

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousHasDayTrips = usePrevious(context
        .select<TripCubit, bool?>((cubit) => cubit.state.whenOrNull(loaded: (trip, dayTrips) => dayTrips.isNotEmpty)));

    final hasDayTrips = context.select((TripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.dayTrips.isNotEmpty,
          orElse: () => previousHasDayTrips ?? false,
        ));

    if (hasDayTrips) {
      return const SliverPadding(
        padding: EdgeInsets.only(bottom: verticalSpaceXs),
        sliver: DayTripsList(),
      );
    } else {
      return SliverFillRemaining(
          child: orientation == Orientation.portrait ? const SizedBox.shrink() : const NoDayTrips());
    }
  }
}

class NoDayTrips extends StatelessWidget {
  const NoDayTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: defaultPagePadding,
        child: Column(
          children: [
            Expanded(child: SvgPicture(AssetBytesLoader(Assets.svg.noTripsSvg))),
            const SizedBox(height: verticalSpaceL),
            Text(
              LocaleKeys.noDayTripsYetAddOne.tr(),
              style: GoogleFonts.caveat(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}

class DayTripsList extends HookWidget {
  const DayTripsList({super.key});

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousDayTrips =
        usePrevious(context.read<TripCubit>().state.whenOrNull(loaded: (trip, dayTrips) => dayTrips));

    final dayTrips = context.select((TripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.dayTrips,
          orElse: () => previousDayTrips ?? [],
        ));

    final tripStartDate = context.select((TripCubit cubit) => cubit.state.trip.startDate);

    return ReorderableSliverList(
      delegate: ReorderableSliverChildBuilderDelegate(
        (context, index) {
          final dayTrip = dayTrips[index];
          //Add padding to the card to make it look better, except for the last one
          return Padding(
            padding:
                index == dayTrips.length - 1 ? EdgeInsets.zero : const EdgeInsets.symmetric(vertical: verticalSpaceS),
            child: DayTripCard(
              key: ValueKey(dayTrip.id),
              dayTrip: dayTrip,
              tripStartDate: tripStartDate,
            ),
          );
        },
        childCount: dayTrips.length,
      ),
      onReorder: (oldIndex, newIndex) {
        context.read<TripCubit>().reorderDayTrips(oldIndex, newIndex);
      },
    );
  }
}
