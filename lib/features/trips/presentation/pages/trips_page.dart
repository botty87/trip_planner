import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/core/routes/app_router.gr.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trips_page/no_trips_widget.dart';

import '../widgets/trips_page/trips_list_widget.dart';

@RoutePage()
class TripsPage extends StatelessWidget {
  TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripsCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.tripsPageTitle.tr()),
        ),
        body: const _BodyWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushRoute(NewTripRoute());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final areTripsEmpty = context.select<TripsCubit, bool>((cubit) => cubit.state.trips.isEmpty);
    return areTripsEmpty ? const NoTripsWidget() : const TripsListWidget();
  }
}
