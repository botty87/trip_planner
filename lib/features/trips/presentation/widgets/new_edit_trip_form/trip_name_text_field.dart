part of 'new_edit_trip_form.dart';

class _TripNameTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const _TripNameTextField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: LocaleKeys.tripName.tr(),
        hintText: LocaleKeys.tripNameHint.tr(),
      ),
      onChanged: onChanged,
    );
  }
}
