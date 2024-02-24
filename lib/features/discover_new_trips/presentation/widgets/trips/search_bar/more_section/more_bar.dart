part of '../../../../pages/discover_new_trips_page.dart';

class _MoreBar extends StatelessWidget {
  const _MoreBar();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<DiscoverNewTripsCubit>().onMoreSectionTapped(),
      child: Padding(
        padding: const EdgeInsets.only(top: verticalSpace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 20,
              height: 1,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalSpaceS),
              child: _TextWidget(),
            ),
            Expanded(
              child: Container(
                height: 1,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const _ArrowWidget(),
          ],
        ),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget();

  @override
  Widget build(BuildContext context) {
    final isOpen = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.isMoreSectionOpen,
          orElse: () => false,
        ));

    final text = isOpen ? LocaleKeys.hide.tr() : LocaleKeys.more.tr();

    return AnimatedSizeAndFade(
      fadeDuration: const Duration(milliseconds: 300),
      sizeDuration: const Duration(milliseconds: 300),
      child: Text(
        text,
        key: ValueKey(text),
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontStyle: FontStyle.italic,
            ),
      ),
    );
  }
}

class _ArrowWidget extends HookWidget {
  const _ArrowWidget();

  @override
  Widget build(BuildContext context) {
    final previousIsOpen = usePrevious(context.read<DiscoverNewTripsCubit>().state.mapOrNull(
          normal: (state) => state.isMoreSectionOpen,
        ));

    final isOpen = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.isMoreSectionOpen,
          orElse: () => previousIsOpen ?? false,
        ));

    return AnimatedRotation(
      duration: const Duration(milliseconds: 300),
      turns: isOpen ? 0 : 0.5,
      child: Icon(
        Icons.keyboard_arrow_up,
        color: Theme.of(context).colorScheme.onSurface,
        size: 22,
      ),
    );
  }
}
