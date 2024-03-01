import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../ui/presentation/widgets/background/background_image_wrapper.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/trip_stop.dart';
import '../cubit/trip_stop/trip_stop_cubit.dart';
import '../widgets/trip_stop_page/body/trip_stop_page_body.dart';

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
          child: const ScaffoldTransparent(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: _TripStopPageAppBar(),
            ),
            body: TripStopPageBody(),
          ),
        );
      }),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return context.read<TripStopCubit>().saveTripStopNote(forced: true);
  }
}

class _TripStopPageAppBar extends StatelessWidget with BackgroundImageMixin {
  const _TripStopPageAppBar();

  @override
  Widget build(BuildContext context) {
    final name = context.select((TripStopCubit cubit) => cubit.state.tripStop.name);
    final hasBackgroundImage = this.hasBackgroundImage(context);

    return AppBar(
      title: Text(name),
      scrolledUnderElevation: hasBackgroundImage ? 0 : null,
      backgroundColor: context.isDarkMode ? appBarDarkColor : appBarLightColor,
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<TripStopCubit>().edit(),
        ),
      ],
    );
  }
}
