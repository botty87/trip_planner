part of '../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripsErrorWidget extends StatelessWidget {
  const _DiscoverNewTripsErrorWidget();

  @override
  Widget build(BuildContext context) {
    final errorMessage = context.read<DiscoverNewTripsCubit>().state.maybeMap(
          error: (state) => state.message,
          orElse: () => throw const UnexpectedStateException(),
        );

    return GenericErrorWidget(
        message: errorMessage, onRetry: () => context.read<DiscoverNewTripsCubit>().fetchTrips());
  }
}
