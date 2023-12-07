part of '../pages/import_old_trips_page.dart';

class _ImportButton extends StatelessWidget {
  const _ImportButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final result = await showOkCancelAlertDialog(
          context: context,
          title: LocaleKeys.importOldTrips.tr(),
          message: LocaleKeys.allNotSelectedTripsWillBeDeleted.tr(),
        );
        if (result == OkCancelResult.ok && context.mounted) {
          context.read<ImportOldTripsCubit>().import();
        }
      },
      child: Text(LocaleKeys.import.tr()),
    );
  }
}
