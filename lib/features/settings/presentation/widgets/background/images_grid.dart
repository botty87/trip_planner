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
          children: List.generate(availableLightBackgrounds,
              (index) => _ImageBuilder(imageType: BackgroundType.light, index: index)),
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
          children: List.generate(availableDarkBackgrounds,
              (index) => _ImageBuilder(imageType: BackgroundType.dark, index: index)),
        ),
      ),
    );
  }
}
