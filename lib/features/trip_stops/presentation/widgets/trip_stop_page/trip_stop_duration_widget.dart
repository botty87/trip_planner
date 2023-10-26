part of '../../pages/trip_stop_page.dart';

class _TripStopDurationWidget extends StatelessWidget {
  const _TripStopDurationWidget();

  @override
  Widget build(BuildContext context) {
    final tripStop = context.read<TripStopCubit>().state.tripStop;
    final durationInMinutes = tripStop.duration;
    final durationInHours = (durationInMinutes / 60).truncate();

    final String estimatedDurationText;

    if (durationInHours == 0) {
      estimatedDurationText = '${durationInMinutes.remainder(60)}m';
    } else {
      estimatedDurationText = '${durationInHours}h ${durationInMinutes.remainder(60)}m';
    }

    return Column(
      children: [
        Text(
          LocaleKeys.tripStopEstimatedDuration.tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          estimatedDurationText,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.grey[800],
                fontSize: 20,
              ),
        ),
      ],
    );
  }
}
