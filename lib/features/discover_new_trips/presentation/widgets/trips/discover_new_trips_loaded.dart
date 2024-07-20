part of '../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripsLoaded extends StatelessWidget {
  const _DiscoverNewTripsLoaded();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: maxListViewWidth),
            child: const AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(
                        top: pageVerticalPadding, left: pageHorizontalPadding, right: pageHorizontalPadding),
                    sliver: SliverToBoxAdapter(child: _DiscoverNewTripsSearchBar()),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: verticalSpace)),
                  _DiscoverNewTripList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
