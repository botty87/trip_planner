part of '../../pages/discover_new_daily_trips_page.dart';

class _AddTripBottomButton extends StatelessWidget {
  const _AddTripBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: verticalSpace),
      child: ElevatedButton.icon(
        onPressed: () => context.read<DiscoverNewDailyTripsCubit>().addTrip(),
        icon: const Icon(Icons.add),
        label: Text(LocaleKeys.addThisTrip.tr()),
      ),
    );
  }
}
