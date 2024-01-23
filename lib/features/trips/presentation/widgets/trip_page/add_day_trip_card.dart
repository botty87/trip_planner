
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/routes/app_router.gr.dart';
import '../../../../../core/widgets/trip/add_destination_card.dart';
import '../../../../../gen/assets.gen.dart';
import '../../cubit/trip/trip_cubit.dart';

final class AddDayTripCard extends AddDestinationCard {
  const AddDayTripCard({super.key});

  @override
  String get assetName => Assets.svg.addDayTripSvg;

  @override
  String get title => LocaleKeys.addDayTrip.tr();

  @override
  void Function(BuildContext context) get onTap {
    return (BuildContext context) {
      context.router.push(NewDayTripRoute(tripId: context.read<TripCubit>().state.trip.id));
    };
  }

  @override
  Color get color => Colors.amberAccent[100]!;
}
