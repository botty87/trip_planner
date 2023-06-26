import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

class TripCard extends StatelessWidget {
  final Trip trip;
  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _TripNameWidget(name: trip.name),
          if (trip.description != null) _TripDescriptionWidget(description: trip.description!),
          _TripCreatedAtWidget(createdAt: trip.createdAt),
        ],
      ),
    );
  }
}

class _TripNameWidget extends StatelessWidget {
  final String name;
  const _TripNameWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _TripDescriptionWidget extends StatelessWidget {
  final String description;
  const _TripDescriptionWidget({required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
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

class _TripCreatedAtWidget extends StatelessWidget {
  final DateTime createdAt;
  const _TripCreatedAtWidget({required this.createdAt});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          DateFormat.yMMMMd(context.locale.toString()).format(createdAt),
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.right,
        ));
  }
}
