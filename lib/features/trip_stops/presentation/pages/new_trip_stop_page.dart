import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../ui/presentation/widgets/generics/snackbars.dart';
import '../cubit/new_trip_stop/new_trip_stop_cubit.dart';
import '../widgets/new_edit_trip_stop_form/new_edit_trip_stop_form.dart';
import '../widgets/new_trip_stop_page/add_trip_stop_button.dart';

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
    final hourDuration = useStreamController<int>();
    final minuteDuration = useStreamController<int>();
    final marker = useStreamController<Marker?>();
    final cubit = context.read<NewTripStopCubit>();

    return MultiBlocListener(
      listeners: [
        //When hour duration changes, update the hour duration stream
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listenWhen: (previous, current) => previous.hourDuration != current.hourDuration,
          listener: (context, state) => hourDuration.add(state.hourDuration),
        ),
        //When minute duration changes, update the minute duration stream
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listenWhen: (previous, current) => previous.minuteDuration != current.minuteDuration,
          listener: (context, state) => minuteDuration.add(state.minuteDuration),
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
        //When the state changes to created pop the page
        BlocListener<NewTripStopCubit, NewTripStopState>(
          listener: (context, state) =>
              state.mapOrNull(created: (created) => context.router.maybePop()),
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
      child: NewEditTripStopForm.newTripStop(
        isSaving: isSaving.stream,
        hourDuration: hourDuration.stream,
        minuteDuration: minuteDuration.stream,
        onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
        onNameChanged: (String value) => cubit.nameChanged(value),
        onHourDurationChanged: (int value) => cubit.hourDurationChanged(value),
        onMinuteDurationChanged: (int value) => cubit.minuteDurationChanged(value),
        onLocationChanged: (LatLng? value) {
          if (value != null) {
            context.read<NewTripStopCubit>().locationChanged(value);
          }
        },
        saveSection: AddTripStopButton(isSaving: isSaving.stream),
      ),
    );
  }
}
