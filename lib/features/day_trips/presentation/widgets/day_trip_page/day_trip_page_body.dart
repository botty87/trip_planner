part of '../../pages/day_trip_page.dart';

class _DayTripPageBody extends StatelessWidget {
  const _DayTripPageBody();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: DEFAULT_PAGE_PADDING,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _TripStopsList(),
          const SizedBox(height: VERTICAL_SPACE_S),
          _AddDayTripStopCard(),
        ],
      ),
    ));
  }
}
