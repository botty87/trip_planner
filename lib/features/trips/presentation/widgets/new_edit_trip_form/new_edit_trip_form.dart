import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';

part 'trip_name_text_field.dart';
part 'trip_description_text_field.dart';
part 'start_date_picker.dart';

class NewEditTripForm extends StatelessWidget {
  final Widget saveSection;
  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onDescriptionChanged;
  final ValueChanged<List<DateTime?>> onStartDateChanged;
  final Stream<bool> isLoading;
  final Stream<bool> isStartDateBeforeToday;

  const NewEditTripForm(
      {super.key,
      required this.saveSection,
      required this.onNameChanged,
      required this.onDescriptionChanged,
      required this.onStartDateChanged,
      required this.isLoading,
      required this.isStartDateBeforeToday});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        StreamBuilder<bool>(
          stream: isLoading,
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if(snapshot.data ?? false) {
              return LinearProgressIndicator(minHeight: 1);
            } else {
              return const SizedBox(height: 1);
            }
          },
        ),
        Expanded(
          child: SafeArea(
            child: SingleChildScrollView(
              padding: DEFAULT_PAGE_PADDING,
              child: Column(
                children: [
                  _TripNameTextField(key: Key('tripNameTextField'), onChanged: onNameChanged),
                  const SizedBox(height: VERTICAL_SPACE),
                  _TripDescriptionTextField(
                      key: Key('tripDescriptionTextField'), onChanged: onDescriptionChanged),
                  const SizedBox(height: VERTICAL_SPACE_L),
                  _StartDatePicker(
                    key: Key('startDatePicker'),
                    onValueChanged: onStartDateChanged,
                    isStartDateBeforeToday: isStartDateBeforeToday,
                  ),
                  const SizedBox(height: VERTICAL_SPACE_L),
                  saveSection,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
