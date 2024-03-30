import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../../ui/presentation/widgets/generics/snackbars.dart';
import '../../../cubit/trip_stop/trip_stop_cubit.dart';
import '../../new_edit_trip_stop_form/new_edit_trip_stop_form.dart';
import '../save_cancel_edit_buttons.dart';
import 'trip_stop_page_body_horizontal.dart';
import 'trip_stop_page_body_vertical.dart';

class TripStopPageBody extends HookWidget {
  const TripStopPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final hourDuration = useStreamController<int>();
    final minuteDuration = useStreamController<int>();
    final isSaving = useStreamController<bool>();

    final isModalBottomEditing = useRef<bool>(false);

    return MultiBlocListener(
      listeners: [
        //Show error snackbar if error
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) {
            final errorState = state as TripStopStateError;
            ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(errorState.message));
          },
          listenWhen: (previous, current) => current is TripStopStateError,
        ),
        //Pop page if deleted
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) => context.router.maybePop(),
          listenWhen: (previous, current) => current is TripStopStateDeleted,
        ),
        //Show modal bottom sheet if editing
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) => _showModalBottomEditing(
            context,
            isSaving,
            hourDuration,
            minuteDuration,
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
          deleting: (_) => true,
          orElse: () => false,
        ),
        builder: (context, isSavingOrDeleting) {
          return AbsorbPointer(
            absorbing: isSavingOrDeleting,
            child: Column(
              children: [
                isSavingOrDeleting ? const LinearProgressIndicator() : const SizedBox.shrink(),
                Expanded(
                  child: Builder(builder: (context) {
                    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
                      return const TripStopPageBodyVertical();
                    } else {
                      return OrientationBuilder(
                        builder: (context, orientation) {
                          if (orientation == Orientation.portrait) {
                            return const TripStopPageBodyVertical();
                          } else {
                            return const TripStopPageBodyHorizontal();
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
        return BlocProvider.value(
          value: cubit,
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: NewEditTripStopForm.editTripStop(
              key: const Key('new_edit_trip_stop_form'),
              isSaving: isSaving.stream,
              hourDuration: hourDuration.stream,
              minuteDuration: minuteDuration.stream,
              tripStop: cubit.state.tripStop,
              onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
              onNameChanged: (String value) => cubit.nameChanged(value),
              onHourDurationChanged: (int value) => cubit.hourDurationChanged(value),
              onMinuteDurationChanged: (int value) => cubit.minuteDurationChanged(value),
              onLocationChanged: (LatLng? value) {
                if (value != null) {
                  cubit.locationChanged(value);
                }
              },
              saveSection: const SaveCancelEditButtons(),
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
