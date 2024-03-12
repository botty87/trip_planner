part of 'new_edit_trip_stop_form.dart';

class FieldWidget extends HookWidget {
  final ValueChanged<String> onDescriptionChanged;
  final String label;
  final String hint;
  final int? maxLines;
  final TextInputAction? textInputAction;

  final String? initialValue;

  const FieldWidget(
      {super.key,
      required this.onDescriptionChanged,
      this.initialValue,
      required this.label,
      required this.hint,
      this.textInputAction,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    final descriptionController = useTextEditingController(text: initialValue);

    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
      onChanged: onDescriptionChanged,
      controller: descriptionController,
      maxLines: maxLines,
      textInputAction: textInputAction,
      minLines: 1,
    );
  }
}
