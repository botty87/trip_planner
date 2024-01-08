part of '../../pages/discover_new_daily_trips_page.dart';

class _DiscoverNewDailyTripsBody extends StatelessWidget {
  const _DiscoverNewDailyTripsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverNewDailyTripsCubit, DiscoverNewDailyTripsState>(
      buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) => const Center(child: CircularProgressIndicator.adaptive()),
          loaded: (state) => const Column(
            children: [
              Expanded(child: _DiscoverNewDailyTripList()),
              SafeArea(child: _AddTripBottomButton()),
            ],
          ),
          error: (state) => const Center(child: _DiscoverNewTripsErrorWidget()),
        );
      },
    );
  }
}
