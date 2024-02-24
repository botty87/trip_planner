part of '../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripsLoaded extends StatelessWidget {
  const _DiscoverNewTripsLoaded();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
              ? constraints.maxWidth * 0.8
              : constraints.maxWidth;

          return ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: ListView(
                padding: defaultPagePadding,
                children: const [
                  _DiscoverNewTripsSearchBar(),
                  SizedBox(height: verticalSpace),
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
