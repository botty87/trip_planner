part of '../../pages/day_trip_page.dart';

final class _DeleteTripButton extends DeleteTripButtonAbstract {
  const _DeleteTripButton({required super.isDeleting});

  @override
  String get alertDialogTitle => LocaleKeys.deleteDayTrip.tr();

  @override
  String get alertDialogMessage => LocaleKeys.deleteDayTripQuestion.tr();

  @override
  Function(BuildContext context) get deleteAction => (BuildContext context) {
        context.read<DayTripCubit>().deleteDayTrip();
      };

  @override
  String get deleteButtonLabel => LocaleKeys.deleteDayTrip.tr();
}
