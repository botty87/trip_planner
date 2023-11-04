import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_launcher/map_launcher.dart' hide MapType;

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../core/widgets/trip/generic_trip_header.dart';
import '../../../../core/widgets/trip/save_cancel_edit_buttons.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/trip_stop.dart';
import '../cubit/trip_stop/trip_stop_cubit.dart';
import '../../../../core/widgets/trip/delete_trip_button.dart';
import '../widgets/new_edit_trip_stop_form/new_edit_trip_stop_form.dart';

part '../widgets/trip_stop_page/trip_stop_page_body.dart';
part '../widgets/trip_stop_page/trip_stop_description.dart';
part '../widgets/trip_stop_page/trip_stop_done_widget.dart';
part '../widgets/trip_stop_page/map_widget.dart';
part '../widgets/trip_stop_page/trip_stop_duration_widget.dart';
part '../widgets/trip_stop_page/trip_stop_navigate_to_button.dart';
part '../widgets/trip_stop_page/trip_stop_note_widget.dart';
part '../widgets/trip_stop_page/delete_trip_stop_button.dart';
part '../widgets/trip_stop_page/save_cancel_edit_buttons.dart';

@RoutePage()
class TripStopPage extends StatelessWidget {
  final Trip _trip;
  final DayTrip _dayTrip;
  final TripStop _tripStop;

  const TripStopPage(
      {super.key, required Trip trip, required DayTrip dayTrip, required TripStop tripStop})
      : _trip = trip,
        _dayTrip = dayTrip,
        _tripStop = tripStop;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripStopCubit>(
      create: (context) => getIt(
        param1: TripStopCubitParams(
          trip: _trip,
          dayTrip: _dayTrip,
          tripStop: _tripStop,
        ),
      ),
      child: Builder(builder: (context) {
        return WillPopScope(
          onWillPop: () => _onWillPop(context),
          child: const Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: _TripStopPageAppBar(),
            ),
            body: _TripStopPageBody(),
          ),
        );
      }),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return context.read<TripStopCubit>().saveTripStopNote(forced: true);
  }
}

class _TripStopPageAppBar extends StatelessWidget {
  const _TripStopPageAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(context.read<TripStopCubit>().state.tripStop.name),
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<TripStopCubit>().edit(),
        ),
      ],
    );
  }
}
