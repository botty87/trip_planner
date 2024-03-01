import 'package:flutter/material.dart';

import '../../../../ui/presentation/widgets/trip/save_cancel_edit_buttons.dart';

final class SaveCancelEditButtons extends StatelessWidget {
  final Stream<bool> _isSaving;
  final VoidCallback _onCancel;
  final VoidCallback _onSave;
  final Stream<String?> _errorMessage;

  const SaveCancelEditButtons({
    super.key,
    required Stream<bool> isSaving,
    required VoidCallback onCancel,
    required VoidCallback onSave,
    required Stream<String?> errorMessage,
  })  : _isSaving = isSaving,
        _onCancel = onCancel,
        _onSave = onSave,
        _errorMessage = errorMessage;

  @override
  Widget build(BuildContext context) {
    return GenericSaveCancelEditButtons(
      isSaving: _isSaving,
      onCancel: _onCancel,
      onSave: _onSave,
      errorMessage: _errorMessage,
    );
  }
}
