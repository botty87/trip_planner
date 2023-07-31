part of 'new_edit_day_trip_form.dart';

class _DescriptionWidget extends StatelessWidget {
  final ValueChanged<String> onDescriptionChanged;

  const _DescriptionWidget({required this.onDescriptionChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: Key('descriptionTextField'),
      decoration: InputDecoration(
        labelText: LocaleKeys.dayTripDescription.tr(),
        hintText: LocaleKeys.dayTripDescriptionHint.tr(),
      ),
      onChanged: onDescriptionChanged,
      maxLines: 4,
      minLines: 1,
    );
  }
}
