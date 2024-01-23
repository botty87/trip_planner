
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/widgets/trip/delete_trip_button.dart';
import '../../cubit/trip/trip_cubit.dart';

class DeleteTripButton extends StatelessWidget {

  const DeleteTripButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericDeleteTripButton(
      isDeleting: false,
      alertDialogTitle: LocaleKeys.deleteTrip.tr(),
      alertDialogMessage: LocaleKeys.deleteTripQuestion.tr(),
      deleteButtonLabel: LocaleKeys.deleteTrip.tr(),
      deleteAction: () => context.read<TripCubit>().deleteTrip(),
    );
  }
  
}
