part of '../../../pages/discover_new_trip_stops_page.dart';

class _ListView extends HookWidget {
  final DayTrip _dayTrip;

  const _ListView({
    required DayTrip dayTrip,
  }) : _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
          ? constraints.maxWidth * 0.8
          : constraints.maxWidth;

      final horizantalPadding = (constraints.maxWidth - maxWidth) / 2 + pageHorizontalPadding;

      return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          horizantalPadding,
          pageVerticalPadding,
          horizantalPadding,
          pageVerticalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _TripStopsHeader(description: _dayTrip.description),
            if (_dayTrip.description?.isNotEmpty ?? false) const SizedBox(height: verticalSpaceL),
            _DiscoverNewTripStopsList(dayTrip: _dayTrip),
          ],
        ),
      );
    });
  }
}
