part of '../../../pages/day_trip_page.dart';

class _MapViewWidget extends HookWidget {
  const _MapViewWidget();

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    final isMapReady = context.select((TripStopsMapCubit cubit) => cubit.state.isMapReady);

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
                    Align(alignment: Alignment.topLeft, child: _MapTypeChanger()),
                    Align(alignment: Alignment.bottomRight, child: _MapZoomButtons()),
                    Align(alignment: Alignment.topRight, child: _MapMarkersFinder())
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
