part of '../../pages/trip_stop_page.dart';

final class _DeleteTripStopButton extends DeleteTripButtonAbstract {
  const _DeleteTripStopButton({required super.isDeleting});

  @override
  String get alertDialogTitle => LocaleKeys.deleteTripStop.tr();

  @override
  String get alertDialogMessage => LocaleKeys.deleteTripStopQuestion.tr();

  @override
  Function(BuildContext context) get deleteAction => (BuildContext context) {
        context.read<TripStopCubit>().deleteTripStop();
      };

  @override
  String get deleteButtonLabel => LocaleKeys.deleteDayTrip.tr();
}
