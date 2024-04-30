import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../ui/presentation/widgets/trip/generic_delete_trip_button.dart';
import '../../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../../cubit/trip/trip_cubit.dart';

class DeleteTripButton extends StatelessWidget {
  const DeleteTripButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDeleting = context.select((TripCubit cubit) {
      return switch (cubit.state) {
        TripStateDeleting _ => true,
        TripStateDeleted _ => true,
        _ => false
      };
    });

    final isUserTheOwner = switch (context.read<UserCubit>().state) {
      final UserStateLoggedIn userState =>
        userState.user.id == context.read<TripCubit>().state.trip.userId,
      _ => throw const UnexpectedStateException(message: 'User is not logged in'),
    };

    return GenericDeleteTripButton(
      isDeleting: isDeleting,
      alertDialogTitle: isUserTheOwner ? LocaleKeys.deleteTrip.tr() : LocaleKeys.removeTrip.tr(),
      alertDialogMessage:
          isUserTheOwner ? LocaleKeys.deleteTripQuestion.tr() : LocaleKeys.removeTripQuestion.tr(),
      deleteButtonLabel: isUserTheOwner ? LocaleKeys.deleteTrip.tr() : LocaleKeys.removeTrip.tr(),
      deleteAction: isUserTheOwner ? () => context.read<TripCubit>().deleteTrip() : () {},
      confirmButtonLabel: isUserTheOwner ? LocaleKeys.delete.tr() : LocaleKeys.remove.tr(),
    );
  }
}
