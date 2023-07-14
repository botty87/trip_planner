import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart';
import 'package:trip_planner/features/trips/presentation/widgets/new_edit_trip_form/new_edit_trip_form.dart';

import '../../../../core/widgets/snackbars.dart';

part '../widgets/new_trip_page/create_trip_button.dart';

@RoutePage()
class NewTripPage extends StatefulWidget {
  NewTripPage({super.key});

  @override
  State<NewTripPage> createState() => _NewTripPageState();
}

class _NewTripPageState extends State<NewTripPage> {
  final isLoading = StreamController<bool>();
  final isStartDateBeforeToday = StreamController<bool>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewTripCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.newTrip.tr()),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<NewTripCubit, NewTripState>(
              listenWhen: (previous, current) => current.errorMessage != null,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  Snackbars.error(state.errorMessage!),
                );
              },
            ),
            BlocListener<NewTripCubit, NewTripState>(
              listenWhen: (previous, current) => current.createSuccess,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  Snackbars.success(LocaleKeys.tripCreated.tr()),
                );
                context.router.pop();
              },
            ),
            BlocListener<NewTripCubit, NewTripState>(
              listenWhen: (previous, current) => previous.isLoading != current.isLoading,
              listener: (context, state) {
                isLoading.add(state.isLoading);
              },
            ),
            BlocListener<NewTripCubit, NewTripState>(
              listenWhen: (previous, current) => previous.isStartDateBeforeToday != current.isStartDateBeforeToday,
              listener: (context, state) {
                isStartDateBeforeToday.add(state.isStartDateBeforeToday);
              },
            ),
          ],
          child: Builder(builder: (context) {
            final cubit = context.read<NewTripCubit>();
            return NewEditTripForm(
              onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
              onNameChanged: (String value) => cubit.nameChanged(value),
              onStartDateChanged: (List<DateTime?> value) => cubit.startDateChanged(value.first!),
              saveSection: _CreateTripButton(),
              isLoading: isLoading.stream,
              isStartDateBeforeToday: isStartDateBeforeToday.stream,
            );
          }),
        ),
      ),
    );
  }

  @override
  void dispose() {
    isLoading.close();
    isStartDateBeforeToday.close();
    super.dispose();
  }
}
