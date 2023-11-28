import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/widgets/trip/add_destination_card.dart';
import '../../../../core/widgets/trip/generic_trip_card.dart';
import '../../../../core/widgets/trip/generic_trip_header.dart';
import '../widgets/new_edit_trip_form/new_edit_trip_form.dart';

import '../../../../core/constants.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/widgets/trip/delete_trip_button.dart';
import '../../../../core/widgets/trip/save_cancel_edit_buttons.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../core/widgets/transparent_list_decorator.dart';
import '../../../../gen/assets.gen.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../domain/entities/trip.dart';
import '../cubit/trip/trip_cubit.dart';

part '../widgets/trip_page/add_day_trip_card.dart';
part '../widgets/trip_page/day_trip_card.dart';
part '../widgets/trip_page/day_trips_list.dart';
part '../widgets/trip_page/delete_trip_button.dart';
part '../widgets/trip_page/save_cancel_edit_buttons.dart';
part '../widgets/trip_page/trip_header.dart';
part '../widgets/trip_page/trip_page_body.dart';

@RoutePage()
class TripPage extends StatelessWidget {
  final Trip _trip;
  const TripPage(this._trip, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripCubit>(
      create: (context) => getIt<TripCubit>(param1: _trip),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: _TripPageAppBar(),
        ),
        body: _TripPageBody(),
      ),
    );
  }
}

class _TripPageAppBar extends StatelessWidget {
  const _TripPageAppBar();

  @override
  Widget build(BuildContext context) {
    final tripName = context.select<TripCubit, String>((cubit) => cubit.state.trip.name);

    return AppBar(
      title: Text(tripName),
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<TripCubit>().edit(),
        ),
      ],
    );
  }
}
