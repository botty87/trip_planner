import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../ui/presentation/widgets/generics/snackbars.dart';
import '../cubit/new_day_trip/new_day_trip_cubit.dart';
import '../widgets/new_edit_day_trip_form/new_edit_day_trip_form.dart';

part '../widgets/new_day_trip_page/add_day_trip_button.dart';

@RoutePage()
class NewDayTripPage extends StatelessWidget {
  final String _tripId;
  const NewDayTripPage({super.key, @pathParam required String tripId}) : _tripId = tripId;

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
    final isSaving = useStreamController<bool>();
    final cubit = context.read<NewDayTripCubit>();

    return MultiBlocListener(
      listeners: [
        //On error show snackbar
        BlocListener<NewDayTripCubit, NewDayTripState>(
          listener: (context, state) => ScaffoldMessenger.of(context).showSnackBar(
            Snackbars.error((state as NewDayTripStateError).errorMessage),
          ),
          listenWhen: (previous, current) => current is NewDayTripStateError,
        ),
        //On success pop
        BlocListener<NewDayTripCubit, NewDayTripState>(
          listener: (context, state) {
            context.router.maybePop();
          },
          listenWhen: (previous, current) => current is NewDayTripStateCreated,
        ),
        //On saving update isSaving stream
        BlocListener<NewDayTripCubit, NewDayTripState>(
          listener: (context, state) => isSaving.add(state is NewDayTripStateSaving),
          listenWhen: (previous, current) =>
              (current is NewDayTripStateSaving && previous is! NewDayTripStateSaving) ||
              (current is! NewDayTripStateSaving && previous is NewDayTripStateSaving),
        ),
      ],
      child: NewEditDayTripForm(
        isSaving: isSaving.stream,
        onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
        saveSection: _AddDayTripButton(isSaving: isSaving.stream),
      ),
    );
  }
}
