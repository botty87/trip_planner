part of '../../pages/trip_page.dart';

class _AddDayTripCard extends StatelessWidget {
  const _AddDayTripCard();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          context.router.push(NewDayTripRoute(tripId: context.read<TripCubit>().state.trip.id)),
      child: Card(
        color: Colors.amberAccent[100],
        child: Padding(
          padding: CARD_PADDING,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 3 / 2,
                child: SvgPicture(
                  AssetBytesLoader(Assets.svg.addDayTripSvg),
                ),
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
