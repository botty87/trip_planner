import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../l10n/locale_keys.g.dart';

abstract base class SaveCancelEditButtonsAbstract extends StatelessWidget {
  final Stream<bool> _isSaving;
  final VoidCallback _onCancel;
  final VoidCallback _onSave;
  final Stream<String?> _errorMessage;

  const SaveCancelEditButtonsAbstract({
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
    return StreamBuilder<bool>(
        stream: _isSaving,
        builder: (context, snapshot) {
          final isSaving = snapshot.data ?? false;

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: isSaving ? null : _onCancel,
                    child: Text(
                      LocaleKeys.cancel.tr(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: isSaving ? null : _onSave,
                    child: Text(LocaleKeys.save.tr()),
                  ),
                ],
              ),
              const SizedBox(height: verticalSpaceS),
              _ErrorMesage(errorMessage: _errorMessage),
            ],
          );
        });
  }
}

class _ErrorMesage extends StatelessWidget {
  final Stream<String?> _errorMessage;

  const _ErrorMesage({required Stream<String?> errorMessage}) : _errorMessage = errorMessage;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: _errorMessage,
      builder: (context, snapshot) {
        final errorMessage = snapshot.data;

        return errorMessage == null
            ? const SizedBox.shrink()
            : Text(
                errorMessage,
                style: const TextStyle(color: Colors.red),
              );
      },
    );
  }
}
