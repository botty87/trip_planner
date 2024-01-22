part of '../../pages/discover_new_trip_stop_page.dart';

class _DiscoverNewTripStopBody extends StatelessWidget {
  const _DiscoverNewTripStopBody();

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
      return const _VerticalLayout();
    } else {
      return OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const _VerticalLayout();
          } else {
            return const _HorizontalLayout();
          }
        },
      );
    }
  }
}
