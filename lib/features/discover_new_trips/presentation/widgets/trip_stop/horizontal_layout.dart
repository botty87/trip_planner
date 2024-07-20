part of '../../pages/discover_new_trip_stop_page.dart';

class _HorizontalLayout extends StatelessWidget {
  const _HorizontalLayout();

  @override
  Widget build(BuildContext context) {
    final tripStop = context.read<DiscoverNewTripStopCubit>().state.tripStop;

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxRowWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: maxListViewWidth), child: const _MapWidget()),
            ),
            const SizedBox(width: horizontalSpace),
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                child: ListView(
                  padding: const EdgeInsets.only(right: pageHorizontalPadding, bottom: pageVerticalPadding),
                  children: [
                    _TripStopDescription(description: tripStop.description),
                    const SizedBox(height: verticalSpace),
                    const _TripStopDurationWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
