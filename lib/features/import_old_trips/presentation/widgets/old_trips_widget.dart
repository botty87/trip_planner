part of '../pages/import_old_trips_page.dart';

class _OldTripsWidget extends StatelessWidget {
  final List<OldTrip> trips;
  const _OldTripsWidget({required this.trips});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: horizontalSpace, vertical: verticalSpaceXs),
          child: Text(LocaleKeys.oldTripsWelcome.tr(), textAlign: TextAlign.center),
        ),
        Expanded(
          child: TreeView.simple(
            tree: _buildTree(),
            showRootNode: false,
            builder: (context, node) {
              return _TreeNodeWidget(treeNode: node);
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalSpace, vertical: verticalSpaceXs),
          child: _ImportButton(),
        ),
      ],
    );
  }

  TreeNode _buildTree() {
    final treeNodeRoot = TreeNode.root();

    for (OldTrip trip in trips) {
      final tripForTree = trip.copyWith(dailyTrips: []);
      final treeNodeTrip = TreeNode(data: tripForTree);
      treeNodeRoot.add(treeNodeTrip);

      for (OldDailyTrip dailyTrip in trip.dailyTrips) {
        final dailyTripForTree = dailyTrip.copyWith(places: []);
        final treeNodeDailyTrip = TreeNode(data: dailyTripForTree);
        treeNodeTrip.add(treeNodeDailyTrip);

        for (OldPlace place in dailyTrip.places) {
          final treeNodePlace = TreeNode(data: place);
          treeNodeDailyTrip.add(treeNodePlace);
        }
      }
    }

    return treeNodeRoot;
  }
}

class _TreeNodeWidget extends StatelessWidget {
  final TreeNode treeNode;
  const _TreeNodeWidget({required this.treeNode});

  @override
  Widget build(BuildContext context) {
    final data = treeNode.data;
    if (data is OldTrip) {
      return _TripWidget(trip: data);
    } else if (data is OldDailyTrip) {
      return _DailyTripWidget(dailyTrip: data);
    } else if (data is OldPlace) {
      return _PlaceWidget(place: data);
    } else {
      return ListTile(title: Text(LocaleKeys.oldTrips.tr()));
    }
  }
}

class _TripWidget extends StatelessWidget {
  final OldTrip trip;
  const _TripWidget({required this.trip});

  @override
  Widget build(BuildContext context) {
    final selectedTrips = context.select((ImportOldTripsCubit cubit) =>
            cubit.state.mapOrNull(loaded: (state) => state.selectedTripsIds)) ??
        {};

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: verticalSpaceXs),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Checkbox(
              value: selectedTrips.contains(trip.id),
              onChanged: (value) {
                context.read<ImportOldTripsCubit>().toggleTrip(trip.id);
              },
            ),
          ),
          Expanded(
            child: Text(trip.name, maxLines: null, style: Theme.of(context).textTheme.titleMedium),
          ),
        ],
      ),
    );
  }
}

class _DailyTripWidget extends StatelessWidget {
  final OldDailyTrip dailyTrip;
  const _DailyTripWidget({required this.dailyTrip});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(dailyTrip.name),
      subtitle: Text(dailyTrip.note ?? ""),
    );
  }
}

class _PlaceWidget extends StatelessWidget {
  final OldPlace place;
  const _PlaceWidget({required this.place});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(place.name),
      subtitle: Text(place.note ?? ""),
    );
  }
}
