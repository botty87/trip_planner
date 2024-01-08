part of '../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripsSearchBar extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  _DiscoverNewTripsSearchBar();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _textEditingController,
          onChanged: (value) => context.read<DiscoverNewTripsCubit>().tripsQueryChanged(value),
          decoration: InputDecoration(
            hintText: LocaleKeys.searchTrip.tr(),
            suffixIcon: BlocSelector<DiscoverNewTripsCubit, DiscoverNewTripsState, bool>(
              selector: (state) => state.maybeWhen(
                normal: (query, _, __, ___) => query.isNotEmpty,
                orElse: () => false,
              ),
              builder: (context, queryIsNotEmpty) {
                return queryIsNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _textEditingController.clear();
                          context.read<DiscoverNewTripsCubit>().tripsQueryChanged('');
                        },
                      )
                    : const Icon(Icons.search);
              },
            ),
          ),
        ),
        const SizedBox(height: verticalSpaceS),
        BlocSelector<DiscoverNewTripsCubit, DiscoverNewTripsState, bool>(
          selector: (state) => state.maybeWhen(
            normal: (_, __, ___, searchDescription) => searchDescription,
            orElse: () => false,
          ),
          builder: (context, searchDescription) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  LocaleKeys.searchIntoDescription.tr(),
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
                Switch.adaptive(
                  value: searchDescription,
                  onChanged: (value) =>
                      context.read<DiscoverNewTripsCubit>().searchDescriptionChanged(value),
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
