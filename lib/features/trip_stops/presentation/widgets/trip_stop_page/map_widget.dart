part of '../../pages/trip_stop_page.dart';

class _MapWidget extends StatelessWidget {
  const _MapWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripStopCubit, TripStopState>(
      buildWhen: (previous, current) => previous.tripStop.location != current.tripStop.location,
      builder: (context, state) {
        return MapWidget.single(
          mapPlace: context.read<TripStopCubit>().state.tripStop.toMapPlace(),
          showInfoWindow: false,
          useDifferentColorsForDone: false,
          isInsideScrollView: true,
        );
      },
    );
  }
}
