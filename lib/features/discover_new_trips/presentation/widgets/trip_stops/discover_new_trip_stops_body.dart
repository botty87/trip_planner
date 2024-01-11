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
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) => const Center(child: CircularProgressIndicator.adaptive()),
          loaded: (state) => TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _DiscoverNewTripStopsList(dayTrip: _dayTrip),
              _DiscoverNewTripStopsMapTab(),
            ],
          ),
          error: (state) => const Center(child: _DiscoverNewTripStopsErrorWidget()),
        );
      },
    );
  }
}
