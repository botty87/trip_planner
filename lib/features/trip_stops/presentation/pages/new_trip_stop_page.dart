import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/core/widgets/snackbars.dart';
import 'package:trip_planner/features/trip_stops/presentation/cubit/cubit/new_trip_stop_cubit.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/new_edit_trip_stop_form/new_edit_trip_stop_form.dart';

part '../widgets/new_trip_stop_page/add_trip_stop_button.dart';

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
    final marker = useStreamController<Marker?>();
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
        //When location state changes, update the marker stream
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listenWhen: (previous, current) => previous.location != current.location,
          listener: (context, state) => marker.add(state.location != null
              ? Marker(
                  markerId: const MarkerId('location'),
                  position: state.location!,
                  draggable: true,
                  onDragEnd: (value) =>
                      cubit.locationChanged(LatLng(value.latitude, value.longitude)),
                )
              : null),
        ),
        //When the state changes to saving, update the isSaving stream
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listenWhen: (previous, current) =>
              (current is NewTripStopStateSaving && previous is! NewTripStopStateSaving) ||
              (current is! NewTripStopStateSaving && previous is NewTripStopStateSaving),
          listener: (context, state) => isSaving.add(state is NewTripStopStateSaving),
        ),
        //When the state changes to created show a snackbar and pop the page
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listener: (context, state) => state.mapOrNull(
            created: (created) {
              ScaffoldMessenger.of(context).showSnackBar(
                Snackbars.success(LocaleKeys.tripStopCreated.tr()),
              );
              context.router.pop();
              return;
            },
          ),
        ),
        //When the state changes to error, show a snackbar
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listener: (context, state) => state.mapOrNull(
            error: (error) => ScaffoldMessenger.of(context).showSnackBar(
              Snackbars.error(error.errorMessage),
            ),
          ),
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
        marker: marker.stream,
        saveSection: _AddDayTripButton(isSaving: isSaving.stream),
      ),
    );
  }
}
