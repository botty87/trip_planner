part of '../../pages/trip_stop_page.dart';

class _TripStopPageBody extends HookWidget {
  const _TripStopPageBody();

  @override
  Widget build(BuildContext context) {
    final errorMessage = useStreamController<String>();
    final isDeleting = useStreamController<bool>();
    final hourDuration = useStreamController<int>();
    final minuteDuration = useStreamController<int>();
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
      child: BlocSelector<TripStopCubit, TripStopState, bool>(
        selector: (state) => state.maybeMap(
          noteSaving: (_) => true,
          orElse: () => false,
        ),
        builder: (context, isSaving) {
          return AbsorbPointer(
            absorbing: isSaving,
            child: Column(
              children: [
                isSaving ? const LinearProgressIndicator() : const SizedBox.shrink(),
                Expanded(
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
              ],
            ),
          );
        },
      ),
    );
  }

  _showModalBottomEditing(
    BuildContext context,
    StreamController<bool> isSaving,
    StreamController<int> hourDuration,
    StreamController<int> minuteDuration,
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
      useSafeArea: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: NewEditTripStopForm(
            key: const Key('new_edit_trip_stop_form'),
            isSaving: isSaving.stream,
            hourDuration: hourDuration.stream,
            minuteDuration: minuteDuration.stream,
            onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
            onNameChanged: (String value) => cubit.nameChanged(value),
            onHourDurationChanged: (int value) => cubit.hourDurationChanged(value),
            onMinuteDurationChanged: (int value) => cubit.minuteDurationChanged(value),
            initialTripStopDescription: cubit.state.tripStop.description,
            initialTripStopName: cubit.state.tripStop.name,
            initialLocation: cubit.state.tripStop.location,
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
  }
}

class _VerticalLayout extends StatelessWidget {
  final Stream<bool> isDeleting;

  const _VerticalLayout({required this.isDeleting});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: defaultPagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlocSelector<TripStopCubit, TripStopState, String?>(
            selector: (state) => state.tripStop.description,
            builder: (context, description) => _TripStopDescription(headerText: description),
          ),
          const SizedBox(height: verticalSpace),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: const _MapWidget(),
          ),
          const SizedBox(height: verticalSpace),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [_TripStopDurationWidget(), _TripStopDoneWidget()],
          ),
          if (!kIsWeb) ...[
            const SizedBox(height: verticalSpace),
            const _TripStopNavigateToButton(),
          ],
          const SizedBox(height: verticalSpaceXL),
          const _TripStopNoteWidget(),
          const SizedBox(height: verticalSpaceL),
          _DeleteTripStopButton(isDeleting: isDeleting),
        ],
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
      child: BlocSelector<TripStopCubit, TripStopState, String?>(
        selector: (state) => state.tripStop.description,
        builder: (context, description) {
          return Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: const _MapWidget(),
                      ),
                      if (!kIsWeb) ...[
                        const SizedBox(height: verticalSpaceXL),
                        const _TripStopNavigateToButton(),
                      ],
                      const SizedBox(height: verticalSpaceL),
                      _DeleteTripStopButton(isDeleting: isDeleting),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: horizontalSpaceL),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: verticalSpaceXL),
                  child: Column(
                    children: [
                      if (description?.isNotEmpty ?? false) ...[
                        _TripStopDescription(headerText: description),
                        const SizedBox(height: verticalSpaceXL),
                      ],
                      const _TripStopNoteWidget(),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
