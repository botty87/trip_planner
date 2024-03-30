part of 'new_edit_trip_stop_form.dart';

class _VerticalLayout extends HookWidget {
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

  const _VerticalLayout.newTripStop({
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

  const _VerticalLayout.editTripStop({
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
    final location = useStreamController<LatLng?>();

    return SingleChildScrollView(
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
                  const Condition.largerThan(name: TABLET, value: 0.45),
                  const Condition.largerThan(name: DESKTOP, value: 0.35),
                ],
              ).value;
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
              FieldWidget(
                key: const Key('nameWidget'),
                onDescriptionChanged: onNameChanged,
                initialValue: tripStop?.name,
                maxLines: 1,
                textInputAction: TextInputAction.next,
                label: LocaleKeys.tripStopName.tr(),
                hint: LocaleKeys.tripStopNameHint.tr(),
              ),
              const SizedBox(height: verticalSpaceL),
              FieldWidget(
                key: const Key('descriptionWidget'),
                onDescriptionChanged: onDescriptionChanged,
                initialValue: tripStop?.description,
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
                initialHourDuration: tripStop != null ? tripStop!.duration ~/ 60 : 0,
                initialMinuteDuration: tripStop != null ? tripStop!.duration % 60 : 0,
              ),
              const SizedBox(height: verticalSpaceL),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: StreamBuilder<LatLng?>(
                    initialData: tripStop?.location,
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
    );
  }
}
