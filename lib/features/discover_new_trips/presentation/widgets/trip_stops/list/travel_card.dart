part of '../../../pages/discover_new_trip_stops_page.dart';

class _TravelCard extends StatelessWidget {
  final TripStop tripStop;

  const _TravelCard({required this.tripStop});

  @override
  Widget build(BuildContext context) {
    return GenericTravelCard(tripStop: tripStop, onTap: () {});
  }
}
