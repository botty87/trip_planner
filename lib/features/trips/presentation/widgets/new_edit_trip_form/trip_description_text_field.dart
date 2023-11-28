part of 'new_edit_trip_form.dart';

class _TripDescriptionTextField extends HookWidget {
  final ValueChanged<String> onChanged;
  final String? initialTripDescription;

  const _TripDescriptionTextField(
      {super.key, required this.onChanged, this.initialTripDescription});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialTripDescription);

    return TextField(
      decoration: InputDecoration(
        labelText: LocaleKeys.tripDescription.tr(),
        hintText: LocaleKeys.tripDescriptionHint.tr(),
      ),
      controller: controller,
      onChanged: onChanged,
      maxLines: 4,
      minLines: 1,
      keyboardType: TextInputType.multiline,
    );
  }
}
