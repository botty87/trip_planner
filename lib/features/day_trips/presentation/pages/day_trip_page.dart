import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:time_picker/time_picker.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/widgets/trip/delete_trip_button.dart';
import '../../../../core/widgets/trip/generic_trip_card.dart';
import '../../../../core/widgets/trip/save_cancel_edit_buttons.dart';
import '../../domain/entities/day_trip.dart';
import '../cubit/day_trip/cubit/day_trip_cubit.dart';
import '../widgets/new_edit_day_trip_form/new_edit_day_trip_form.dart';
import '../../../trips/domain/entities/trip.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/widgets/trip/add_destination_card.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../core/widgets/transparent_list_decorator.dart';
import '../../../../core/widgets/trip/generic_trip_header.dart';
import '../../../../gen/assets.gen.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';

part '../widgets/day_trip_page/add_day_trip_stop_card.dart';
part '../widgets/day_trip_page/day_date_widget.dart';
part '../widgets/day_trip_page/day_trip_description.dart';
part '../widgets/day_trip_page/day_trip_header.dart';
part '../widgets/day_trip_page/day_trip_page_body.dart';
part '../widgets/day_trip_page/trip_stops_list.dart';
part '../widgets/day_trip_page/save_cancel_edit_buttons.dart';
part '../widgets/day_trip_page/delete_trip_button.dart';
part '../widgets/day_trip_page/trip_stop_card.dart';
part '../widgets/day_trip_page/start_time_widget.dart';

@RoutePage()
class DayTripPage extends StatelessWidget {
  final Trip _trip;
  final DayTrip _dayTrip;

  const DayTripPage({super.key, required Trip trip, required DayTrip dayTrip})
      : _trip = trip,
        _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DayTripCubit>(
      create: (context) => getIt(param1: _trip, param2: _dayTrip),
      child: Builder(
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () => _onWillPop(context),
            child: const Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: _DayTripPageAppBar(),
              ),
              body: _DayTripPageBody(),
            ),
          );
        },
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    if (!context.read<DayTripCubit>().state.hasStartTimeToSave) {
      return true;
    }

    return context.read<DayTripCubit>().saveDayTripStopStartTime(forced: true);
  }
}

class _DayTripPageAppBar extends StatelessWidget {
  const _DayTripPageAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("${LocaleKeys.day.tr()} ${context.read<DayTripCubit>().state.dayTrip.index + 1}"),
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<DayTripCubit>().edit(),
        ),
      ],
    );
  }
}
