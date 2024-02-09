part of '../../pages/discover_new_trip_stop_page.dart';

class _HorizontalLayout extends StatelessWidget {
  const _HorizontalLayout();

  @override
  Widget build(BuildContext context) {
    final tripStop = context.read<DiscoverNewTripStopCubit>().state.tripStop;

    return Row(
      children: [
        const Expanded(child: _MapWidget()),
        const SizedBox(width: horizontalSpace),
        Expanded(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.only(right: pageHorizontalPadding, bottom: pageVerticalPadding),
            child: Column(
              children: [
                _TripStopDescription(description: tripStop.description),
                const SizedBox(height: verticalSpace),
                const _TripStopDurationWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
