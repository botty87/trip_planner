part of '../../../pages/discover_new_trip_stops_page.dart';

class _ListView extends HookWidget {
  final DayTrip _dayTrip;

  const _ListView({
    required DayTrip dayTrip,
  }) : _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(
              top: pageVerticalPadding, left: pageHorizontalPadding, right: pageHorizontalPadding),
          sliver: SliverToBoxAdapter(child: _TripStopsHeader(description: _dayTrip.description)),
        ),
        if (_dayTrip.description?.isNotEmpty ?? false)
          const SliverToBoxAdapter(child: SizedBox(height: verticalSpaceL)),
        _DiscoverNewTripStopsList(dayTrip: _dayTrip),
      ],
    );
  }
}
