part of 'new_edit_trip_stop_form.dart';

class _TimeWidget extends StatelessWidget {
  final ValueChanged<TimeOfDay> onTimeChanged;
  final String label;
  final Stream<TimeOfDay?> time;

  _TimeWidget({required this.onTimeChanged, required this.label, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(width: HORIZONTAL_SPACE_S),
        StreamBuilder<TimeOfDay?>(
            stream: time,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return TextButton(
                  key: Key('startTimeButton'),
                  onPressed: () {
                    _showTimePicker(context, snapshot.data);
                  },
                  child: Text(snapshot.data!.toFormattedString()),
                );
              } else {
                return TextButton(
                  key: Key('startTimeButton'),
                  onPressed: () {
                    onTimeChanged(TimeOfDay.now());
                    _showTimePicker(context, null);
                  },
                  child: Text(LocaleKeys.setTime.tr()),
                );
              }
            }),
      ],
    );
  }

  void _showTimePicker(BuildContext context, TimeOfDay? _currentTime) {
    final initialTime = _currentTime ?? TimeOfDay.now();

    getPicker() {
      return showPicker(
        isInlinePicker: Platform.isIOS,
        context: context,
        value: Time(hour: initialTime.hour, minute: initialTime.minute),
        duskSpanInMinutes: 120,
        is24HrFormat: true,
        height: 350,
        onChange: (value) {
          if (Platform.isIOS) {
            final timeOfDay = TimeOfDay(hour: value.hour, minute: value.minute);
            onTimeChanged(timeOfDay);
          }
        },
        iosStylePicker: Platform.isIOS,
        hourLabel: LocaleKeys.hours.tr(),
        minuteLabel: LocaleKeys.minutes.tr(),
        cancelText: LocaleKeys.cancel.tr(),
        isOnChangeValueMode: Platform.isIOS,
        dialogInsetPadding: EdgeInsets.all(0),
      );
    }

    if (Platform.isIOS) {
      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
          height: 400,
          padding: const EdgeInsets.only(top: 6.0),
          // The bottom margin is provided to align the popup above the system
          // navigation bar.
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // Provide a background color for the popup.
          color: CupertinoColors.systemBackground.resolveFrom(context),
          // Use a SafeArea widget to avoid system overlaps.
          child: SafeArea(
            top: false,
            child: getPicker(),
          ),
        ),
      );
    }

    if (Platform.isAndroid) {
      Navigator.of(context).push(getPicker()).then((value) {
        assert(value is Time?);
        final time = value as Time?;
        if (time != null) {
          final timeOfDay = TimeOfDay(hour: time.hour, minute: time.minute);
          onTimeChanged(timeOfDay);
        }
      });
    }
  }
}
