import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/pair.dart';
import '../../../../core/widgets/custom_reorderable_list_view.dart';
import '../../../../core/widgets/day_trip/trip_stop_start_end_time_mixin.dart';
import '../../../../core/widgets/map/default_map_markers_finder.dart';
import '../../../../core/widgets/map/default_map_type_changer.dart';
import '../../../../core/widgets/map/default_map_zoom_buttons.dart';
import '../../../../core/widgets/map/map_view_mixin.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../core/widgets/transparent_list_decorator.dart';
import '../../../../core/widgets/trip/add_destination_card.dart';
import '../../../../core/widgets/trip/delete_trip_button.dart';
import '../../../../core/widgets/trip/generic_trip_card.dart';
import '../../../../core/widgets/trip/generic_trip_header.dart';
import '../../../../core/widgets/trip/save_cancel_edit_buttons.dart';
import '../../../../gen/assets.gen.dart';
import '../../../time_picker/widgets/timepicker.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/day_trip.dart';
import '../../domain/entities/trip_stops_directions.dart';
import '../cubit/day_trip/day_trip_cubit.dart';
import '../cubit/trip_stops_map/trip_stops_map_cubit.dart';
import '../widgets/day_trip_page/list_tab/travel_card.dart';
import '../widgets/new_edit_day_trip_form/new_edit_day_trip_form.dart';

part '../widgets/day_trip_page/list_tab/add_day_trip_stop_card.dart';
part '../widgets/day_trip_page/list_tab/day_trip_description.dart';
part '../widgets/day_trip_page/day_trip_page_body.dart';
part '../widgets/day_trip_page/list_tab/delete_trip_button.dart';
part '../widgets/day_trip_page/list_tab/list_view_widget.dart';
part '../widgets/day_trip_page/map_tab/map_view_widget.dart';
part '../widgets/day_trip_page/list_tab/save_cancel_edit_buttons.dart';
part '../widgets/day_trip_page/list_tab/start_time_widget.dart';
part '../widgets/day_trip_page/list_tab/trip_stop_card.dart';
part '../widgets/day_trip_page/list_tab/trip_stops_list.dart';
part '../widgets/day_trip_page/map_tab/map_markers_finder.dart';
part '../widgets/day_trip_page/map_tab/map_zoom_buttons.dart';
part '../widgets/day_trip_page/map_tab/map_type_changer.dart';
part '../widgets/day_trip_page/map_tab/map_widget.dart';
part '../widgets/day_trip_page/map_tab/map_directions_switcher.dart';
part '../widgets/day_trip_page/map_tab/map_directions_loader.dart';

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
          create: (context) => getIt(param1: _trip, param2: _dayTrip),
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
                appBar: AppBar(
                  title: Text(
                      "${LocaleKeys.day.tr()} ${context.read<DayTripCubit>().state.dayTrip.index + 1}"),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => context.read<DayTripCubit>().edit(),
                    ),
                  ],
                  bottom: TabBar(
                    tabs: [
                      Tab(text: LocaleKeys.list.tr()),
                      Tab(text: LocaleKeys.map.tr()),
                    ],
                  ),
                ),
                body: Builder(builder: (context) {
                  return NotificationListener(
                    onNotification: (notification) {
                      if (notification is ScrollEndNotification) {
                        final tabIndex = DefaultTabController.of(context).index;
                        context.read<TripStopsMapCubit>().selectTab(tabIndex == 1);
                      }
                      return true;
                    },
                    child: const _DayTripPageBody(),
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
}
