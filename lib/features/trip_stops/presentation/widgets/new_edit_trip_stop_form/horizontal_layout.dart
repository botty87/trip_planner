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

  final TripStop? tripStop;

  final Widget saveSection;

  const _HorizontalLayout.newTripStop({
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

  @override
  Widget build(BuildContext context) {
    final location = useStreamController<LatLng?>();

    return Row(
      children: [
        Expanded(
          child: StreamBuilder<LatLng?>(
              stream: location.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return MapWidget.single(
                    mapPlace: MapPlace.newPlace(location: snapshot.data!),
                    useDifferentColorsForDone: false,
                    showInfoWindow: false,
                    isInsideScrollView: true,
                    onMarkerDragEnd: (value) {
                      onLocationChanged(LatLng(value.latitude, value.longitude));
                    },
                  );
                }

                return const MapWidget.empty(
                  useDifferentColorsForDone: false,
                  showInfoWindow: false,
                  isInsideScrollView: true,
                );
              }),
          /* MapWidget(
            key: const Key('mapWidget'),
            initialLocation: initialLocation,
            locationStream: location.stream,
            onMarkerDragEnd: (value) {
              onLocationChanged(LatLng(value.latitude, value.longitude));
            },
          ), */
        ),
        const SizedBox(width: horizontalSpaceL),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: verticalSpaceL),
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
                  //initialValue: initialTripStopName,
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  label: LocaleKeys.tripStopName.tr(),
                  hint: LocaleKeys.tripStopNameHint.tr(),
                ),
                const SizedBox(height: verticalSpaceL),
                _FieldWidget(
                  key: const Key('descriptionWidget'),
                  onDescriptionChanged: onDescriptionChanged,
                  //initialValue: initialTripStopDescription,
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
                  initialHourDuration: 0,
                  initialMinuteDuration: 0,
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
