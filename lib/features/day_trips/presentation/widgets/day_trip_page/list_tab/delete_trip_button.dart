
import 'package:flutter/material.dart';


/* final class DeleteTripButton extends DeleteTripButtonAbstract {
  const DeleteTripButton({required super.isDeleting});

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
} */

class DeleteTripButton extends StatelessWidget {
  final bool isDeleting;
  const DeleteTripButton({required this.isDeleting, super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}