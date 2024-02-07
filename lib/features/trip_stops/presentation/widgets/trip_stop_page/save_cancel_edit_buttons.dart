
/* final class _SaveCancelEditButtons extends GenericSaveCancelEditButtons {
  const _SaveCancelEditButtons(
      {required super.isSaving,
      required super.onCancel,
      required super.onSave,
      required super.errorMessage});
} */

import 'package:flutter/material.dart';

import '../../../../../core/widgets/trip/save_cancel_edit_buttons.dart';

final class SaveCancelEditButtons extends StatelessWidget {
  const SaveCancelEditButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSaveCancelEditButtonsNoStream(
      isSaving: false, //TODO add isSaving state
      onCancel: () => Navigator.of(context).pop(),
      onSave: () => {},
      errorMessage: '',
    );
  }
}
