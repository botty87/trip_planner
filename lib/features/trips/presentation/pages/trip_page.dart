import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../core/constants.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/entities/day_trip.dart';
import '../../domain/entities/trip.dart';
import '../cubit/trip/trip_cubit.dart';

part '../widgets/trip_page/trip_header.dart';
part '../widgets/trip_page/day_trips_list.dart';
part '../widgets/trip_page/day_trip_card.dart';
part '../widgets/trip_page/add_day_trip_card.dart';

@RoutePage()
class TripPage extends StatelessWidget {
  final Trip _trip;
  const TripPage(this._trip, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripCubit>(
      create: (context) => getIt<TripCubit>(param1: _trip),
      child: Builder(builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            final isEditing = context.read<TripCubit>().state is TripStateEditing;
            if (isEditing) {
              return _showDiscardDialog(context);
            }
            return true;
          },
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: _TripPageAppBar(),
            ),
            body: BlocListener<TripCubit, TripState>(
              listenWhen: (previous, current) => current.errorMessage != null,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  Snackbars.error(state.errorMessage!),
                );
              },
              child: _TripPageBody(),
            ),
          ),
        );
      }),
    );
  }

  Future<bool> _showDiscardDialog(BuildContext context) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      title: LocaleKeys.discardChanges.tr(),
      message: LocaleKeys.discardChangesQuestion.tr(),
      okLabel: LocaleKeys.discard.tr(),
      cancelLabel: LocaleKeys.cancel.tr(),
    );

    return result == OkCancelResult.ok;
  }
}

class _TripPageAppBar extends StatelessWidget {
  const _TripPageAppBar();

  @override
  Widget build(BuildContext context) {
    final trip = context.read<TripCubit>().state.trip;
    final isEditing = context.select((TripCubit cubit) => cubit.state is TripStateEditing);

    return AppBar(
      title: Text(isEditing ? LocaleKeys.editTrip.tr() : trip.name),
      actions: isEditing
          ? null
          : [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => context.read<TripCubit>().edit(),
              ),
            ],
    );
  }
}

class _TripPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocSelector<TripCubit, TripState, bool>(
            selector: (state) => state is TripStateEditing && state.isSaving,
            builder: (context, isLoading) {
              if (isLoading) {
                return LinearProgressIndicator(minHeight: 1);
              } else {
                return const SizedBox(height: 1);
              }
            }),
        Expanded(
          child: SingleChildScrollView(
            child: SafeArea(
              minimum: DEFAULT_PAGE_PADDING,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _TripHeader(),
                  const SizedBox(height: VERTICAL_SPACE_L),
                  const _DayTripsList(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
