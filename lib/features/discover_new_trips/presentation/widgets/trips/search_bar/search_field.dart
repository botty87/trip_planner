part of '../../../pages/discover_new_trips_page.dart';

class _SearchField extends HookWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return TextField(
      controller: textEditingController,
      onChanged: (value) => context.read<DiscoverNewTripsCubit>().tripsQueryChanged(value),
      decoration: InputDecoration(
        hintText: LocaleKeys.searchTrip.tr(),
        suffixIcon: BlocSelector<DiscoverNewTripsCubit, DiscoverNewTripsState, bool>(
          selector: (state) => state.maybeMap(
            normal: (state) => state.query.isNotEmpty,
            orElse: () => false,
          ),
          builder: (context, queryIsNotEmpty) {
            return queryIsNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      textEditingController.clear();
                      context.read<DiscoverNewTripsCubit>().tripsQueryChanged('');
                    },
                  )
                : const Icon(Icons.search);
          },
        ),
      ),
    );
  }
}
