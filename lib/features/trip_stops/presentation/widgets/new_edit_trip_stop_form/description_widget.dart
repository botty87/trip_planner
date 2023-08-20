part of 'new_edit_trip_stop_form.dart';

class _DescriptionWidget extends HookWidget {
  final ValueChanged<String> onDescriptionChanged;

  final String? initialDayTripDescription;

  const _DescriptionWidget(
      {super.key, required this.onDescriptionChanged, this.initialDayTripDescription});

  @override
  Widget build(BuildContext context) {
    final descriptionController = useTextEditingController(text: initialDayTripDescription);

    return TextField(
      key: Key('descriptionTextField'),
      decoration: InputDecoration(
        labelText: LocaleKeys.dayTripDescription.tr(),
        hintText: LocaleKeys.dayTripDescriptionHint.tr(),
      ),
      onChanged: onDescriptionChanged,
      controller: descriptionController,
      maxLines: 4,
      minLines: 1,
    );
  }
}
