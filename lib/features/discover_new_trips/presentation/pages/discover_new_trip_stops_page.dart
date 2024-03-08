import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../core/utilities/pair.dart';
import '../../../ui/presentation/widgets/day_trip/generic_travel_card.dart';
import '../../../ui/presentation/widgets/day_trip/trip_stop_start_end_time_mixin.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../ui/presentation/widgets/trip/generic_trip_card.dart';
import '../../../ui/presentation/widgets/trip/generic_trip_description.dart';
import '../../../ui/presentation/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../map/domain/entities/map_place.dart';
import '../../../map/presentation/widgets/map_widget.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../cubit/trip_stops/discover_new_trip_stops_cubit.dart';

part '../widgets/trip_stops/discover_new_trip_stops_body.dart';
part '../widgets/trip_stops/discover_new_trip_stops_error_widget.dart';
part '../widgets/trip_stops/list/discover_new_trip_stops_list.dart';
part '../widgets/trip_stops/list/list_view.dart';
part '../widgets/trip_stops/list/travel_card.dart';
part '../widgets/trip_stops/list/trip_stop_card.dart';
part '../widgets/trip_stops/list/trip_stops_header.dart';
part '../widgets/trip_stops/map/discover_new_trip_stops_map_tab.dart';

@RoutePage()
class DiscoverNewTripStopsPage extends StatelessWidget {
  final Trip _trip;
  final DayTrip _dayTrip;
  const DiscoverNewTripStopsPage({
    super.key,
    required Trip trip,
    required DayTrip dayTrip,
  })  : _dayTrip = dayTrip,
        _trip = trip;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DiscoverNewTripStopsCubit>(
      create: (context) =>
          getIt<DiscoverNewTripStopsCubit>(param1: _trip.id, param2: _dayTrip.id)..fetchTripStops(),
      child: BlocSelector<DiscoverNewTripStopsCubit, DiscoverNewTripStopsState, bool>(
        selector: (state) {
          return state.maybeMap(
            loaded: (_) => true,
            orElse: () => false,
          );
        },
        builder: (context, isLoaded) {
          final cubit = context.read<DiscoverNewTripStopsCubit>();
          final hasTripStops = cubit.state.maybeMap(
            loaded: (state) => state.tripStops.isNotEmpty,
            orElse: () => false,
          );
          final int tabsLength = (isLoaded && hasTripStops) ? 2 : 0;

          return DefaultTabController(
            length: tabsLength,
            child: ScaffoldTransparent(
              appBar: AppBar(
                backgroundColor: context.appBarColor,
                title: Text("${LocaleKeys.day.tr()} ${_dayTrip.index + 1}"),
                bottom: tabsLength > 0
                    ? TabBar(
                        tabs: [
                          Tab(text: LocaleKeys.list.tr()),
                          Tab(text: LocaleKeys.map.tr()),
                        ],
                      )
                    : null,
              ),
              body: _DiscoverNewTripStopsBody(dayTrip: _dayTrip),
            ),
          );
        },
      ),
    );
  }
}
