import 'package:flutter/material.dart';

import '../../constants.dart';

class GenericTripCard extends StatelessWidget {
  final String name;
  final String? date;
  final String? description;
  final VoidCallback? onTap;
  final Color? color;

  const GenericTripCard({
    super.key,
    required this.name,
    this.date,
    this.description,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _DayTripNameWidget(name: name),
              if (date != null) _DayTripDateWidget(date: date!),
              if (description != null) _DayTripDescriptionWidget(description: description!),
            ],
          ),
        ),
      ),
    );
  }
}

class _DayTripNameWidget extends StatelessWidget {
  final String name;
  const _DayTripNameWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: verticalSpaceS),
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

class _DayTripDateWidget extends StatelessWidget {
  final String date;
  const _DayTripDateWidget({required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontStyle: FontStyle.italic),
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
      padding: const EdgeInsets.only(top: verticalSpaceS),
      child: ColoredBox(
        color: Colors.white.withOpacity(0.95),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: verticalSpaceS, horizontal: horizontalSpaceS),
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
            maxLines: 5,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
