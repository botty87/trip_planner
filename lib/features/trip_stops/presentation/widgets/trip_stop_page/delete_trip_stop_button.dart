import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../ui/presentation/widgets/trip/generic_delete_trip_button.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

final class DeleteTripStopButton extends StatelessWidget {
  const DeleteTripStopButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDeleting = context.select((TripStopCubit cubit) => cubit.state.maybeMap(
          deleting: (_) => true,
          orElse: () => false,
        ));

    return GenericDeleteTripButton(
      key: const Key('deleteTripStopButton'),
      isDeleting: isDeleting,
      deleteAction: () => context.read<TripStopCubit>().deleteTripStop(),
      alertDialogTitle: LocaleKeys.deleteTripStop.tr(),
      alertDialogMessage: LocaleKeys.deleteTripStopQuestion.tr(),
      deleteButtonLabel: LocaleKeys.deleteTripStop.tr(),
    );
  }
}
