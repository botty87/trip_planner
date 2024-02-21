part of '../../../pages/discover_new_trips_page.dart';

class _MoreSection extends HookWidget {
  const _MoreSection();

  @override
  Widget build(BuildContext context) {
    final previousIsOpen = usePrevious(context.read<DiscoverNewTripsCubit>().state.mapOrNull(
          normal: (state) => state.isMoreSectionOpen,
        ));

    final isOpen = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.isMoreSectionOpen,
          orElse: () => previousIsOpen ?? false,
        ));

    return AnimatedSizeAndFade.showHide(
      show: isOpen,
      fadeDuration: const Duration(milliseconds: 300),
      sizeDuration: const Duration(milliseconds: 300),
      child: _buildWidget(context, isOpen),
    );
  }

  Widget _buildWidget(BuildContext context, bool isOpen) {
    if (!isOpen) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(top: verticalSpaceS),
      child: BlocSelector<DiscoverNewTripsCubit, DiscoverNewTripsState, bool>(
        selector: (state) => state.maybeMap(
          normal: (state) => state.searchDescription,
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
                ),
              ),
              Switch.adaptive(
                value: searchDescription,
                onChanged: (value) =>
                    context.read<DiscoverNewTripsCubit>().searchDescriptionChanged(value),
              ),
            ],
          );
        },
      ),
    );
  }
}
