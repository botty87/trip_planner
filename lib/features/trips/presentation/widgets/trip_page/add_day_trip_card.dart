import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/routes/app_router.gr.dart';
import '../../../../ui/presentation/widgets/trip/add_destination_card.dart';
import '../../../../../gen/assets.gen.dart';
import '../../cubit/trip/trip_cubit.dart';

final class AddDayTripCard extends StatelessWidget {
  const AddDayTripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AddDestinationCard(
      assetName: Assets.svg.addDayTripSvg,
      title: LocaleKeys.addDayTrip.tr(),
      color: Colors.amberAccent[100]!,
      onTap: () =>
          context.router.push(NewDayTripRoute(tripId: context.read<TripCubit>().state.trip.id)),
    );
  }
}
