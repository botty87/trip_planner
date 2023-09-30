part of 'new_edit_trip_stop_form.dart';

class DurationWidget extends StatelessWidget {
  final ValueChanged<int> onHourDurationChanged;
  final ValueChanged<int> onMinuteDurationChanged;
  final Stream<int> hourDuration;
  final Stream<int> minuteDuration;

  const DurationWidget(
      {required this.onHourDurationChanged,
      required this.onMinuteDurationChanged,
      required this.hourDuration,
      required this.minuteDuration,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          LocaleKeys.tripStopEstimatedDuration.tr(),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 17,
              ),
        ),
        const SizedBox(height: verticalSpace),
        _TimeSlider(
          maxValue: 12,
          label: LocaleKeys.hours.tr(),
          onValueChanged: onHourDurationChanged,
          value: hourDuration,
        ),
        const SizedBox(height: verticalSpace),
        _TimeSlider(
          maxValue: 59,
          label: LocaleKeys.minutes.tr(),
          onValueChanged: onMinuteDurationChanged,
          value: minuteDuration,
        ),
      ],
    );
  }
}

class _TimeSlider extends StatelessWidget {
  final int maxValue;
  final String label;

  final ValueChanged<int> onValueChanged;
  final Stream<int> value;

  const _TimeSlider({
    required this.maxValue,
    required this.label,
    required this.onValueChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: horizontalSpace),
            StreamBuilder<int>(
                stream: value,
                initialData: 0,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data.toString(),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  );
                }),
          ],
        ),
        StreamBuilder<int>(
            stream: value,
            initialData: 0,
            builder: (context, snapshot) {
              if (Platform.isIOS) {
                return CupertinoSlider(
                  key: const Key('durationSlider'),
                  value: snapshot.data!.toDouble(),
                  min: 0,
                  max: maxValue.toDouble(),
                  divisions: maxValue,
                  onChanged: (value) => onValueChanged(value.toInt()),
                );
              } else {
                return Slider(
                  key: const Key('durationSlider'),
                  value: snapshot.data!.toDouble(),
                  min: 0,
                  max: maxValue.toDouble(),
                  divisions: maxValue,
                  label: snapshot.data.toString(),
                  onChanged: (value) => onValueChanged(value.toInt()),
                );
              }
            }),
      ],
    );
  }
}
