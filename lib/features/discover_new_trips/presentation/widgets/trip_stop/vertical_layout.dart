part of '../../pages/discover_new_trip_stop_page.dart';

class _VerticalLayout extends StatelessWidget {
  const _VerticalLayout();

  @override
  Widget build(BuildContext context) {
    final tripStop = context.read<DiscoverNewTripStopCubit>().state.tripStop;
    final double heightFactor = tripStop.description == null ? 0.6 : 0.4;

    return ListView(
      padding: defaultPagePadding,
      children: [
        _TripStopDescription(description: tripStop.description),
        const SizedBox(height: verticalSpace),
        SizedBox(
          height: MediaQuery.of(context).size.height * heightFactor,
          child: const _MapWidget(),
        ),
        const SizedBox(height: verticalSpace),
        const _TripStopDurationWidget(),
      ],
    );
  }
}
