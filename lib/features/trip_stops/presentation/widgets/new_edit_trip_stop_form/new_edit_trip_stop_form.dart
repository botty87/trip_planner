import 'dart:async';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/widgets/map_widget.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../google_places/presentation/widgets/google_places_suggestions_widget.dart';

part 'duration_widget.dart';
part 'field_widget.dart';

class NewEditTripStopForm extends HookWidget {
  final Stream<bool> isSaving;
  final Stream<int> hourDuration;
  final Stream<int> minuteDuration;

  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onDescriptionChanged;
  final ValueChanged<int> onHourDurationChanged;
  final ValueChanged<int> onMinuteDurationChanged;
  final ValueChanged<LatLng?> onLocationChanged;

  final String? initialTripStopName;

  final Widget saveSection;

  final String? initialTripStopDescription;

  final LatLng? initialLocation;

  const NewEditTripStopForm({
    super.key,
    required this.isSaving,
    required this.hourDuration,
    required this.minuteDuration,
    required this.onNameChanged,
    required this.onDescriptionChanged,
    required this.saveSection,
    required this.onHourDurationChanged,
    required this.onMinuteDurationChanged,
    this.initialTripStopDescription,
    this.initialTripStopName,
    required this.onLocationChanged,
    this.initialLocation,
  });

  @override
  Widget build(BuildContext context) {
    final location = useStreamController<LatLng?>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder<bool>(
            stream: isSaving,
            builder: (context, isSaving) {
              if (isSaving.data ?? false) {
                return const LinearProgressIndicator(minHeight: 1);
              } else {
                return const SizedBox(height: 1);
              }
            }),
        Flexible(
          child: SafeArea(
            child: SingleChildScrollView(
              padding: defaultPagePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final multiplyValue = ResponsiveValue<double>(
                        context,
                        defaultValue: 0.75,
                        conditionalValues: [
                          Condition.largerThan(name: TABLET, value: 0.45),
                          Condition.largerThan(name: DESKTOP, value: 0.35),
                        ],
                      ).value!;
                      double height = (constraints.maxWidth * multiplyValue);
                      if (height > 300) {
                        height = 300;
                      }
                      return SvgPicture(
                        height: height,
                        key: const Key('tripImage'),
                        AssetBytesLoader(Assets.svg.addTripStopSvg),
                      );
                    },
                  ),
                  const SizedBox(height: verticalSpaceL),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _FieldWidget(
                        key: const Key('nameWidget'),
                        onDescriptionChanged: onNameChanged,
                        initialValue: initialTripStopName,
                        maxLines: 1,
                        textInputAction: TextInputAction.next,
                        label: LocaleKeys.tripStopName.tr(),
                        hint: LocaleKeys.tripStopNameHint.tr(),
                      ),
                      const SizedBox(height: verticalSpaceL),
                      _FieldWidget(
                        key: const Key('descriptionWidget'),
                        onDescriptionChanged: onDescriptionChanged,
                        initialValue: initialTripStopDescription,
                        label: LocaleKeys.tripStopDescription.tr(),
                        hint: LocaleKeys.tripStopDescriptionHint.tr(),
                        maxLines: null,
                      ),
                      const SizedBox(height: verticalSpaceL),
                      DurationWidget(
                        key: const Key('durationWidget'),
                        onHourDurationChanged: onHourDurationChanged,
                        onMinuteDurationChanged: onMinuteDurationChanged,
                        hourDuration: hourDuration,
                        minuteDuration: minuteDuration,
                      ),
                      const SizedBox(height: verticalSpaceL),
                      //_MapWidget(marker: marker.stream, initialMarker: initialMarker),
                      MapWidget(
                        key: const Key('mapWidget'),
                        initialLocation: initialLocation,
                        locationStream: location.stream,
                        onMarkerDragEnd: (value) {
                          onLocationChanged(LatLng(value.latitude, value.longitude));
                        },
                      ),
                      const SizedBox(height: verticalSpaceL),
                      GooglePlacesSuggestionsWidget(
                        labelText: LocaleKeys.searchTripStopLocation.tr(),
                        hintText: LocaleKeys.tripStopLocationHint.tr(),
                        onSuggestionSelected: (placeDetails) {
                          onLocationChanged(placeDetails?.location);
                          location.add(placeDetails?.location);
                        },
                        noInternetConnectionMessage: LocaleKeys.noInternetConnectionMessage.tr(),
                        requestDeniedMessage: LocaleKeys.requestDenied.tr(),
                        unknownErrorMessage: LocaleKeys.unknownError.tr(),
                      ),
                      const SizedBox(height: verticalSpaceL),
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
