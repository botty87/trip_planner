part of '../../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripsSearchBar extends StatelessWidget {
  const _DiscoverNewTripsSearchBar();

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidgetContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _SearchField(),
          _MoreBar(),
          _MoreSection(),
        ],
      ),
    );
  }
}
