part of '../../../pages/discover_new_trip_stops_page.dart';

class _DiscoverNewTripStopsMapTab extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    final isMapReady = context.select(
      (DiscoverNewTripStopsCubit cubit) => cubit.state.maybeMap(
        loaded: (state) => state.isMapReady || kIsWeb,
        orElse: () => throw ('Unexpected state'),
      ),
    );

    return Stack(
      children: [
        Visibility(
          visible: !isMapReady,
          child: const Center(child: CircularProgressIndicator.adaptive()),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: isMapReady ? 1 : 0,
          child: const Stack(
            children: [
              _DiscoverNewTripStopsMap(),
              Align(alignment: Alignment.topLeft, child: _MapTypeChanger()),
              Align(alignment: Alignment.bottomRight, child: _MapZoomButtons()),
              Align(alignment: Alignment.topRight, child: _MapMarkersFinder()),
            ],
          ),
        ),
      ],
    );
  }
}
