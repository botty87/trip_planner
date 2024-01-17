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
import '../../../../map/domain/entities/map_place.dart';
import '../../../../map/presentation/widgets/map_widget.dart';
import '../../../domain/entities/trip_stop.dart';

part 'duration_widget.dart';
part 'field_widget.dart';
part 'horizontal_layout.dart';
part 'vertical_layout.dart';

class NewEditTripStopForm extends StatelessWidget {
  final Stream<bool> isSaving;
  final Stream<int> hourDuration;
  final Stream<int> minuteDuration;

  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onDescriptionChanged;
  final ValueChanged<int> onHourDurationChanged;
  final ValueChanged<int> onMinuteDurationChanged;
  final ValueChanged<LatLng?> onLocationChanged;

  final TripStop? tripStop;

  final Widget saveSection;

  const NewEditTripStopForm.newTripStop({
    super.key,
    required this.isSaving,
    required this.hourDuration,
    required this.minuteDuration,
    required this.onNameChanged,
    required this.onDescriptionChanged,
    required this.saveSection,
    required this.onHourDurationChanged,
    required this.onMinuteDurationChanged,
    required this.onLocationChanged,
  }) : tripStop = null;

  const NewEditTripStopForm.editTripStop({
    super.key,
    required this.isSaving,
    required this.hourDuration,
    required this.minuteDuration,
    required this.onNameChanged,
    required this.onDescriptionChanged,
    required this.saveSection,
    required this.onHourDurationChanged,
    required this.onMinuteDurationChanged,
    required this.onLocationChanged,
    required this.tripStop,
  });

  @override
  Widget build(BuildContext context) {
    Widget getVerticalLayout() {
      if (tripStop == null) {
        return _VerticalLayout.newTripStop(
          isSaving: isSaving,
          hourDuration: hourDuration,
          minuteDuration: minuteDuration,
          onNameChanged: (name) => onNameChanged(name),
          onDescriptionChanged: (name) => onDescriptionChanged(name),
          saveSection: saveSection,
          onHourDurationChanged: (hour) => onHourDurationChanged(hour),
          onMinuteDurationChanged: (minute) => onMinuteDurationChanged(minute),
          onLocationChanged: (location) => onLocationChanged(location),
        );
      } else {
        return _VerticalLayout.editTripStop(
          isSaving: isSaving,
          hourDuration: hourDuration,
          minuteDuration: minuteDuration,
          onNameChanged: (name) => onNameChanged(name),
          onDescriptionChanged: (name) => onDescriptionChanged(name),
          saveSection: saveSection,
          onHourDurationChanged: (hour) => onHourDurationChanged(hour),
          onMinuteDurationChanged: (minute) => onMinuteDurationChanged(minute),
          onLocationChanged: (location) => onLocationChanged(location),
          tripStop: tripStop,
        );
      }
    }

    Widget getHorizontalLayout() {
      if (tripStop == null) {
        return _HorizontalLayout.newTripStop(
          isSaving: isSaving,
          hourDuration: hourDuration,
          minuteDuration: minuteDuration,
          onNameChanged: (name) => onNameChanged(name),
          onDescriptionChanged: (name) => onDescriptionChanged(name),
          saveSection: saveSection,
          onHourDurationChanged: (hour) => onHourDurationChanged(hour),
          onMinuteDurationChanged: (minute) => onMinuteDurationChanged(minute),
          onLocationChanged: (location) => onLocationChanged(location),
        );
      } else {
        return _HorizontalLayout.editTripStop(
          isSaving: isSaving,
          hourDuration: hourDuration,
          minuteDuration: minuteDuration,
          onNameChanged: (name) => onNameChanged(name),
          onDescriptionChanged: (name) => onDescriptionChanged(name),
          saveSection: saveSection,
          onHourDurationChanged: (hour) => onHourDurationChanged(hour),
          onMinuteDurationChanged: (minute) => onMinuteDurationChanged(minute),
          onLocationChanged: (location) => onLocationChanged(location),
          tripStop: tripStop,
        );
      }
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
