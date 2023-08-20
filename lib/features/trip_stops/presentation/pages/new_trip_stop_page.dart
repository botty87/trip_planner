import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/cubit/new_trip_stop_cubit.dart';

@RoutePage()
class NewTripStopPage extends StatelessWidget {
  final String _tripId;
  final String _dayTripId;

  const NewTripStopPage({super.key, required String trip, required String dayTrip})
      : _tripId = trip,
        _dayTripId = dayTrip;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewTripStopCubit>(
      create: (context) => getIt(param1: _tripId, param2: _dayTripId),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.newTripStop.tr()),
        ),
        body: const _NewTripStopPageBody(),
      ),
    );
  }
}

class _NewTripStopPageBody extends HookWidget {
  const _NewTripStopPageBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewTripStopCubit, NewTripStopState>(
      builder: (context, state) {
        return Container();
      },
    );
  }
}
