part of 'new_edit_trip_stop_form.dart';

class _HorizontalLayout extends HookWidget {
  final Stream<bool> isSaving;
  final Stream<int> hourDuration;
  final Stream<int> minuteDuration;

  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onDescriptionChanged;
  final ValueChanged<int> onHourDurationChanged;
  final ValueChanged<int> onMinuteDurationChanged;
  final ValueChanged<LatLng?> onLocationChanged;

  final String? initialTripStopName;
  final String? initialTripStopDescription;
  final int initialHourDuration;
  final int initialMinuteDuration;
  final LatLng? initialLocation;

  final Widget saveSection;

  const _HorizontalLayout({
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
    required this.initialHourDuration,
    required this.initialMinuteDuration,
  });

  @override
  Widget build(BuildContext context) {
    final location = useStreamController<LatLng?>();

    return Row(
      children: [
        Expanded(
          child: MapWidget(
            key: const Key('mapWidget'),
            initialLocation: initialLocation,
            locationStream: location.stream,
            onMarkerDragEnd: (value) {
              onLocationChanged(LatLng(value.latitude, value.longitude));
            },
          ),
        ),
        const SizedBox(width: horizontalSpaceL),
        Expanded(
          child: SingleChildScrollView(
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
                const SizedBox(height: verticalSpaceXL),
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
                  initialHourDuration: initialHourDuration,
                  initialMinuteDuration: initialMinuteDuration,
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
          ),
        ),
      ],
    );
  }
}
