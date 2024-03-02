import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../ui/presentation/widgets/generics/snackbars.dart';
import '../../../user_account/presentation/cubit/user/user_cubit.dart';
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
      create: (context) {
        final userId = getIt<UserCubit>().state.maybeMap(
              loggedIn: (state) => state.user.id,
              orElse: () => throw const UnexpectedStateException(),
            );
        return getIt(param1: _existingTrip, param2: userId);
      },
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
        //Show error message on error+

        BlocListener<NewTripCubit, NewTripState>(
          listener: (context, state) => state.mapOrNull(
              error: (state) => ScaffoldMessenger.of(context).showSnackBar(
                    Snackbars.error(state.errorMessage),
                  )),
          listenWhen: (previous, current) => current.maybeMap(
            error: (_) => true,
            orElse: () => false,
          ),
        ),
        //On success navigate to trips page
        BlocListener<NewTripCubit, NewTripState>(
          listener: (context, state) => context.router.replaceAll([const TripsRoute()]),
          listenWhen: (previous, current) => current.maybeMap(
            created: (_) => true,
            orElse: () => false,
          ),
        ),
        //Update isSaving stream on state change
        BlocListener<NewTripCubit, NewTripState>(
          listener: (context, state) => state.mapOrNull(
            saving: (_) => isSaving.add(true),
            created: (_) => isSaving.add(false),
          ),
          listenWhen: (previous, current) => current.maybeMap(
            saving: (_) => true,
            orElse: () => false,
          ),
        ),
      ],
      child: NewEditTripForm(
        onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
        onNameChanged: (String value) => cubit.nameChanged(value),
        onStartDateChanged: (DateTime value) => cubit.startDateChanged(value),
        saveSection: _CreateTripButton(isSaving: isSaving.stream),
        onIsPublicChanged: (bool value) => cubit.isPublicChanged(value),
        onLanguageCodeChanged: (value) => cubit.languageCodeChanged(value),
        isSaving: isSaving.stream,
        initialTripName: _existingTrip?.name,
        initialTripDescription: _existingTrip?.description,
        initialLanguageCode: cubit.state.maybeMap(
          normal: (state) => state.languageCode,
          orElse: () => throw const UnexpectedStateException(),
        ),
      ),
    );
  }
}
