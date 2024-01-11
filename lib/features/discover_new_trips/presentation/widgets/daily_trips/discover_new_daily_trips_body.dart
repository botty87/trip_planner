part of '../../pages/discover_new_daily_trips_page.dart';

class _DiscoverNewDailyTripsBody extends StatelessWidget {
  final Trip _trip;
  
  const _DiscoverNewDailyTripsBody({
    required Trip trip,
  }) : _trip = trip;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverNewDailyTripsCubit, DiscoverNewDailyTripsState>(
      buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) => const Center(child: CircularProgressIndicator.adaptive()),
          loaded: (state) =>  Column(
            children: [
              Expanded(child: _DiscoverNewDailyTripList(trip: _trip)),
              const SafeArea(child: _AddTripBottomButton()),
            ],
          ),
          error: (state) => const Center(child: _DiscoverNewTripsErrorWidget()),
        );
      },
    );
  }
}
