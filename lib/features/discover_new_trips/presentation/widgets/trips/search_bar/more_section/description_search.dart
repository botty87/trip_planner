part of '../../../../pages/discover_new_trips_page.dart';

class _DescriptionSearch extends StatelessWidget {
  const _DescriptionSearch();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            LocaleKeys.searchIntoDescription.tr(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        BlocSelector<DiscoverNewTripsCubit, DiscoverNewTripsState, bool>(
          selector: (state) {
            return state.maybeMap(
              normal: (state) => state.searchDescription,
              orElse: () => false,
            );
          },
          builder: (context, searchDescription) {
            return Switch.adaptive(
              value: searchDescription,
              onChanged: (value) =>
                  context.read<DiscoverNewTripsCubit>().searchDescriptionChanged(value),
            );
          },
        ),
      ],
    );
  }
}
