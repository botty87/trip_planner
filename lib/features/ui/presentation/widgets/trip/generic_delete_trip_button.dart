import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/l10n/locale_keys.g.dart';

class GenericDeleteTripButton extends StatelessWidget {
  final VoidCallback deleteAction;
  final String alertDialogTitle;
  final String alertDialogMessage;
  final String deleteButtonLabel;
  final bool isDeleting;

  const GenericDeleteTripButton({
    super.key,
    required this.isDeleting,
    required this.deleteAction,
    required this.alertDialogTitle,
    required this.alertDialogMessage,
    required this.deleteButtonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDeleting
          ? null
          : () async {
              final result = await showOkCancelAlertDialog(
                context: context,
                title: alertDialogTitle,
                message: alertDialogMessage,
                okLabel: LocaleKeys.delete.tr(),
                cancelLabel: LocaleKeys.cancel.tr(),
              );

              if (result == OkCancelResult.ok) {
                deleteAction.call();
              }
            },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        shape: const StadiumBorder(),
      ),
      child: Text(
        deleteButtonLabel,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white),
      ),
    );
  }
}
