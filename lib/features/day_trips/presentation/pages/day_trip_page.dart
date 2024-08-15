import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../ui/widgets/background/scaffold_transparent.dart';
import '../../../../ui/widgets/generics/snackbars.dart';
import '../../../../ui/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/day_trip.dart';
import '../cubit/day_trip/day_trip_cubit.dart';
import '../cubit/trip_stops_map/trip_stops_map_cubit.dart';
import '../widgets/day_trip_page/day_trip_error_widget.dart';
import '../widgets/day_trip_page/body/day_trip_page_body.dart';
import '../widgets/day_trip_page/day_trip_page_initial_widget.dart';
import '../widgets/day_trip_page/day_trip_page_loaded.dart';
import '../widgets/day_trip_page/list_tab/save_cancel_edit_buttons.dart';
import '../widgets/new_edit_day_trip_form/new_edit_day_trip_form.dart';

@RoutePage()
class DayTripPage extends HookWidget {
  const DayTripPage({super.key, required Trip trip, required DayTrip dayTrip})
      : _trip = trip,
        _dayTrip = dayTrip;

  final Trip _trip;
  final DayTrip _dayTrip;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DayTripCubit>(create: (context) => getIt(param1: _trip, param2: _dayTrip)),
        BlocProvider<TripStopsMapCubit>(
          create: (context) => getIt(param1: _trip, param2: _dayTrip),
        ),
      ],
      child: const DayTripPageBody(),
    );
  }
}

