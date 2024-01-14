import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/pair.dart';
import '../../../../core/widgets/day_trip/travel_card_abstract.dart';
import '../../../../core/widgets/day_trip/trip_stop_start_end_time_mixin.dart';
import '../../../../core/widgets/map/map_view_mixin.dart';
import '../../../../core/widgets/trip/generic_trip_card.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../map/presentation/widgets/map_widget.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../cubit/trip_stops/discover_new_trip_stops_cubit.dart';

part '../widgets/trip_stops/discover_new_trip_stops_body.dart';
part '../widgets/trip_stops/discover_new_trip_stops_error_widget.dart';
part '../widgets/trip_stops/list/discover_new_trip_stops_list.dart';
part '../widgets/trip_stops/list/travel_card.dart';
part '../widgets/trip_stops/list/trip_stop_card.dart';
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
          final int tabsLength = isLoaded ? 2 : 0;

          return DefaultTabController(
            length: tabsLength,
            child: Scaffold(
              appBar: AppBar(
                title: Text("${LocaleKeys.day.tr()} ${_dayTrip.index + 1}"),
                bottom: isLoaded
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
