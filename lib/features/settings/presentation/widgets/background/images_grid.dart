part of 'background_section.dart';

class _ImagesGrid extends StatelessWidget {
  final darkBackgroundsRef = getIt<FirebaseStorage>().darkBackgroundsRef;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(verticalSpace),
          child: Text(
            LocaleKeys.light.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const _LightBackgroundsGrid(),
        const SizedBox(height: verticalSpaceS),
        Padding(
          padding: const EdgeInsets.all(verticalSpace),
          child: Text(
            LocaleKeys.dark.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const _DarkBackgroundsGrid(),
      ],
    );
  }
}

class _LightBackgroundsGrid extends StatelessWidget {
  const _LightBackgroundsGrid();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 150),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(availableLightBackgrounds + 1, (index) {
            if (index < availableLightBackgrounds) {
              return _ImageBuilder(imageType: BackgroundType.light, index: index);
            }
            return const _NoBackgroundButton(backgroundType: BackgroundType.light);
          }),
        ),
      ),
    );
  }
}

class _DarkBackgroundsGrid extends StatelessWidget {
  const _DarkBackgroundsGrid();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 150),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(availableDarkBackgrounds + 1, (index) {
            if (index < availableDarkBackgrounds) {
              return _ImageBuilder(imageType: BackgroundType.dark, index: index);
            }
            return const _NoBackgroundButton(backgroundType: BackgroundType.dark);
          }),
        ),
      ),
    );
  }
}
