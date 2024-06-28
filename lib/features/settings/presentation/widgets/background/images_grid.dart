part of 'background_section.dart';

class _ImagesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(verticalSpace),
          child: Text(LocaleKeys.light.tr(),
              style:
                  Theme.of(context).textTheme.titleMedium?.copyWith(fontStyle: FontStyle.italic)),
        ),
        const _LightBackgroundsRow(),
        const SizedBox(height: verticalSpaceS),
        Padding(
          padding: const EdgeInsets.all(verticalSpace),
          child: Text(
            LocaleKeys.dark.tr(),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const _DarkBackgroundsRow(),
      ],
    );
  }
}

class _LightBackgroundsRow extends StatelessWidget {
  const _LightBackgroundsRow();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 150),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: availableLightBackgrounds + 1,
        itemBuilder: (context, index) {
          if (index < availableLightBackgrounds) {
            return _ImageBuilder(
              key: ValueKey('light_background_$index'),
              imageType: BackgroundType.light,
              index: index,
            );
          }
          return const _NoBackgroundButton(
            key: ValueKey('light_background_no_background'),
            backgroundType: BackgroundType.light,
          );
        },
      ),
    );
  }
}

class _DarkBackgroundsRow extends StatelessWidget {
  const _DarkBackgroundsRow();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 150),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: availableDarkBackgrounds + 1,
        itemBuilder: (context, index) {
          if (index < availableDarkBackgrounds) {
            return _ImageBuilder(
              key: ValueKey('dark_background_$index'),
              imageType: BackgroundType.dark,
              index: index,
            );
          }
          return const _NoBackgroundButton(
            key: ValueKey('dark_background_no_background'),
            backgroundType: BackgroundType.dark,
          );
        },
      ),
    );
  }
}
