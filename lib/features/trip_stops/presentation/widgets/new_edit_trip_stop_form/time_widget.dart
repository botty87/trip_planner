/* part of 'new_edit_trip_stop_form.dart';

class _TimeWidget extends StatelessWidget {
  final ValueChanged<TimeOfDay> onTimeChanged;
  final String label;
  final Stream<TimeOfDay?> time;

  _TimeWidget({required this.onTimeChanged, required this.label, required this.time});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                      _showTimePicker(context, null);
                    },
                    child: Text(LocaleKeys.setTime.tr()),
                  );
                }
              }),
        ],
      ),
    );
  }

  void _showTimePicker(BuildContext context, TimeOfDay? _currentTime) {
    TimeOfDay selectedTime = _currentTime ?? TimeOfDay.now();

    Widget getPicker() {
      return Column(
        children: [
          showPicker(
            isInlinePicker: true,
            context: context,
            value: Time(hour: selectedTime.hour, minute: selectedTime.minute),
            duskSpanInMinutes: 120,
            is24HrFormat: true,
            height: 350,
            onChange: (value) => selectedTime = TimeOfDay(hour: value.hour, minute: value.minute),
            iosStylePicker: true,
            hourLabel: LocaleKeys.hours.tr(),
            minuteLabel: LocaleKeys.minutes.tr(),
            cancelText: LocaleKeys.cancel.tr(),
            isOnChangeValueMode: true,
            dialogInsetPadding: EdgeInsets.all(0),
          ),
          const SizedBox(height: VERTICAL_SPACE_S),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(width: HORIZONTAL_SPACE_L),
              IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  onTimeChanged(selectedTime);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      );
    }

    Widget _getModal() {
      return Container(
        height: 440,
        padding: const EdgeInsets.only(top: 6.0),
        // The bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: Theme.of(context).scaffoldBackgroundColor,
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: getPicker(),
        ),
      );
    }

    if (Platform.isIOS) {
      showCupertinoModalPopup<void>(
          context: context, builder: (BuildContext context) => _getModal());
    }

    if (Platform.isAndroid) {
      showBottomSheet(context: context, builder: (context) => _getModal());
    }
  }
}
 */