import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/core/routes/app_router.gr.dart';
import 'package:trip_planner/core/widgets/stateless_cubit_widget.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/no_trips_widget.dart';

import '../widgets/trips_list_widget.dart';

@RoutePage()
class TripsPage extends StatelessCubitWidget<TripsCubit> {
  TripsPage({super.key, super.cubit});

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
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
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final areTripsEmpty = context.select((TripsCubit cubit) => cubit.state.trips.isEmpty);
    if (areTripsEmpty) {
      return const NoTripsWidget();
    } else {
      return const TripsListWidget();
    }
  }
}