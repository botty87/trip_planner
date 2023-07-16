import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart';

import '../../../../core/di/di.dart';
import '../../../../core/widgets/snackbars.dart';
import '../widgets/new_edit_trip_form/new_edit_trip_form.dart';

part '../widgets/new_trip_page/create_trip_button.dart';

@RoutePage()
class NewTripPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewTripCubit>(
      create: (context) => getIt(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.newTrip.tr()),
          ),
          body: _NewTripPageBody()),
    );
  }
}

class _NewTripPageBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<NewTripCubit>();
    //show error message if needed
    useBlocListener<NewTripCubit, NewTripState>(
        cubit,
        (cubit, state, context) => ScaffoldMessenger.of(context).showSnackBar(
              Snackbars.error(state.errorMessage!),
            ),
        listenWhen: (current) => current.errorMessage != null);

    //show success message if needed, then navigate back
    useBlocListener<NewTripCubit, NewTripState>(cubit, (cubit, state, context) {
      ScaffoldMessenger.of(context).showSnackBar(
        Snackbars.success(LocaleKeys.tripCreated.tr()),
      );
      context.router.pop();
    }, listenWhen: (current) => current.createSuccess);

    //show loading indicator if needed
    final isLoading = useStreamController<bool>();
    useBlocListener<NewTripCubit, NewTripState>(
        cubit, (cubit, state, context) => isLoading.add(state.isLoading),
        listenWhen: (current) => current.isLoading != current.isLoading);

    return NewEditTripForm(
      onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
      onNameChanged: (String value) => cubit.nameChanged(value),
      onStartDateChanged: (DateTime value) => cubit.startDateChanged(value),
      saveSection: _CreateTripButton(),
      isLoading: isLoading.stream,
    );
  }
}
