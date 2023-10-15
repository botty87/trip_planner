part of 'new_edit_day_trip_form.dart';

class _DescriptionWidget extends HookWidget {
  final ValueChanged<String> onDescriptionChanged;

  final String? initialDayTripDescription;

  const _DescriptionWidget(
      {super.key, required this.onDescriptionChanged, this.initialDayTripDescription});

  @override
  Widget build(BuildContext context) {
    final descriptionController = useTextEditingController(text: initialDayTripDescription);

    return TextField(
      key: const Key('descriptionTextField'),
      decoration: InputDecoration(
        labelText: LocaleKeys.dayTripDescription.tr(),
        hintText: LocaleKeys.dayTripDescriptionHint.tr(),
      ),
      onChanged: onDescriptionChanged,
      controller: descriptionController,
      maxLines: null,
      minLines: 1,
    );
  }
}
