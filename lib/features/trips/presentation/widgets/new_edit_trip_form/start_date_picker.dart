part of 'new_edit_trip_form.dart';

class _StartDatePicker extends StatelessWidget {
  final ValueChanged<List<DateTime?>> onValueChanged;
  final Stream<bool> isStartDateBeforeToday;

  const _StartDatePicker(
      {super.key, required this.onValueChanged, required this.isStartDateBeforeToday});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(LocaleKeys.tripStartDate.tr(),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 22,
                )),
        const SizedBox(height: VERTICAL_SPACE_S),
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
          value: [],
          onValueChanged: onValueChanged,
        ),
        StreamBuilder<bool>(
          stream: isStartDateBeforeToday,
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
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
          },
        ),
      ],
    );
  }
}
