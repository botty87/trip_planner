part of '../../pages/trip_stop_page.dart';

//A button that opens the navigation app to navigate to the trip stop
class _TripStopNavigateToButton extends StatelessWidget {
  const _TripStopNavigateToButton();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () => _launchNavigationApp(context),
        label: Text(LocaleKeys.navigateToDestination.tr()),
        icon: const Icon(Icons.navigation),
      ),
    );
  }

  _launchNavigationApp(BuildContext context) async {
    try {
      final availableMaps = await MapLauncher.installedMaps;

      if (context.mounted) {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          showDragHandle: true,
          useRootNavigator: true,
          isDismissible: true,
          builder: (_) {
            return SizedBox(
              width: double.infinity,
              child: SafeArea(
                minimum: const EdgeInsets.all(12),
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    for (final map in availableMaps)
                      InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                          await Future.delayed(const Duration(milliseconds: 300));
                          if (context.mounted) {
                            final tripStop = context.read<TripStopCubit>().state.tripStop;
                            map.showDirections(
                              destination: tripStop.location.toCoords(),
                              destinationTitle: tripStop.name,
                            );
                          }
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              map.icon,
                              height: 50,
                              width: 50,
                            ),
                            Text(map.mapName),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      }
    } on Exception catch (e) {
      if (context.mounted) {
        context.read<TripStopCubit>().onUIError(e);
      }
    }
  }
}
