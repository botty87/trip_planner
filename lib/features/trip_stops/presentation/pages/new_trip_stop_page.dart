import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/cubit/new_trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/new_edit_trip_stop_form/new_edit_trip_stop_form.dart';

@RoutePage()
class NewTripStopPage extends StatelessWidget {
  final String _tripId;
  final String _dayTripId;

  const NewTripStopPage({super.key, required String trip, required String dayTrip})
      : _tripId = trip,
        _dayTripId = dayTrip;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewTripStopCubit>(
      create: (context) => getIt(param1: _tripId, param2: _dayTripId),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.newTripStop.tr()),
        ),
        body: const _NewTripStopPageBody(),
      ),
    );
  }
}

class _NewTripStopPageBody extends HookWidget {
  const _NewTripStopPageBody();

  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final startTime = useStreamController<TimeOfDay?>();
    final endTime = useStreamController<TimeOfDay?>();
    final cubit = context.read<NewTripStopCubit>();

    return MultiBlocListener(
      listeners: [
        //When startTime state changes, update the startTime stream
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listenWhen: (previous, current) => previous.startTime != current.startTime,
          listener: (context, state) => startTime.add(state.startTime),
        ),
        //When endTime state changes, update the endTime stream
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listenWhen: (previous, current) => previous.endTime != current.endTime,
          listener: (context, state) => endTime.add(state.endTime),
        ),
      ],
      child: NewEditTripStopForm(
        isSaving: isSaving.stream,
        onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
        onNameChanged: (String value) => cubit.nameChanged(value),
        onStartTimeChanged: (TimeOfDay value) => cubit.startTimeChanged(value),
        onEndTimeChanged: (TimeOfDay value) => cubit.endTimeChanged(value),
        startTime: startTime.stream,
        endTime: endTime.stream,
        saveSection: Placeholder(),
      ),
    );
  }
}
