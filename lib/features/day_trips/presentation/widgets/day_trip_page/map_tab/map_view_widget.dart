part of '../../../pages/day_trip_page.dart';

class _MapViewWidget extends HookWidget {
  const _MapViewWidget();

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    //Make the first direction check
    final tripStops = context.read<DayTripCubit>().state.tripStops;
    context.read<TripStopsMapCubit>().loadDirections(tripStops);

    return MultiBlocListener(
      listeners: [
        BlocListener<TripStopsMapCubit, TripStopsMapState>(
          listener: (context, state) {
            final tripStops = context.read<DayTripCubit>().state.tripStops;
            context.read<TripStopsMapCubit>().loadDirections(tripStops);
          },
          listenWhen: (previous, current) {
            return !current.dayTrip.tripStopsDirectionsUpToDate &&
                current.isSelectedTab &&
                !current.isLoading;
          },
        ),
        //Show a snackbar if there is an error
        BlocListener<TripStopsMapCubit, TripStopsMapState>(
          listener: (context, state) {
            if (state.hasTripStopsDirectionsErrors) {
              ScaffoldMessenger.of(context).showSnackBar(
                Snackbars.error(
                  LocaleKeys.tripStopsDirectionsError.tr(),
                  duration: const Duration(seconds: 6),
                  showCloseButton: true,
                ),
              );
            }
            context.read<TripStopsMapCubit>().clearTripStopsDirectionsErrors();
          },
          listenWhen: (previous, current) {
            return current.hasTripStopsDirectionsErrors;
          },
        ),
      ],
      child: BlocSelector<TripStopsMapCubit, TripStopsMapState, bool>(
        selector: (state) => state.isMapReady || kIsWeb,
        builder: (context, isMapReady) {
          return Stack(
            children: [
              Visibility(
                visible: !isMapReady,
                child: const Center(child: CircularProgressIndicator.adaptive()),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: isMapReady ? 1 : 0,
                child: const Column(
                  children: [
                    _MapDirectionsSwitcher(),
                    Expanded(
                      child: Stack(
                        children: [
                          _MapWidget(),
                          Align(alignment: Alignment.topCenter, child: _MapDirectionsLoader()),
                          Align(alignment: Alignment.topLeft, child: _MapTypeChanger()),
                          Align(alignment: Alignment.bottomRight, child: _MapZoomButtons()),
                          Align(alignment: Alignment.topRight, child: _MapMarkersFinder())
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
