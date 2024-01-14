part of '../../pages/discover_new_trip_stop_page.dart';

class _VerticalLayout extends StatelessWidget {
  const _VerticalLayout();

  @override
  Widget build(BuildContext context) {
    final tripStop = context.read<DiscoverNewTripStopCubit>().state.tripStop;

    return SingleChildScrollView(
      padding: defaultPagePadding,
      child: Column(
        children: [
          _TripStopDescription(headerText: tripStop.description),
          const SizedBox(height: verticalSpace),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: const _MapWidget(),
          ),
        ],
      ),
    );
  }
}
