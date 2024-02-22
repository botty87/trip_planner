part of '../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripBody extends StatelessWidget {
  const _DiscoverNewTripBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverNewTripsCubit, DiscoverNewTripsState>(
      buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          normal: (state) => const Padding(
            padding: EdgeInsets.only(
              top: pageVerticalPadding,
              left: pageHorizontalPadding,
              right: pageHorizontalPadding,
            ),
            child: Column(
              children: [
                _DiscoverNewTripsSearchBar(),
                Expanded(child: _DiscoverNewTripList()),
              ],
            ),
          ),
          error: (state) => const Center(child: _DiscoverNewTripsErrorWidget()),
        );
      },
    );
  }
}
