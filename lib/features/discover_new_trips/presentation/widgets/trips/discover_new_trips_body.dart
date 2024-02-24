part of '../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripBody extends StatelessWidget {
  const _DiscoverNewTripBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverNewTripsCubit, DiscoverNewTripsState>(
      buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        return TripPagesAnimatedSwitcher(
          child: state.map(
            initial: (_) => const SizedBox.shrink(),
            normal: (state) => const _DiscoverNewTripsLoaded(),
            error: (state) => const Center(child: _DiscoverNewTripsErrorWidget()),
          ),
        );
      },
    );
  }
}
