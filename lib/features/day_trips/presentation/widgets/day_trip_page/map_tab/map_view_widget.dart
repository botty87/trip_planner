part of '../../../pages/day_trip_page.dart';

class _MapViewWidget extends HookWidget {
  const _MapViewWidget();

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return MultiBlocListener(
      listeners: [
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
        BlocListener<TripStopsMapCubit, TripStopsMapState>(
          listener: (context, state) {
            final tripStops = context.read<DayTripCubit>().state.tripStops;
            context.read<TripStopsMapCubit>().loadDirections(tripStops);
          },
          listenWhen: (previous, current) {
            return current.isTripStopsDirectionsToLoad != previous.isTripStopsDirectionsToLoad
                && current.isTripStopsDirectionsToLoad;
          },
        ),
      ],
      child: const Column(
        children: [
          _MapDirectionsSwitcher(),
          Expanded(
            child: Stack(
              children: [
                _MapWidget(),
                _MapDirectionsLoader(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
