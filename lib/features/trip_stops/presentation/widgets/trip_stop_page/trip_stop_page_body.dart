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
                  isDeleting,
                  hourDuration,
                  minuteDuration,
                  marker,
                  errorMessage,
                ),
            listenWhen: (previous, current) =>
                previous is TripStopStateNormal && current is TripStopStateEditing),
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
  ) async {
    final cubit = context.read<TripStopCubit>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useRootNavigator: true,
      isDismissible: false,
      builder: (_) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: NewEditTripStopForm(
            isSaving: isSaving.stream,
            hourDuration: hourDuration.stream,
            minuteDuration: minuteDuration.stream,
            onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
            onNameChanged: (String value) {}, //cubit.nameChanged(value),
            onHourDurationChanged: (int value) {}, //cubit.hourDurationChanged(value),
            onMinuteDurationChanged: (int value) {}, //cubit.minuteDurationChanged(value),
            marker: marker.stream,
            initialTripStopDescription: cubit.state.tripStop.description,
            initialTripStopName: cubit.state.tripStop.name,
            saveSection: Placeholder(), //_AddDayTripButton(isSaving: isSaving.stream),
          ),
        );
      },
    ).then((_) => cubit.modalBottomEditingDismissed());

    //Update hour and minute duration 
    final tripStopDuration = cubit.state.tripStop.duration;
    await Future.delayed(const Duration(milliseconds: 100));
    hourDuration.add(tripStopDuration ~/ 60);
    minuteDuration.add(tripStopDuration % 60);
  }
}
