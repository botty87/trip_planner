part of '../pages/discover_new_trips_page.dart';

class _DiscoverNewTripBody extends StatelessWidget {
  const _DiscoverNewTripBody();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(
        top: pageVerticalPadding,
        left: pageHorizontalPadding,
        right: pageHorizontalPadding,
      ),
      child: BlocSelector<DiscoverNewTripsCubit, DiscoverNewTripsState, bool>(
        selector: (state) {
          return state.maybeMap(
            loading: (_) => true,
            orElse: () => false,
          );
        },
        builder: (context, isLoading) {
          if (isLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          return Column(
            children: [
              _DiscoverNewTripsSearchBar(),
              const Expanded(child: _DiscoverNewTripList()),
            ],
          );
        },
      ),
    );
  }
}
