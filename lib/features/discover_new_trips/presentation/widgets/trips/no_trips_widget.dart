part of '../../pages/discover_new_trips_page.dart';

class _NoTripsWidget extends StatelessWidget {
  const _NoTripsWidget();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(verticalSpaceL),
      child: BackgroundWidgetContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: verticalSpaceL),
                child: Text(
                  LocaleKeys.noPubblicTripsFound.tr(),
                  style: GoogleFonts.caveat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Flexible(
              child: SvgPicture(
                AssetBytesLoader(Assets.svg.noPublicTripsSvg),
                height: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
