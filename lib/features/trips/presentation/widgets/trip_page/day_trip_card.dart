part of '../../pages/trip_page.dart';

final class _DayTripCard extends GenericTripCard {
  final DayTrip dayTrip;
  final DateTime tripStartDate;
  final BuildContext context;

  const _DayTripCard({required this.dayTrip, required this.tripStartDate, required this.context});

  @override
  String get name => "${LocaleKeys.day.tr()} ${dayTrip.index + 1}";

  @override
  String get date => DateFormat.yMMMMd().format(tripStartDate.add(Duration(days: dayTrip.index)));

  @override
  String? get description => dayTrip.description;

  @override
  VoidCallback get onTap => () => context.router
      .push(DayTripRoute(trip: context.read<TripCubit>().state.trip, dayTrip: dayTrip));
}

/* class _DayTripCard extends StatelessWidget {
  final DateTime _tripStartDate;
  final DayTrip dayTrip;
  const _DayTripCard({required this.dayTrip, required DateTime tripStartDate})
      : _tripStartDate = tripStartDate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _DayTripNameWidget(index: dayTrip.index),
              _DayTripDateWidget(index: dayTrip.index, tripStartDate: _tripStartDate),
              if (dayTrip.description != null)
                _DayTripDescriptionWidget(description: dayTrip.description!),
            ],
          ),
        ),
      ),
      onTap: () => context.router
          .push(DayTripRoute(trip: context.read<TripCubit>().state.trip, dayTrip: dayTrip)),
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
        "${LocaleKeys.day.tr()} ${index + 1}",
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _DayTripDateWidget extends StatelessWidget {
  final int index;
  final DateTime tripStartDate;
  const _DayTripDateWidget({required this.index, required this.tripStartDate});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${DateFormat.yMMMMd().format(tripStartDate.add(Duration(days: index)))}",
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
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
} */
