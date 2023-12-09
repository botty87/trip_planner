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
import '../../../../../gen/assets.gen.dart';
import '../../../../google_places/presentation/widgets/google_places_suggestions_widget.dart';
import '../map/map_widget.dart';

part 'duration_widget.dart';
part 'field_widget.dart';
part 'horizontal_layout.dart';
part 'vertical_layout.dart';

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
    final currentName = useRef<String?>(initialTripStopName);
    final currentDescription = useRef<String?>(initialTripStopDescription);
    final currentHourDuration = useRef<int>(0);
    final currentMinuteDuration = useRef<int>(0);
    final currentLocation = useRef<LatLng?>(initialLocation);

    Widget getVerticalLayout() {
      return _VerticalLayout(
        isSaving: isSaving,
        hourDuration: hourDuration,
        minuteDuration: minuteDuration,
        onNameChanged: (name) {
          currentName.value = name;
          onNameChanged(name);
        },
        onDescriptionChanged: (name) {
          currentDescription.value = name;
          onDescriptionChanged(name);
        },
        saveSection: saveSection,
        onHourDurationChanged: (hour) {
          currentHourDuration.value = hour;
          onHourDurationChanged(hour);
        },
        onMinuteDurationChanged: (minute) {
          currentMinuteDuration.value = minute;
          onMinuteDurationChanged(minute);
        },
        initialTripStopDescription: currentDescription.value,
        initialTripStopName: currentName.value,
        initialHourDuration: currentHourDuration.value,
        initialMinuteDuration: currentMinuteDuration.value,
        onLocationChanged: (location) {
          currentLocation.value = location;
          onLocationChanged(location);
        },
        initialLocation: currentLocation.value,
      );
    }

    Widget getHorizontalLayout() {
      return _HorizontalLayout(
        isSaving: isSaving,
        hourDuration: hourDuration,
        minuteDuration: minuteDuration,
        onNameChanged: (name) {
          currentName.value = name;
          onNameChanged(name);
        },
        onDescriptionChanged: (name) {
          currentDescription.value = name;
          onDescriptionChanged(name);
        },
        saveSection: saveSection,
        onHourDurationChanged: (hour) {
          currentHourDuration.value = hour;
          onHourDurationChanged(hour);
        },
        onMinuteDurationChanged: (minute) {
          currentMinuteDuration.value = minute;
          onMinuteDurationChanged(minute);
        },
        initialTripStopDescription: currentDescription.value,
        initialTripStopName: currentName.value,
        initialHourDuration: currentHourDuration.value,
        initialMinuteDuration: currentMinuteDuration.value,
        onLocationChanged: (location) {
          currentLocation.value = location;
          onLocationChanged(location);
        },
        initialLocation: currentLocation.value,
      );
    }

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
            child: Builder(builder: (context) {
              if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
                return getVerticalLayout();
              } else {
                return OrientationBuilder(
                  builder: (context, orientation) {
                    if (orientation == Orientation.portrait) {
                      return getVerticalLayout();
                    } else {
                      return getHorizontalLayout();
                    }
                  },
                );
              }
            }),
          ),
        ),
      ],
    );
  }
}
