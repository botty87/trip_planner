part of 'new_edit_day_trip_form.dart';

class _DescriptionWidget extends HookWidget {
  final ValueChanged<String> onDescriptionChanged;

  final String? initialTripDescription;

  const _DescriptionWidget({super.key, required this.onDescriptionChanged, this.initialTripDescription});

  @override
  Widget build(BuildContext context) {
    final descriptionController = useTextEditingController(text: initialTripDescription);

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
