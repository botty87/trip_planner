part of '../../pages/discover_new_daily_trips_page.dart';

class _DiscoverNewTripsErrorWidget extends StatelessWidget {
  const _DiscoverNewTripsErrorWidget();

  @override
  Widget build(BuildContext context) {
    final errorMessage = context.read<DiscoverNewDailyTripsCubit>().state.maybeMap(
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
          onPressed: () => context.read<DiscoverNewDailyTripsCubit>().fetchDayTrips(),
          child: Text(LocaleKeys.retry.tr()),
        ),
      ],
    );
  }
}
