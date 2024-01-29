
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants.dart';
import '../../cubit/day_trip/day_trip_cubit.dart';
import 'list_tab/list_view_widget.dart';

class DayTripPageLoaded extends HookWidget {
  const DayTripPageLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    final isDeleting = useStreamController<bool>();

    return BlocSelector<DayTripCubit, DayTripState, bool>(
      selector: (DayTripState state) => state.maybeMap(
        loaded: (state) => state.explictitStartTimeSave,
        orElse: () => false,
      ),
      builder: (context, explictitStartTimeSave) {
        return AbsorbPointer(
          absorbing: explictitStartTimeSave,
          child: Column(
            children: [
              explictitStartTimeSave
                  ? const Padding(
                      padding: EdgeInsets.only(top: verticalSpaceXs),
                      child: LinearProgressIndicator(),
                    )
                  : const SizedBox.shrink(),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListViewWidget(isDeleting: isDeleting.stream),
                    const Placeholder(),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );

    /* final isSaving = useStreamController<bool>();
    final errorMessage = useStreamController<String?>();
    final isDeleting = useStreamController<bool>();

    final isModalBottomEditing = useRef<bool>(false);

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
        //Show error snackbar if error and update errorMessage stream when error
        BlocListener<TripStopsMapCubit, TripStopsMapState>(
          listener: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(state.errorMessage!));
            errorMessage.add(state.errorMessage);
          },
          listenWhen: (previous, current) =>
              current.errorMessage != previous.errorMessage && current.errorMessage != null,
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
            listener: (context, state) =>
                _showModalBottomEditing(context, isSaving, isModalBottomEditing, errorMessage),
            listenWhen: (previous, current) =>
                previous is DayTripStateNormal && current is DayTripStateEditing),
        //Close modal bottom sheet if editing dismissed
        BlocListener<DayTripCubit, DayTripState>(
            listener: (context, state) {
              if (isModalBottomEditing.value) {
                Navigator.of(context).pop();
              }
            },
            listenWhen: (previous, current) =>
                previous is DayTripStateEditing && current is DayTripStateNormal),
      ],
      child: BlocSelector<DayTripCubit, DayTripState, bool>(
        selector: (DayTripState state) => state.maybeMap(
          normal: (state) => state.explictitStartTimeSave || state.isSaving,
          orElse: () => false,
        ),
        builder: (context, explictitStartTimeSave) {
          return AbsorbPointer(
            absorbing: explictitStartTimeSave,
            child: Column(
              children: [
                explictitStartTimeSave
                    ? const Padding(
                        padding: EdgeInsets.only(top: verticalSpaceXs),
                        child: LinearProgressIndicator(),
                      )
                    : const SizedBox.shrink(),
                Expanded(
                  child: BlocSelector<DayTripCubit, DayTripState, bool>(
                    selector: (state) => state.tripStops.isNotEmpty,
                    builder: (context, hasTripStops) {
                      if (hasTripStops) {
                        return TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            _ListViewWidget(isDeleting: isDeleting.stream),
                            const _MapViewWidget(),
                          ],
                        );
                      } else {
                        return _ListViewWidget(isDeleting: isDeleting.stream);
                      }
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    ); */
  }

  /* _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving,
      ObjectRef isModalBottomEditing, StreamController<String?> errorMessage) {
    final cubit = context.read<DayTripCubit>();
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
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
            ),
          ),
        );
      },
    ).then((_) {
      isModalBottomEditing.value = false;
      cubit.modalBottomEditingDismissed();
    });
  } */
}
