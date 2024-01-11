part of '../../pages/discover_new_trip_stops_page.dart';

class _DiscoverNewTripStopsErrorWidget extends StatelessWidget {
  const _DiscoverNewTripStopsErrorWidget();

  @override
  Widget build(BuildContext context) {
    final errorMessage = context.read<DiscoverNewTripStopsCubit>().state.maybeMap(
          error: (state) => state.message,
          orElse: () => throw Exception('Error widget should not be shown if there is no error'),
        );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          errorMessage,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: verticalSpaceL),
        ElevatedButton(
          onPressed: () => context.read<DiscoverNewTripStopsCubit>().fetchTripStops(),
          child: Text(LocaleKeys.retry.tr()),
        ),
      ],
    );
  }
}
