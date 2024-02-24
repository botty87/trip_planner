part of '../../pages/discover_new_trip_stops_page.dart';

class _DiscoverNewTripStopsBody extends StatelessWidget {
  final DayTrip _dayTrip;

  const _DiscoverNewTripStopsBody({
    required DayTrip dayTrip,
  }) : _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverNewTripStopsCubit, DiscoverNewTripStopsState>(
      buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        final hasTripStops = state.maybeMap(
          loaded: (state) => state.tripStops.isNotEmpty,
          orElse: () => false,
        );
        return TripPagesAnimatedSwitcher(
          child: state.map(
            initial: (_) => const SizedBox.shrink(),
            loaded: (state) => hasTripStops
                ? TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _ListView(dayTrip: _dayTrip),
                      const _DiscoverNewTripStopsMapTab(),
                    ],
                  )
                : _ListView(
                    dayTrip: _dayTrip,
                  ),
            error: (state) => const Center(child: _DiscoverNewTripStopsErrorWidget()),
          ),
        );
      },
    );
  }
}
