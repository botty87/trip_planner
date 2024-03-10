part of 'new_edit_trip_stop_form.dart';

class DurationWidget extends StatelessWidget {
  final ValueChanged<int> onHourDurationChanged;
  final ValueChanged<int> onMinuteDurationChanged;
  final Stream<int> hourDuration;
  final Stream<int> minuteDuration;
  final int initialHourDuration;
  final int initialMinuteDuration;

  const DurationWidget(
      {required this.onHourDurationChanged,
      required this.onMinuteDurationChanged,
      required this.hourDuration,
      required this.minuteDuration,
      required this.initialHourDuration,
      required this.initialMinuteDuration,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
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
          initialValue: initialHourDuration,
        ),
        const SizedBox(height: verticalSpace),
        _TimeSlider(
          maxValue: 59,
          label: LocaleKeys.minutes.tr(),
          onValueChanged: onMinuteDurationChanged,
          value: minuteDuration,
          initialValue: initialMinuteDuration,
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
  final int initialValue;

  const _TimeSlider({
    required this.maxValue,
    required this.label,
    required this.onValueChanged,
    required this.value,
    required this.initialValue,
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
                initialData: initialValue,
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
            initialData: initialValue,
            builder: (context, snapshot) {
              if (kIsWeb) {
                return _androidSlider(snapshot.data!);
              }
              if (Platform.isIOS) {
                return _cupertinoSlider(snapshot.data!);
              } else {
                return _androidSlider(snapshot.data!);
              }
            }),
      ],
    );
  }

  CupertinoSlider _cupertinoSlider(int value) {
    return CupertinoSlider(
      key: const Key('durationSlider'),
      value: value.toDouble(),
      min: 0,
      max: maxValue.toDouble(),
      divisions: maxValue,
      onChanged: (value) => onValueChanged(value.toInt()),
    );
  }

  Slider _androidSlider(int value) {
    return Slider(
      key: const Key('durationSlider'),
      value: value.toDouble(),
      min: 0,
      max: maxValue.toDouble(),
      divisions: maxValue,
      label: value.toString(),
      onChanged: (value) => onValueChanged(value.toInt()),
    );
  }
}
