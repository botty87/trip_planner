import 'dart:io';

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/languages.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../tutorials/presentation/cubit/tutorial_cubit.dart';

part 'language_selector.dart';
part 'start_date_picker.dart';
part 'trip_description_text_field.dart';
part 'trip_name_text_field.dart';
part 'trip_privacy_selector.dart';

final _showCaseKeyOne = GlobalKey();

class NewEditTripForm extends HookWidget {
  final Widget saveSection;
  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onDescriptionChanged;
  final ValueChanged<DateTime> onStartDateChanged;
  final ValueChanged<bool> onIsPublicChanged;
  final ValueChanged<String> onLanguageCodeChanged;
  final Stream<bool> isSaving;

  final String? initialTripName;
  final String? initialTripDescription;
  final DateTime? initialStartDate;
  final bool? initialIsPublic;
  final String initialLanguageCode;

  const NewEditTripForm({
    super.key,
    required this.saveSection,
    required this.onNameChanged,
    required this.onDescriptionChanged,
    required this.onStartDateChanged,
    required this.isSaving,
    required this.onIsPublicChanged,
    required this.onLanguageCodeChanged,
    required this.initialLanguageCode,
    this.initialTripName,
    this.initialTripDescription,
    this.initialStartDate,
    this.initialIsPublic,
  });

  @override
  Widget build(BuildContext context) {
    final tutorialShowed = useRef(false);

    return ShowCaseWidget(
      builder: (context) {
        final showTutorial = context.read<TutorialCubit>().state.showPublicTrip;

        if (showTutorial && !tutorialShowed.value) {
          tutorialShowed.value = true;
          WidgetsBinding.instance.addPostFrameCallback(
              (_) => ShowCaseWidget.of(context).startShowCase([_showCaseKeyOne]));
        }

        return StreamBuilder<bool>(
          stream: isSaving,
          initialData: false,
          builder: (context, snapshot) {
            return IgnorePointer(
              ignoring: snapshot.data!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  (snapshot.data!)
                      ? const LinearProgressIndicator(minHeight: 1)
                      : const SizedBox(height: 1),
                  Flexible(
                    child: ListView(
                      padding: defaultPagePadding,
                      children: [
                        _TripNameTextField(
                            key: const Key('tripNameTextField'),
                            onChanged: onNameChanged,
                            initialTripName: initialTripName),
                        const SizedBox(height: verticalSpace),
                        _TripDescriptionTextField(
                            key: const Key('tripDescriptionTextField'),
                            onChanged: onDescriptionChanged,
                            initialTripDescription: initialTripDescription),
                        const SizedBox(height: verticalSpaceL),
                        _TripPrivacySelector(
                          key: const Key('tripPrivacySelector'),
                          initialIsPublic: initialIsPublic ?? false,
                          onIsPublicChanged: onIsPublicChanged,
                        ),
                        const SizedBox(height: verticalSpaceL),
                        _LanguageSelector(
                          key: const Key('languageSelector'),
                          initialLanguageCode: initialLanguageCode,
                          onLanguageCodeChanged: onLanguageCodeChanged,
                        ),
                        const SizedBox(height: verticalSpaceL),
                        _StartDatePicker(
                          key: const Key('startDatePicker'),
                          onValueChanged: onStartDateChanged,
                          initialStartDate: initialStartDate,
                        ),
                        SafeArea(child: Center(child: saveSection)),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
      onFinish: () => context.read<TutorialCubit>().onPublicTripDone(),
    );
  }
}
