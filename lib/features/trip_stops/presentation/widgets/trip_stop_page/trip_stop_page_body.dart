part of '../../pages/trip_stop_page.dart';

class _TripStopPageBody extends HookWidget {
  const _TripStopPageBody();

  @override
  Widget build(BuildContext context) {
    final errorMessage = useStreamController<String>();
    final isDeleting = useStreamController<bool>();
    final hourDuration = useStreamController<int>();
    final minuteDuration = useStreamController<int>();
    final marker = useStreamController<Marker?>();
    final isSaving = useStreamController<bool>();

    final isModalBottomEditing = useRef<bool>(false);

    return MultiBlocListener(
      listeners: [
        //Show error snackbar if error and update errorMessage stream when error
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) {
            final errorState = state as TripStopStateError;
            ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(errorState.message));
            errorMessage.add(errorState.message);
          },
          listenWhen: (previous, current) => current is TripStopStateError,
        ),
        //Pop page if deleted
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) => context.router.pop(),
          listenWhen: (previous, current) => current is TripStopStateDeleted,
        ),
        //Update isDeleting stream when deleting
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) => isDeleting.add(state is TripStopStateDeleting),
          listenWhen: (previous, current) =>
              (previous is! TripStopStateDeleting && current is TripStopStateDeleting) ||
              (previous is TripStopStateDeleting && current is! TripStopStateDeleting),
        ),
        //Show modal bottom sheet if editing
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) => _showModalBottomEditing(
            context,
            isSaving,
            hourDuration,
            minuteDuration,
            marker,
            errorMessage,
            isModalBottomEditing,
          ),
          listenWhen: (previous, current) =>
              previous is TripStopStateNormal && current is TripStopStateEditing,
        ),
        //Update hour duration when editing
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) {
            assert(state is TripStopStateEditing);
            final editingState = state as TripStopStateEditing;
            hourDuration.add(editingState.hourDuration!);
          },
          listenWhen: (previous, current) {
            if (previous is TripStopStateEditing && current is TripStopStateEditing) {
              return previous.hourDuration != current.hourDuration;
            }
            return false;
          },
        ),
        //Update minute duration when editing
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) {
            assert(state is TripStopStateEditing);
            final editingState = state as TripStopStateEditing;
            minuteDuration.add(editingState.minuteDuration!);
          },
          listenWhen: (previous, current) {
            if (previous is TripStopStateEditing && current is TripStopStateEditing) {
              return previous.minuteDuration != current.minuteDuration;
            }
            return false;
          },
        ),
        //Update marker when editing
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) {
            assert(state is TripStopStateEditing);
            final editingState = state as TripStopStateEditing;
            marker.add(Marker(
              markerId: const MarkerId('tripStop'),
              position: LatLng(
                editingState.location!.latitude,
                editingState.location!.longitude,
              ),
              draggable: true,
              onDragEnd: (value) => context
                  .read<TripStopCubit>()
                  .locationChanged(LatLng(value.latitude, value.longitude)),
            ));
          },
          listenWhen: (previous, current) {
            if (previous is TripStopStateEditing && current is TripStopStateEditing) {
              return previous.location != current.location;
            }
            return false;
          },
        ),
        //Close modal bottom sheet if editing dismissed
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) {
            if (isModalBottomEditing.value) {
              Navigator.of(context).pop();
            }
          },
          listenWhen: (previous, current) =>
              previous is TripStopStateEditing && current is TripStopStateNormal ||
              previous is TripStopStateSaving && current is TripStopStateNormal,
        ),
        //Update isSaving stream when saving
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) => isSaving.add(state is TripStopStateSaving),
          listenWhen: (previous, current) =>
              (previous is! TripStopStateSaving && current is TripStopStateSaving) ||
              (previous is TripStopStateSaving && current is! TripStopStateSaving),
        ),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          padding: defaultPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BlocSelector<TripStopCubit, TripStopState, bool>(
                selector: (state) => state.maybeMap(
                  noteSaving: (_) => true,
                  orElse: () => false,
                ),
                builder: (context, isSaving) => isSaving
                    ? const LinearProgressIndicator(minHeight: 1)
                    : const SizedBox(height: verticalSpace),
              ),
              BlocSelector<TripStopCubit, TripStopState, String?>(
                selector: (state) => state.tripStop.description,
                builder: (context, description) => _TripStopDescription(headerText: description),
              ),
              const SizedBox(height: verticalSpace),
              _MapWidget(),
              const SizedBox(height: verticalSpace),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [_TripStopDurationWidget(), _TripStopDoneWidget()],
              ),
              const SizedBox(height: verticalSpace),
              const _TripStopNavigateToButton(),
              const SizedBox(height: verticalSpaceXL),
              const _TripStopNoteWidget(),
              const SizedBox(height: verticalSpaceL),
              _DeleteTripStopButton(isDeleting: isDeleting.stream),
            ],
          ),
        ),
      ),
    );
  }

  _showModalBottomEditing(
    BuildContext context,
    StreamController<bool> isSaving,
    StreamController<int> hourDuration,
    StreamController<int> minuteDuration,
    StreamController<Marker?> marker,
    StreamController<String?> errorMessage,
    ObjectRef isModalBottomEditing,
  ) async {
    final cubit = context.read<TripStopCubit>();
    isModalBottomEditing.value = true;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useRootNavigator: true,
      isDismissible: false,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: NewEditTripStopForm(
              isSaving: isSaving.stream,
              hourDuration: hourDuration.stream,
              minuteDuration: minuteDuration.stream,
              onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
              onNameChanged: (String value) => cubit.nameChanged(value),
              onHourDurationChanged: (int value) => cubit.hourDurationChanged(value),
              onMinuteDurationChanged: (int value) => cubit.minuteDurationChanged(value),
              marker: marker.stream,
              initialTripStopDescription: cubit.state.tripStop.description,
              initialTripStopName: cubit.state.tripStop.name,
              onLocationChanged: (LatLng? value) {
                if (value != null) {
                  cubit.locationChanged(value);
                }
              },
              saveSection: _SaveCancelEditButtons(
                isSaving: isSaving.stream,
                onCancel: () => cubit.cancelEditing(),
                onSave: () => cubit.saveChanges(),
                errorMessage: errorMessage.stream,
              ),
            ),
          ),
        );
      },
    ).then((_) {
      isModalBottomEditing.value = false;
      cubit.modalBottomEditingDismissed();
    });

    //Update hour and minute duration
    final tripStopDuration = cubit.state.tripStop.duration;
    await Future.delayed(const Duration(milliseconds: 100));
    hourDuration.add(tripStopDuration ~/ 60);
    minuteDuration.add(tripStopDuration % 60);

    //Update marker
    final tripStopLocation = cubit.state.tripStop.location;
    marker.add(Marker(
      markerId: const MarkerId('tripStop'),
      position: LatLng(tripStopLocation.latitude, tripStopLocation.longitude),
      draggable: true,
      onDragEnd: (value) => cubit.locationChanged(LatLng(value.latitude, value.longitude)),
    ));
  }
}
