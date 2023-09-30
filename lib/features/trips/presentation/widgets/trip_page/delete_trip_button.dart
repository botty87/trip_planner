part of '../../pages/trip_page.dart';

final class _DeleteTripButton extends DeleteTripButtonAbstract {
  const _DeleteTripButton({required super.isDeleting});

  @override
  String get alertDialogTitle => LocaleKeys.deleteTrip.tr();

  @override
  String get alertDialogMessage => LocaleKeys.deleteTripQuestion.tr();

  @override
  Function(BuildContext context) get deleteAction => (BuildContext context) {
        context.read<TripCubit>().deleteTrip();
      };

  @override
  String get deleteButtonLabel => LocaleKeys.deleteTrip.tr();
}
