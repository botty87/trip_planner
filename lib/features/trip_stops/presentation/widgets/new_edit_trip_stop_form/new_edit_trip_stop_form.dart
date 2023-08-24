import 'dart:async';
import 'dart:io';

import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trip_planner/core/utilities/time_of_day.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../gen/assets.gen.dart';

part 'field_widget.dart';
part 'time_widget.dart';
part 'map_widget.dart';

class NewEditTripStopForm extends StatelessWidget {
  final Stream<bool> isSaving;

  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onDescriptionChanged;
  final ValueChanged<TimeOfDay> onStartTimeChanged;
  final ValueChanged<TimeOfDay> onEndTimeChanged;

  final Stream<TimeOfDay?> startTime;
  final Stream<TimeOfDay?> endTime;

  final Widget saveSection;

  final String? initialTripStopDescription;

  const NewEditTripStopForm(
      {super.key,
      required this.isSaving,
      required this.onNameChanged,
      required this.onDescriptionChanged,
      required this.saveSection,
      required this.onStartTimeChanged,
      required this.onEndTimeChanged,
      required this.startTime,
      required this.endTime,
      this.initialTripStopDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        StreamBuilder<bool>(
            stream: isSaving,
            builder: (context, isSaving) {
              if (isSaving.data ?? false) {
                return LinearProgressIndicator(minHeight: 1);
              } else {
                return const SizedBox(height: 1);
              }
            }),
        Expanded(
          child: SafeArea(
            minimum: DEFAULT_PAGE_PADDING,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return SvgPicture(
                        height: constraints.maxWidth * 0.75,
                        key: Key('tripImage'),
                        AssetBytesLoader(Assets.svg.addTripStopSvg),
                      );
                    },
                  ),
                  const SizedBox(height: VERTICAL_SPACE_L),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _FieldWidget(
                        key: Key('nameWidget'),
                        onDescriptionChanged: onNameChanged,
                        initialValue: initialTripStopDescription,
                        label: LocaleKeys.tripStopName.tr(),
                        hint: LocaleKeys.tripStopNameHint.tr(),
                      ),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      _FieldWidget(
                        key: Key('descriptionWidget'),
                        onDescriptionChanged: onDescriptionChanged,
                        initialValue: initialTripStopDescription,
                        label: LocaleKeys.tripStopDescription.tr(),
                        hint: LocaleKeys.tripStopDescriptionHint.tr(),
                        maxLines: 5,
                      ),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      Wrap(
                        children: [
                          _TimeWidget(
                            label: LocaleKeys.tripStopStartTime.tr(),
                            time: startTime,
                            onTimeChanged: onStartTimeChanged,
                          ),
                          _TimeWidget(
                            label: LocaleKeys.tripStopEndTime.tr(),
                            time: endTime,
                            onTimeChanged: onEndTimeChanged,
                          ),
                        ],
                        alignment: WrapAlignment.spaceEvenly,
                      ),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      _MapWidget(),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      saveSection,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
