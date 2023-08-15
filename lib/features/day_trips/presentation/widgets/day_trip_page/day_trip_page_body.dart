part of '../../pages/day_trip_page.dart';

class _DayTripPageBody extends HookWidget {
  const _DayTripPageBody();

  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final errorMessage = useStreamController<String?>();

    return MultiBlocListener(
      listeners: [
        //Show error snackbar if error
        BlocListener<DayTripCubit, DayTripState>(
          listener: (context, state) => ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(state.errorMessage!)),
          listenWhen: (previous, current) =>
              current.errorMessage != null && previous.errorMessage != current.errorMessage,
        ),
        //Update errorMessage stream when error
        BlocListener<DayTripCubit, DayTripState>(
          listener: (context, state) => errorMessage.add(state.errorMessage),
          listenWhen: (previous, current) =>
              previous.errorMessage != current.errorMessage,
        ),
        //Pop page if deleted
        BlocListener<DayTripCubit, DayTripState>(
          listener: (context, state) => context.router.pop(),
          listenWhen: (previous, current) => current is DayTripStateDeleting && current.deleted,
        ),
        //Update isLoading stream when loading
        BlocListener<DayTripCubit, DayTripState>(
          listener: (context, state) => isSaving.add((state as DayTripStateEditing).isSaving),
          listenWhen: (previous, current) =>
              (previous is! DayTripStateEditing && current is DayTripStateEditing) ||
              (previous is DayTripStateEditing &&
                  current is DayTripStateEditing &&
                  previous.isSaving != current.isSaving),
        ),
        //Show modal bottom sheet if editing
        BlocListener<DayTripCubit, DayTripState>(
            listener: (context, state) => _showModalBottomEditing(context, isSaving, errorMessage),
            listenWhen: (previous, current) =>
                previous is! DayTripStateEditing && current is DayTripStateEditing),
      ],
      child: SafeArea(
          child: SingleChildScrollView(
        padding: DEFAULT_PAGE_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _TripStopsList(),
            const SizedBox(height: VERTICAL_SPACE_S),
            _AddDayTripStopCard(),
          ],
        ),
      )),
    );
  }

  _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving, StreamController<String?> errorMessage) {
    final cubit = context.read<DayTripCubit>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useRootNavigator: true,
      isDismissible: false,
      builder: (_) {
        return FractionallySizedBox(
            heightFactor: 0.9,
            child: NewEditDayTripForm(
              isSaving: isSaving.stream,
              onDescriptionChanged: (description) => cubit.descriptionChanged(description),
              initialDayTripDescription: cubit.state.dayTrip.description,
              saveSection: _SaveCancelEditButtons(
                isSaving: isSaving.stream,
                onCancel: () {
                  cubit.cancelEditing();
                  Navigator.of(context).pop();
                },
                onSave: () async {
                  final success = await cubit.saveChanges();
                  if (success) {
                    Navigator.of(context).pop();
                  }
                },
                errorMessage: errorMessage.stream,
              ),
            ));
      },
    ).then((_) => cubit.modalBottomEditingDismissed());
  }
}
