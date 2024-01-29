import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/pair.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../core/widgets/trip/generic_trip_card.dart';
import '../../../../core/widgets/trip/save_cancel_edit_buttons.dart';
import '../../../../core/widgets/trip_pages_animated_switcher.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/day_trip.dart';
import '../../domain/entities/trip_stops_directions.dart';
import '../cubit/day_trip/day_trip_cubit.dart';
import '../cubit/trip_stops_map/trip_stops_map_cubit.dart';
import '../widgets/day_trip_page/day_trip_page_initial_widget.dart';
import '../widgets/day_trip_page/day_trip_page_loaded.dart';

part '../widgets/day_trip_page/list_tab/save_cancel_edit_buttons.dart';
part '../widgets/day_trip_page/list_tab/trip_stop_card.dart';
part '../widgets/day_trip_page/map_tab/map_directions_loader.dart';
part '../widgets/day_trip_page/map_tab/map_directions_switcher.dart';
part '../widgets/day_trip_page/map_tab/map_view_widget.dart';
part '../widgets/day_trip_page/map_tab/map_widget.dart';

@RoutePage()
class DayTripPage extends StatelessWidget {
  final Trip _trip;
  final DayTrip _dayTrip;

  const DayTripPage({super.key, required Trip trip, required DayTrip dayTrip})
      : _trip = trip,
        _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DayTripCubit>(
          create: (context) => getIt(param1: _trip, param2: _dayTrip)
            ..startListenTripStops()
            ..startListenDayTrip(),
        ),
        BlocProvider<TripStopsMapCubit>(
          create: (context) => getIt(param1: _trip, param2: _dayTrip),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return PopScope(
            canPop: false,
            onPopInvoked: (bool didPop) async {
              if (didPop) {
                return;
              }

              final success = await _onWillPop(context);

              if (success && context.mounted) {
                Navigator.of(context).pop();
              }
            },
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: _buildAppBar(context),
                body: Builder(builder: (context) {
                  return NotificationListener(
                    onNotification: (notification) {
                      if (notification is ScrollEndNotification) {
                        final tabIndex = DefaultTabController.of(context).index;
                        context.read<TripStopsMapCubit>().selectTab(tabIndex == 1);
                      }
                      return true;
                    },
                    child: BlocBuilder<DayTripCubit, DayTripState>(
                      buildWhen: (previous, current) => current.maybeMap(
                        deleting: (_) => false,
                        error: (state) => state.fatal,
                        deleted: (_) => false,
                        orElse: () =>
                            previous.runtimeType != current.runtimeType &&
                            previous.maybeMap(
                              error: (value) => value.fatal,
                              orElse: () => true,
                            ) &&
                            current.maybeMap(
                              editing: (_) => false,
                              orElse: () => true,
                            ),
                      ),
                      builder: (context, state) {
                        return TripPagesAnimatedSwitcher(
                          child: state.maybeMap(
                            initial: (_) =>
                                const DayTripPageInitialWidget(key: ValueKey('initial')),
                            loaded: (_) =>
                                const Center(key: ValueKey('loaded'), child: DayTripPageLoaded()),
                            /* error: (state) => Center(
                              key: const ValueKey('error'),
                              child: TripErrorWidget(message: state.errorMessage),
                            ), */
                            orElse: () => throw UnimplementedError(),
                          ),
                        );
                      },
                    ),
                  );
                }),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return context.read<DayTripCubit>().saveDayTripStopStartTime(forced: true);
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("${LocaleKeys.day.tr()} ${context.read<DayTripCubit>().state.dayTrip.index + 1}"),
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<DayTripCubit>().edit(),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.list, semanticLabel: LocaleKeys.list.tr())),
            Tab(icon: Icon(Icons.map, semanticLabel: LocaleKeys.map.tr())),
          ],
        ),
      ),
    );
  }
}
