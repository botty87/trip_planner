part of '../../pages/trip_stop_page.dart';

class _TripStopDurationWidget extends StatelessWidget {
  const _TripStopDurationWidget();

  @override
  Widget build(BuildContext context) {
    final durationInMinutes =
        context.select((TripStopCubit cubit) => cubit.state.tripStop.duration);

    return GenericDurationWidget(durationInMinutes: durationInMinutes);
  }
}
