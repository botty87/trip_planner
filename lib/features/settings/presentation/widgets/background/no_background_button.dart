part of 'background_section.dart';

class _NoBackgroundButton extends StatelessWidget {
  final BackgroundType backgroundType;

  const _NoBackgroundButton({required this.backgroundType, super.key});

  @override
  Widget build(BuildContext context) {
    final isSelected = context.select((SettingsCubit cubit) {
      switch (backgroundType) {
        case BackgroundType.light:
          return cubit.state.settings.backgroundsContainer.lightBackgroundIndex == null;
        case BackgroundType.dark:
          return cubit.state.settings.backgroundsContainer.darkBackgroundIndex == null;
      }
    });

    final selectedColor = context.isDarkMode
        ? Theme.of(context).colorScheme.secondary
        : Theme.of(context).primaryColorDark;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? selectedColor : Colors.transparent,
          width: 2,
        ),
      ),
      child: GestureDetector(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.image, color: Colors.grey, size: 110),
            const Spacer(),
            Text(
              LocaleKeys.noBackground.tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        onTap: () => context.read<SettingsCubit>().removeBackground(backgroundType: backgroundType),
      ),
    );
  }
}
