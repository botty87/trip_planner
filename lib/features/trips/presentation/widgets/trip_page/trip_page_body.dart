part of '../../pages/trip_page.dart';

class _TripPageBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final isDeleting = useStreamController<bool>();

    return MultiBlocListener(
      listeners: [
        //Show error snackbar if error
        BlocListener<TripCubit, TripState>(
          listener: (context, state) =>
              ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(state.errorMessage!)),
          listenWhen: (previous, current) =>
              current.errorMessage != null && previous.errorMessage != current.errorMessage,
        ),
        //Pop page if deleted
        BlocListener<TripCubit, TripState>(
          listener: (context, state) => context.router.pop(),
          listenWhen: (previous, current) => current is TripStateDeleting && current.deleted,
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
            listener: (context, state) => _showModalBottomEditing(context, isSaving),
            listenWhen: (previous, current) =>
                previous is! TripStateEditing && current is TripStateEditing),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          padding: DEFAULT_PAGE_PADDING,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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

  _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving) {
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
              context: context,
            ),
            isLoading: isSaving.stream,
            initialTripName: cubit.state.trip.name,
            initialTripDescription: cubit.state.trip.description,
            initialStartDate: cubit.state.trip.startDate,
          ),
        );
      },
    ).then((_) => cubit.modalBottomEditingDismissed());
  }
}
