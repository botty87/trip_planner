part of 'new_edit_trip_form.dart';

class _TripDescriptionTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const _TripDescriptionTextField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {

    return TextField(
      decoration: InputDecoration(
        labelText: LocaleKeys.tripDescription.tr(),
        hintText: LocaleKeys.tripDescriptionHint.tr(),
      ),
      onChanged: onChanged,
      maxLines: 4,
      minLines: 1,
    );
  }
}
