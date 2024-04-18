part of '../../pages/trip_page.dart';

_showSharingModalBottom(BuildContext context) {
  final tripCubit = context.read<TripCubit>();

  final sharedUsers = tripCubit.state.trip.sharedWith;

  final tripId = tripCubit.state.maybeMap(
    loaded: (state) => state.trip.id,
    orElse: () => throw const UnexpectedStateException(),
  );

  final userEmail = context.read<UserCubit>().state.maybeMap(
        loggedIn: (state) => state.user.email,
        orElse: () => throw const UnexpectedStateException(),
      );

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    useRootNavigator: true,
    isDismissible: false,
    useSafeArea: true,
    builder: (context) {
      return BlocProvider<ShareCubit>(
        create: (context) => getIt(
          param1: ShareCubitParams(tripId: tripId, userEmail: userEmail, sharedUsers: sharedUsers),
        )..updatedSharedUsers(sharedUsers),
        child: BlocListener<TripCubit, TripState>(
          bloc: tripCubit,
          listener: (context, state) =>
              context.read<ShareCubit>().updatedSharedUsers(state.trip.sharedWith),
          listenWhen: (previous, current) => previous.trip.sharedWith != current.trip.sharedWith,
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const SharingTripSection(),
          ),
        ),
      );
    },
  );
}
