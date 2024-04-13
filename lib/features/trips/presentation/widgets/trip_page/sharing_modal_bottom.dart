part of '../../pages/trip_page.dart';

_showSharingModalBottom(BuildContext context) {
  final sharedUsers = context.read<TripCubit>().state.maybeMap(
        loaded: (state) {
          //Convert sharedWith to Map<String, String?>
          return Map<String, String?>.fromEntries(
              state.trip.sharedWith.map((email) => MapEntry(email, null)));
        },
        orElse: () => throw const UnexpectedStateException(),
      );

  final tripId = context.read<TripCubit>().state.maybeMap(
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
            param1:
                ShareCubitParams(tripId: tripId, userEmail: userEmail, sharedUsers: sharedUsers)),
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const SharingTripSection(),
        ),
      );
    },
  );
}
