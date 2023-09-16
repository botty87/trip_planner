import 'dart:async';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../google_places/presentation/widgets/google_places_suggestions_widget.dart';
import '../../cubit/cubit/new_trip_stop_cubit.dart';

part 'field_widget.dart';
part 'map_widget.dart';
part 'duration_widget.dart';

class NewEditTripStopForm extends StatelessWidget {
  final Stream<bool> isSaving;
  final Stream<int> hourDuration;
  final Stream<int> minuteDuration;

  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onDescriptionChanged;
  final ValueChanged<int> onHourDurationChanged;
  final ValueChanged<int> onMinuteDurationChanged;

  final Stream<Marker?> marker;

  final Widget saveSection;

  final String? initialTripStopDescription;

  const NewEditTripStopForm(
      {super.key,
      required this.isSaving,
      required this.hourDuration,
      required this.minuteDuration,
      required this.onNameChanged,
      required this.onDescriptionChanged,
      required this.saveSection,
      required this.onHourDurationChanged,
      required this.onMinuteDurationChanged,
      this.initialTripStopDescription,
      required this.marker});

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
                      DurationWidget(
                        key: const Key('durationWidget'),
                        onHourDurationChanged: onHourDurationChanged,
                        onMinuteDurationChanged: onMinuteDurationChanged,
                        hourDuration: hourDuration,
                        minuteDuration: minuteDuration,
                      ),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      _MapWidget(marker: marker),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      GooglePlacesSuggestionsWidget(
                        labelText: LocaleKeys.searchTripStopLocation.tr(),
                        hintText: LocaleKeys.tripStopLocationHint.tr(),
                        onSuggestionSelected: (placeDetails) {
                          if (placeDetails != null) {
                            context.read<NewTripStopCubit>().locationChanged(placeDetails.location);
                          }
                        },
                      ),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      saveSection,
                      const SizedBox(height: VERTICAL_SPACE_L),
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
