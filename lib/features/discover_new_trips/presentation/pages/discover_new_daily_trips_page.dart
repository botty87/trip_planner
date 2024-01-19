import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/widgets/trip/generic_trip_card.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trips/domain/entities/trip.dart';
import '../cubit/daily_trips/discover_new_daily_trips_cubit.dart';

part '../widgets/daily_trips/day_trip_card.dart';
part '../widgets/daily_trips/discover_new_daily_trips_body.dart';
part '../widgets/daily_trips/discover_new_daily_trips_error_widget.dart';
part '../widgets/daily_trips/discover_new_daily_trips_list.dart';

@RoutePage()
class DiscoverNewDailyTripsPage extends StatelessWidget {
  final Trip _trip;
  const DiscoverNewDailyTripsPage({
    super.key,
    required Trip trip,
  }) : _trip = trip;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DiscoverNewDailyTripsCubit>(
      create: (context) => getIt<DiscoverNewDailyTripsCubit>(param1: _trip.id)..fetchDayTrips(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(_trip.name),
          ),
          body: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.direction == ScrollDirection.reverse) {
                context.read<DiscoverNewDailyTripsCubit>().hideFab();
              } else if (notification.direction == ScrollDirection.forward) {
                context.read<DiscoverNewDailyTripsCubit>().showFab();
              }
              return true;
            },
            child: _DiscoverNewDailyTripsBody(
              trip: _trip,
            ),
          ),
          floatingActionButton:
              BlocSelector<DiscoverNewDailyTripsCubit, DiscoverNewDailyTripsState, bool>(
            selector: (state) {
              return state.maybeMap(
                loaded: (state) => state.isFabVisible,
                orElse: () => false,
              );
            },
            builder: (context, showFab) {
              return AnimatedSlide(
                duration: const Duration(milliseconds: 300),
                offset: showFab ? Offset.zero : const Offset(0, 2),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: showFab ? 1 : 0,
                  child: FloatingActionButton(
                    child: Icon(MdiIcons.earthPlus),
                    onPressed: () => context.router.push(NewTripRoute(existingTrip: _trip)),
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
