import 'package:flutter/material.dart';

import '../constants.dart';

abstract base class GenericTripCard extends StatelessWidget {
  abstract final String name;
  abstract final String date;
  abstract final String? description;
  abstract final VoidCallback? onTap;

  const GenericTripCard();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _DayTripNameWidget(name: name),
              _DayTripDateWidget(date: date),
              if (description != null) _DayTripDescriptionWidget(description: description!),
            ],
          ),
        ),
      ),
      onTap: onTap, /* () => context.router
          .push(DayTripRoute(trip: context.read<TripCubit>().state.trip, dayTrip: dayTrip)), */
    );
  }
}

class _DayTripNameWidget extends StatelessWidget {
  final String name;
  const _DayTripNameWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: VERTICAL_SPACE_S),
      child: Text(
        //"${LocaleKeys.day.tr()} ${index + 1}", TODO just a placeholder, remove
        name,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _DayTripDateWidget extends StatelessWidget {
  final String date;
  const _DayTripDateWidget({required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      //"${DateFormat.yMMMMd().format(tripStartDate.add(Duration(days: index)))}", TODO placeholder to remove
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
}
