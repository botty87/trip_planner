part of '../../pages/day_trip_page.dart';

final class _TripStopCard extends GenericTripCard {
  final TripStop tripStop;
  final DateTime tripStartDate;
  final BuildContext context;

  const _TripStopCard({
    required this.tripStop,
    required this.tripStartDate,
    required this.context,
  });

  @override
  String get name => tripStop.name;

  @override
  String get date => "Todo"; //DateFormat.yMMMMd().format(tripStartDate.add(Duration(days: index)));

  @override
  String? get description => tripStop.description;

  @override
  VoidCallback? get onTap => () {
        //TODO implement
      };
}
