import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/core/routes/app_router.gr.dart';
import 'package:trip_planner/features/trips/presentation/widgets/no_trips_widget.dart';

@RoutePage()
class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.tripsPageTitle.tr()),
        ),
        body: NoTripsWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushRoute(NewTripRoute());
          },
          child: Icon(Icons.add),
        ));
  }
}
