import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/widgets/add_destination_card.dart';
import '../../../../core/widgets/transparent_list_decorator.dart';
import '../../../../gen/assets.gen.dart';

part '../widgets/day_trip_page/day_date_widget.dart';
part '../widgets/day_trip_page/trip_stops_list.dart';
part '../widgets/day_trip_page/day_trip_header.dart';
part '../widgets/day_trip_page/day_trip_description.dart';
part '../widgets/day_trip_page/add_day_trip_stop_card.dart';
part '../widgets/day_trip_page/day_trip_page_body.dart';

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
      child: const _DayTripPageBody(),
    );
  }
}
