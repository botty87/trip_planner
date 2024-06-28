part of 'new_edit_trip_form.dart';

class _StartDatePicker extends HookWidget {
  final ValueChanged<DateTime> onValueChanged;
  final DateTime? initialStartDate;

  const _StartDatePicker({super.key, required this.onValueChanged, this.initialStartDate});

  @override
  Widget build(BuildContext context) {
    final isStartDateBeforeToday = useStreamController<bool>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(LocaleKeys.tripStartDate.tr(),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 22,
                )),
        const SizedBox(height: verticalSpaceS),
        CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            dayBuilder: ({required date, decoration, isDisabled, isSelected, isToday, textStyle}) {
              if (isSelected ?? false) {
                return Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        date.day.toString(),
                        style: textStyle?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                );
              }
              return null;
            },
            dayBorderRadius: BorderRadius.circular(8),
            yearBuilder: (
                {decoration, isCurrentYear, isDisabled, isSelected, textStyle, required year}) {
              if (isSelected ?? false) {
                return Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        year.toString(),
                        style: textStyle?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    year.toString(),
                    style: textStyle,
                  ),
                );
              }
            },
          ),
          value: [initialStartDate],
          onValueChanged: (value) {
            onValueChanged(value.first);
            isStartDateBeforeToday
                .add(value.first.isBefore(DateTime.now().add(const Duration(days: -1))));
          },
        ),
        StreamBuilder<bool>(
          stream: isStartDateBeforeToday.stream,
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            return AnimatedSize(
                duration: const Duration(milliseconds: 300),
                child: _buildWarning(context, snapshot));
          },
        ),
      ],
    );
  }

  _buildWarning(BuildContext context, AsyncSnapshot<bool> snapshot) {
    if (snapshot.data ?? false) {
      return Text(
        LocaleKeys.startDateBeforeTodayWarning.tr(),
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
        textAlign: TextAlign.center,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
