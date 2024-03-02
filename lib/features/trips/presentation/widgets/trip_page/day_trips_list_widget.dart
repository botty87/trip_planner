import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../ui/presentation/widgets/generics/transparent_list_decorator.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../cubit/trip/trip_cubit.dart';
import 'day_trip_card.dart';

class DayTripsListWidget extends HookWidget {
  final Orientation orientation;
  const DayTripsListWidget({super.key, required this.orientation});

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousHasDayTrips = usePrevious(context.select<TripCubit, bool?>(
        (cubit) => cubit.state.whenOrNull(loaded: (trip, dayTrips) => dayTrips.isNotEmpty)));

    final hasDayTrips = context.select((TripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.dayTrips.isNotEmpty,
          orElse: () => previousHasDayTrips ?? false,
        ));

    if (hasDayTrips) {
      return const Padding(
        padding: EdgeInsets.only(bottom: verticalSpaceXs),
        child: DayTripsList(),
      );
    } else {
      return orientation == Orientation.portrait ? const SizedBox.shrink() : const NoDayTrips();
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
    final previousDayTrips = usePrevious(
        context.read<TripCubit>().state.whenOrNull(loaded: (trip, dayTrips) => dayTrips));

    final dayTrips = context.select((TripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.dayTrips,
          orElse: () => previousDayTrips ?? [],
        ));

    final tripStartDate = context.select((TripCubit cubit) => cubit.state.trip.startDate);

    return ImplicitlyAnimatedReorderableList<DayTrip>(
      shrinkWrap: true,
      items: dayTrips,
      itemBuilder: (context, itemAnimation, dayTrip, index) {
        // Each item must be wrapped in a Reorderable widget.
        return Reorderable(
          // Each item must have an unique key.
          key: ValueKey(dayTrip.id),
          builder: (context, dragAnimation, inDrag) {
            return SizeFadeTransition(
              animation: itemAnimation,
              child: Padding(
                padding: const EdgeInsets.only(bottom: verticalSpace),
                child: TransparentListDecorator(
                  animation: dragAnimation,
                  child: DayTripCard(
                    dayTrip: dayTrip,
                    tripStartDate: tripStartDate,
                  ),
                ),
              ),
            );
          },
        );
      },
      areItemsTheSame: (oldItem, newItem) => oldItem == newItem,
      onReorderFinished: (item, from, to, newItems) {
        if (!listEquals(dayTrips, newItems)) {
          context.read<TripCubit>().reorderDayTrips(from, to, newItems);
        }
      },
    );
  }
}
