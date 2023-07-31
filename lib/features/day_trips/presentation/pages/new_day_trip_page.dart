import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/day_trips/presentation/widgets/new_edit_day_trip_form/new_edit_day_trip_form.dart';

import '../../../../core/widgets/snackbars.dart';
import '../cubit/new_day_trip/new_day_trip_cubit.dart';

part '../widgets/new_day_trip_page/add_day_trip_button.dart';

@RoutePage()
class NewDayTripPage extends StatelessWidget {
  final String _tripId;
  NewDayTripPage({super.key, @pathParam required String tripId}) : _tripId = tripId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewDayTripCubit>(
      create: (context) => getIt(param1: _tripId),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.newDayTrip.tr()),
        ),
        body: const _NewDayTripPageBody(),
      ),
    );
  }
}

class _NewDayTripPageBody extends HookWidget {
  const _NewDayTripPageBody();

  @override
  Widget build(BuildContext context) {
    //On error show snackbar
    useBlocListener<NewDayTripCubit, NewDayTripState>(context.read(), (bloc, state, context) {
      ScaffoldMessenger.of(context).showSnackBar(
        Snackbars.error(state.errorMessage!),
      );
    }, listenWhen: (current) => current.errorMessage != null);

    //On success show snackbar and pop
    useBlocListener<NewDayTripCubit, NewDayTripState>(context.read(), (bloc, state, context) {
      ScaffoldMessenger.of(context).showSnackBar(
        Snackbars.success(LocaleKeys.dayTripCreated.tr()),
      );
      context.router.pop();
    }, listenWhen: (current) => current.createSuccess);

    //show saving indicator if needed
    final isSaving = useStreamController<bool>();
    useBlocListener<NewDayTripCubit, NewDayTripState>(
        context.read(), (bloc, state, context) => isSaving.add(state.isSaving),
        listenWhen: (current) => current.isSaving != current.isSaving);

    final cubit = context.read<NewDayTripCubit>();

    return SafeArea(
        minimum: DEFAULT_PAGE_PADDING,
        child: NewEditDayTripForm(
          isSaving: isSaving.stream,
          onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
          saveSection: _AddDayTripButton(),
        ));
  }
}
