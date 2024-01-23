part of '../../pages/trip_page.dart';

class _TripPageBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final isDeleting = useStreamController<bool>();
    final errorMessage = useStreamController<String?>();

    final isModalBottomEditing = useRef<bool>(false);

    return const Placeholder();

    /* return MultiBlocListener(
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
            listener: (context, state) =>
                _showModalBottomEditing(context, isSaving, isModalBottomEditing, errorMessage),
            listenWhen: (previous, current) =>
                previous is! TripStateEditing && current is TripStateEditing),
        //Close modal bottom sheet if editing dismissed
        BlocListener<TripCubit, TripState>(
            listener: (context, state) {
              if (isModalBottomEditing.value) {
                Navigator.of(context).pop();
              }
            },
            listenWhen: (previous, current) =>
                previous is TripStateEditing && current is TripStateNormal),
      ],
      child: SafeArea(
        child: Builder(builder: (context) {
          if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
            return _VerticalLayout(isDeleting: isDeleting.stream);
          } else {
            return OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.portrait) {
                  return _VerticalLayout(isDeleting: isDeleting.stream);
                } else {
                  return _HorizontalLayout(isDeleting: isDeleting.stream);
                }
              },
            );
          }
        }),
      ),
    ); */
  }

  _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving,
      ObjectRef isModalBottomEditing, StreamController<String?> errorMessage) {
    final cubit = context.read<TripCubit>();
    isModalBottomEditing.value = true;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useRootNavigator: true,
      isDismissible: false,
      useSafeArea: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
            onIsPublicChanged: (bool value) => cubit.isPublicChanged(value),
            initialIsPublic: cubit.state.trip.isPublic,
          ),
        );
      },
    ).then((_) {
      isModalBottomEditing.value = false;
      cubit.modalBottomEditingDismissed();
    });
  }
}

/* class _VerticalLayout extends StatelessWidget {
  final Stream<bool> isDeleting;

  const _VerticalLayout({required this.isDeleting});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: defaultPagePadding,
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                ? constraints.maxWidth * 0.8
                : constraints.maxWidth;

            return ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: maxWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BlocSelector<TripCubit, TripState, String?>(
                    selector: (state) => state.trip.description,
                    builder: (context, description) => _TripHeader(headerText: description),
                  ),
                  const DayTripsList(),
                  const SizedBox(height: verticalSpaceS),
                  const AddDayTripCard(),
                  const SizedBox(height: verticalSpaceL),
                  DeleteTripButton(isDeleting: isDeleting),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HorizontalLayout extends StatelessWidget {
  final Stream<bool> isDeleting;

  const _HorizontalLayout({required this.isDeleting});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: Column(children: [
        Expanded(
          child: Row(
            children: [
              const Expanded(child: SingleChildScrollView(child: DayTripsList())),
              const SizedBox(width: horizontalSpaceL),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: SingleChildScrollView(
                        child: BlocSelector<TripCubit, TripState, String?>(
                          selector: (state) => state.trip.description,
                          builder: (context, description) => _TripHeader(headerText: description),
                        ),
                      ),
                    ),
                    const AddDayTripCard(),
                    const SizedBox(height: verticalSpaceXL),
                    DeleteTripButton(isDeleting: isDeleting),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
} */
