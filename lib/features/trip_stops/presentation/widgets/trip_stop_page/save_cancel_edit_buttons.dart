/* final class _SaveCancelEditButtons extends GenericSaveCancelEditButtons {
  const _SaveCancelEditButtons(
      {required super.isSaving,
      required super.onCancel,
      required super.onSave,
      required super.errorMessage});
} */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui/presentation/widgets/trip/save_cancel_edit_buttons.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

final class SaveCancelEditButtons extends StatelessWidget {
  const SaveCancelEditButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final isSaving = context.select((TripStopCubit cubit) => cubit.state.maybeMap(
          saving: (value) => true,
          orElse: () => false,
        ));

    final errorMessage = context.select((TripStopCubit cubit) => cubit.state.maybeMap(
          editing: (value) => value.errorMessage,
          orElse: () => '',
        ));

    final cubit = context.read<TripStopCubit>();

    return GenericSaveCancelEditButtonsNoStream(
      isSaving: isSaving,
      onCancel: () => cubit.cancelEditing(),
      onSave: () => cubit.saveChanges(),
      errorMessage: errorMessage,
    );
  }
}
