part of '../../pages/day_trip_page.dart';

class _DayTripPageBody extends HookWidget {
  const _DayTripPageBody();

  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final errorMessage = useStreamController<String?>();
    final isDeleting = useStreamController<bool>();

    return MultiBlocListener(
      listeners: [
        //Show error snackbar if error and update errorMessage stream when error
        BlocListener<DayTripCubit, DayTripState>(
          listener: (context, state) {
            final errorState = state as DayTripStateError;
            ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(errorState.errorMessage!));
            errorMessage.add(errorState.errorMessage);
          },
          listenWhen: (previous, current) => current is DayTripStateError,
        ),
        //Pop page if deleted
        BlocListener<DayTripCubit, DayTripState>(
          listener: (context, state) => context.router.pop(),
          listenWhen: (previous, current) => current is DayTripStateDeleted,
        ),
        //Update isDeleting stream when deleting
        BlocListener<DayTripCubit, DayTripState>(
          listener: (context, state) => isDeleting.add(state is DayTripStateDeleting),
          listenWhen: (previous, current) =>
              (previous is! DayTripStateDeleting && current is DayTripStateDeleting) ||
              (previous is DayTripStateDeleting && current is! DayTripStateDeleting),
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
                previous is DayTripStateNormal && current is DayTripStateEditing),
        //Close modal bottom sheet if editing dismissed
        BlocListener<DayTripCubit, DayTripState>(
            listener: (context, state) => Navigator.of(context).pop(),
            listenWhen: (previous, current) =>
                previous is DayTripStateEditing && current is DayTripStateNormal),
      ],
      child: SafeArea(
          child: SingleChildScrollView(
        padding: defaultPagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlocSelector<DayTripCubit, DayTripState, String?>(
              selector: (state) => state.dayTrip.description,
              builder: (context, description) => _DayTripHeader(headerText: description),
            ),
            const _StartTimeWidget(),
            const SizedBox(height: verticalSpaceS),
            const _TripStopsList(),
            const SizedBox(height: verticalSpaceS),
            const _AddDayTripStopCard(),
            const SizedBox(height: verticalSpaceL),
            _DeleteTripButton(isDeleting: isDeleting.stream),
          ],
        ),
      )),
    );
  }

  _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving,
      StreamController<String?> errorMessage) {
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
                onCancel: () => cubit.cancelEditing(),
                onSave: () => cubit.saveChanges(),
                errorMessage: errorMessage.stream,
              ),
            ));
      },
    ).then((_) => cubit.modalBottomEditingDismissed());
  }
}
