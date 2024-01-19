import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../domain/entities/trip.dart';
import '../cubit/new_trip/new_trip_cubit.dart';
import '../widgets/new_edit_trip_form/new_edit_trip_form.dart';

part '../widgets/new_trip_page/create_trip_button.dart';

@RoutePage()
class NewTripPage extends HookWidget {
  final Trip? _existingTrip;
  const NewTripPage({super.key, Trip? existingTrip}) : _existingTrip = existingTrip;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewTripCubit>(
      create: (context) => getIt(param1: _existingTrip),
      child: Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.newTrip.tr()),
          ),
          body: _NewTripPageBody(existingTrip: _existingTrip)),
    );
  }
}

class _NewTripPageBody extends HookWidget {
  final Trip? _existingTrip;

  const _NewTripPageBody({required Trip? existingTrip}) : _existingTrip = existingTrip;

  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final cubit = context.read<NewTripCubit>();

    return MultiBlocListener(
      listeners: [
        //Show error message on error
        BlocListener<NewTripCubit, NewTripState>(
          listener: (context, state) => ScaffoldMessenger.of(context).showSnackBar(
            Snackbars.error((state as NewTripStateError).errorMessage),
          ),
          listenWhen: (current, next) => next is NewTripStateError,
        ),
        //Show success message on create success
        BlocListener<NewTripCubit, NewTripState>(
          listener: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              Snackbars.success(LocaleKeys.tripCreated.tr()),
            );
            context.router.replaceAll([const TripsRoute()]);
          },
          listenWhen: (current, next) => next is NewTripStateCreated,
        ),
        //Update isSaving stream on state change
        BlocListener<NewTripCubit, NewTripState>(
          listener: (context, state) => isSaving.add(state is NewTripStateSaving),
          listenWhen: (previous, current) =>
              (current is NewTripStateSaving && previous is! NewTripStateSaving) ||
              (current is! NewTripStateSaving && previous is NewTripStateSaving),
        ),
      ],
      child: StreamBuilder<bool>(
          stream: isSaving.stream.distinct(),
          initialData: false,
          builder: (context, snapshot) {
            return IgnorePointer(
              ignoring: snapshot.data!,
              child: NewEditTripForm(
                onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
                onNameChanged: (String value) => cubit.nameChanged(value),
                onStartDateChanged: (DateTime value) => cubit.startDateChanged(value),
                saveSection: _CreateTripButton(isSaving: isSaving.stream),
                onIsPublicChanged: (bool value) => cubit.isPublicChanged(value),
                isSaving: isSaving.stream,
                initialTripName: _existingTrip?.name,
                initialTripDescription: _existingTrip?.description,
              ),
            );
          }),
    );
  }
}
