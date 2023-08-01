import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/core/widgets/add_destination_card.dart';
import 'package:trip_planner/features/trips/presentation/widgets/new_edit_trip_form/new_edit_trip_form.dart';

import '../../../../core/constants.dart';
import '../../../../core/routes/app_router.gr.dart';
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
part '../widgets/trip_page/trip_header.dart';
part '../widgets/trip_page/trip_page_body.dart';
part '../widgets/trip_page/save_undo_edit_buttons.dart';

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
            body: MultiBlocListener(
              listeners: [
                BlocListener<TripCubit, TripState>(
                  listenWhen: (previous, current) => current.errorMessage != null,
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      Snackbars.error(state.errorMessage!),
                    );
                  },
                ),
                BlocListener<TripCubit, TripState>(
                  listenWhen: (previous, current) =>
                      current is TripStateDeleting && current.deleted,
                  listener: (context, state) {
                    context.router.pop();
                  },
                ),
              ],
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
