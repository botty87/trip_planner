import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/routes/app_router.gr.dart';
import '../../../domain/entities/trip.dart';

class TripCard extends StatelessWidget {
  final Trip trip;
  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(TripRoute(trip: trip)),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(verticalSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              _TripNameWidget(name: trip.name),
              if (trip.description != null) _TripDescriptionWidget(description: trip.description!),
              Row(
                children: [
                  _TripPrivacyWidget(isPublic: trip.isPublic),
                  Expanded(child: _TripCreatedAtWidget(createdAt: trip.createdAt)),
                ],
              ),
            ],
          ),
        ),
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

class _TripDescriptionWidget extends StatelessWidget {
  final String description;
  const _TripDescriptionWidget({required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: verticalSpaceS),
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
      padding: const EdgeInsets.all(8),
      child: Text(
        "${LocaleKeys.createdOn.tr()} ${DateFormat.yMMMMd().format(createdAt)}",
        style: Theme.of(context).textTheme.bodySmall,
        textAlign: TextAlign.right,
      ),
    );
  }
}

class _TripPrivacyWidget extends StatelessWidget {
  final bool isPublic;
  const _TripPrivacyWidget({required this.isPublic});

  @override
  Widget build(BuildContext context) {
    return Icon(
      size: 20,
      isPublic ? Icons.public : Icons.lock,
      color: isPublic ? Colors.green : Colors.red,
    );
  }
}
