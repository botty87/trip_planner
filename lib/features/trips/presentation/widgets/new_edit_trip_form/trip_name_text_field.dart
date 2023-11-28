part of 'new_edit_trip_form.dart';

class _TripNameTextField extends HookWidget {
  final ValueChanged<String> onChanged;
  final String? initialTripName;
  const _TripNameTextField({super.key, required this.onChanged, this.initialTripName});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(text: initialTripName);

    return TextField(
      decoration: InputDecoration(
        labelText: LocaleKeys.tripName.tr(),
        hintText: LocaleKeys.tripNameHint.tr(),
      ),
      controller: textEditingController,
      onChanged: onChanged,
      keyboardType: TextInputType.name,
    );
  }
}
