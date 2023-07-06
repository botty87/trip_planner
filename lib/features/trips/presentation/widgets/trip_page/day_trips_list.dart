part of '../../pages/trip_page.dart';

class _DayTripsList extends StatelessWidget {
  const _DayTripsList();

  @override
  Widget build(BuildContext context) {
    final dayTrips = context.select((TripCubit cubit) => cubit.state.dayTrips);
    if (dayTrips.isEmpty) {
      return const _AddDayTripCard();
    } else {
      return ListView.builder(
        itemCount: dayTrips.length,
        itemBuilder: (context, index) {
          final dayTrip = dayTrips[index];
          return _DayTripCard(key: ValueKey(dayTrip.id), dayTrip: dayTrip);
        },
      );
    }
  }
}

class _AddDayTripCard extends StatelessWidget {
  const _AddDayTripCard();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: CARD_PADDING,
          child: Column(
            children: [
              SvgPicture(
                AssetBytesLoader(Assets.svg.addDayTripSvg),
                height: 180,
              ),
              const SizedBox(height: VERTICAL_SPACE_L),
              Text(
                LocaleKeys.addDayTrip.tr(),
                style: GoogleFonts.caveat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
