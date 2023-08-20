import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../l10n/locale_keys.g.dart';

abstract base class DeleteTripButtonAbstract extends StatelessWidget {
  final Stream<bool> isDeleting;
  
  abstract final Function(BuildContext context) deleteAction;
  abstract final String alertDialogTitle;
  abstract final String alertDialogMessage;

  const DeleteTripButtonAbstract({super.key, required this.isDeleting});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<bool>(
        stream: isDeleting,
        builder: (context, snapshot) {
          final isDeleting = snapshot.data ?? false;
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
                      deleteAction.call(context);
                    }
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: const StadiumBorder(),
            ),
            child: Text(
              LocaleKeys.deleteDayTrip.tr(),
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          );
        },
      ),
    );
  }
}
