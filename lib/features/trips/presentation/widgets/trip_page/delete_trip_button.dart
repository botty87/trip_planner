part of '../../pages/trip_page.dart';

class _DeleteTripButton extends StatelessWidget {
  const _DeleteTripButton();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocSelector<TripCubit, TripState, bool>(
        selector: (state) {
          return state is TripStateDeleting;
        },
        builder: (context, isDeleting) {
          return ElevatedButton(
            onPressed: isDeleting ? null : () async {
              final result = await showOkCancelAlertDialog(
                context: context,
                title: LocaleKeys.deleteTrip.tr(),
                message: LocaleKeys.deleteTripQuestion.tr(),
                okLabel: LocaleKeys.delete.tr(),
                cancelLabel: LocaleKeys.cancel.tr(),
              );

              if (result == OkCancelResult.ok) {
                context.read<TripCubit>().deleteTrip();
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: const StadiumBorder(),
            ),
            child: Text(
              LocaleKeys.deleteTrip.tr(),
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
