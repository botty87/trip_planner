part of '../../pages/trip_page.dart';

class _TripPageBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final isDeleting = useStreamController<bool>();
    final errorMessage = useStreamController<String?>();

    return MultiBlocListener(
      listeners: [
        //Show error snackbar if error and update errorMessage stream when error
        BlocListener<TripCubit, TripState>(
          listener: (context, state) {
            final errorState = state as TripStateError;
            ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(errorState.errorMessage));
            errorMessage.add(errorState.errorMessage);
          },
          listenWhen: (previous, current) => current is TripStateError,
        ),
        //Pop page if deleted
        BlocListener<TripCubit, TripState>(
          listener: (context, state) => context.router.pop(),
          listenWhen: (previous, current) => current is TripStateDeleted,
        ),
        //Update isDeleting stream when deleting
        BlocListener<TripCubit, TripState>(
          listener: (context, state) => isDeleting.add(state is TripStateDeleting),
          listenWhen: (previous, current) =>
              (previous is! TripStateDeleting && current is TripStateDeleting) ||
              (previous is TripStateDeleting && current is! TripStateDeleting),
        ),
        //Update isLoading stream when loading
        BlocListener<TripCubit, TripState>(
          listener: (context, state) => isSaving.add((state as TripStateEditing).isSaving),
          listenWhen: (previous, current) =>
              (previous is! TripStateEditing && current is TripStateEditing) ||
              (previous is TripStateEditing &&
                  current is TripStateEditing &&
                  previous.isSaving != current.isSaving),
        ),
        //Show modal bottom sheet if editing
        BlocListener<TripCubit, TripState>(
            listener: (context, state) => _showModalBottomEditing(context, isSaving, errorMessage),
            listenWhen: (previous, current) =>
                previous is! TripStateEditing && current is TripStateEditing),
        //Close modal bottom sheet if editing dismissed
        BlocListener<TripCubit, TripState>(
            listener: (context, state) => Navigator.of(context).pop(),
            listenWhen: (previous, current) =>
                previous is TripStateEditing && current is TripStateNormal),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          padding: DEFAULT_PAGE_PADDING,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BlocSelector<TripCubit, TripState, String?>(
                selector: (state) => state.trip.description,
                builder: (context, description) => _TripHeader(headerText: description),
              ),
              const _DayTripsList(),
              const SizedBox(height: VERTICAL_SPACE_S),
              const _AddDayTripCard(),
              const SizedBox(height: VERTICAL_SPACE_L),
              _DeleteTripButton(isDeleting: isDeleting.stream),
            ],
          ),
        ),
      ),
    );
  }

  _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving,
      StreamController<String?> errorMessage) {
    final cubit = context.read<TripCubit>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useRootNavigator: true,
      isDismissible: false,
      builder: (_) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: NewEditTripForm(
            onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
            onNameChanged: (String value) => cubit.nameChanged(value),
            onStartDateChanged: (DateTime value) => cubit.startDateChanged(value),
            saveSection: _SaveCancelEditButtons(
              isSaving: isSaving.stream,
              onCancel: () => cubit.modalBottomEditingDismissed(),
              onSave: () => cubit.saveChanges(),
              errorMessage: errorMessage.stream,
            ),
            isSaving: isSaving.stream,
            initialTripName: cubit.state.trip.name,
            initialTripDescription: cubit.state.trip.description,
            initialStartDate: cubit.state.trip.startDate,
          ),
        );
      },
    ).then((_) => cubit.modalBottomEditingDismissed());
  }
}
