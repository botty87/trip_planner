part of '../../pages/trip_page.dart';

class _DayTripCard extends StatelessWidget {
  final DayTrip dayTrip;
  const _DayTripCard({required this.dayTrip});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _DayTripNameWidget(
                index: dayTrip.index,
              ),
              if (dayTrip.description != null)
                _DayTripDescriptionWidget(description: dayTrip.description!),
            ],
          ),
        ),
      ),
    );
  }
}

class _DayTripNameWidget extends StatelessWidget {
  final int index;
  const _DayTripNameWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: VERTICAL_SPACE_S),
      child: Text(
        "${LocaleKeys.day.tr()} $index",
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _DayTripDescriptionWidget extends StatelessWidget {
  final String description;
  const _DayTripDescriptionWidget({required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: VERTICAL_SPACE_S),
      child: Text(
        description,
        style: Theme.of(context).textTheme.bodyLarge,
        maxLines: 4,
        textAlign: TextAlign.justify,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
