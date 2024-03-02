part of '../../pages/discover_new_daily_trips_page.dart';

class _LoadedWidget extends StatelessWidget {
  final Trip _trip;
  const _LoadedWidget({required Trip trip}) : _trip = trip;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
            ? constraints.maxWidth * 0.8
            : constraints.maxWidth;

        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: ListView(
            padding: defaultPagePadding,
            children: [
              _DailyTripsHeader(description: _trip.description),
              if (_trip.description?.isNotEmpty ?? false) const SizedBox(height: verticalSpaceL),
              _DiscoverNewDailyTripList(trip: _trip),
            ],
          ),
        );
      }),
    );
  }
}
