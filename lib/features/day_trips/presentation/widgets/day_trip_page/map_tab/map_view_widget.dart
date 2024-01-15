part of '../../../pages/day_trip_page.dart';

class _MapViewWidget extends HookWidget {
  const _MapViewWidget();

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return BlocListener<TripStopsMapCubit, TripStopsMapState>(
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
