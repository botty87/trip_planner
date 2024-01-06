
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../trips/domain/entities/trip.dart';
import '../cubit/discover_new_trips_cubit.dart';

part '../widgets/discover_new_trips_body.dart';
part '../widgets/discover_new_trips_list.dart';
part '../widgets/discover_new_trips_search_bar.dart';
part '../widgets/trip_card.dart';

@RoutePage()
class DiscoverNewTripsPage extends StatelessWidget {
  const DiscoverNewTripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DiscoverNewTripsCubit>(
      create: (context) => getIt<DiscoverNewTripsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.discoverNewTrips.tr()),
        ),
        body: const _DiscoverNewTripBody(),
      ),
    );
  }
}
