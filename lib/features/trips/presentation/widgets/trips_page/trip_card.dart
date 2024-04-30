import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/routes/app_router.gr.dart';
import '../../../../user_account/presentation/cubit/user/user_cubit.dart';
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
                  _TripIsPublicIcon(isPublic: trip.isPublic),
                  _TripSharedIcon(trip: trip),
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

class _TripIsPublicIcon extends StatelessWidget {
  final bool isPublic;
  const _TripIsPublicIcon({required this.isPublic});

  @override
  Widget build(BuildContext context) {
    if (isPublic) {
      return const Padding(
        padding: EdgeInsets.only(right: horizontalSpaceS),
        child: Icon(
          Icons.public,
          size: 20,
          color: Colors.green,
        ),
      );
    }

    return const SizedBox.shrink();
  }
}

class _TripSharedIcon extends StatelessWidget {
  final Trip trip;
  const _TripSharedIcon({required this.trip});

  @override
  Widget build(BuildContext context) {
    if (trip.sharedWith.isEmpty) {
      return const SizedBox.shrink();
    }

    final userId = switch (context.read<UserCubit>().state) {
      final UserStateLoggedIn loggedInState => loggedInState.user.id,
      _ => throw Exception('User is not logged in'),
    };

    //If the user is the owner of the trip show the share icon
    //Otherwise, show the people icon
    final bool isTheOwner = trip.userId == userId;

    return Icon(
      isTheOwner ? Icons.share : Icons.people,
      size: 20,
      color: isTheOwner ? Colors.blue : Colors.orange,
    );
  }
}
