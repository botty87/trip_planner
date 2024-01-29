import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/widgets/trip/delete_trip_button.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

class DeleteDayTripButton extends StatelessWidget {
  const DeleteDayTripButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDeleting = context.select((DayTripCubit cubit) => cubit.state.maybeMap(
          deleting: (_) => true,
          deleted: (_) => true,
          orElse: () => false,
        ));

    return GenericDeleteTripButton(
      isDeleting: isDeleting,
      alertDialogTitle: LocaleKeys.deleteTrip.tr(),
      alertDialogMessage: LocaleKeys.deleteTripQuestion.tr(),
      deleteButtonLabel: LocaleKeys.deleteTrip.tr(),
      deleteAction: () {
        context.read<DayTripCubit>().deleteDayTrip();
      },
    );
  }
}
