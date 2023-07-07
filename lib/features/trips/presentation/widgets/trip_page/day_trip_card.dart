part of '../../pages/trip_page.dart';

class _DayTripCard extends StatelessWidget {
  final DayTrip dayTrip;
  const _DayTripCard({required this.dayTrip});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(dayTrip.name),
              Text(dayTrip.description),
            ],
          ),
        ),
      ),
    );
  }
}
