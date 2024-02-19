part of 'background_section.dart';

class _ImageBuilder extends HookWidget {
  final BackgroundType imageType;
  final int index;

  const _ImageBuilder({required this.imageType, required this.index, required super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    final isImageToLoad = useRef(true);

    if (isImageToLoad.value) {
      context.read<BackgroundsCubit>().loadBackgroundImage(index: index, type: imageType);
      isImageToLoad.value = false;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceS),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 150),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: _ImageView(
            imageType: imageType,
            index: index,
          ),
        ),
      ),
    );
  }
}

class _ImageView extends StatelessWidget {
  final BackgroundType imageType;
  final int index;

  const _ImageView({required this.imageType, required this.index});

  @override
  Widget build(BuildContext context) {
    final imageFile = context.select((BackgroundsCubit cubit) {
      return imageType == BackgroundType.light
          ? cubit.state.lightBackgrounds[index]
          : cubit.state.darkBackgrounds[index];
    });

    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 300), child: _buildImage(imageFile, context));
  }

  Widget _buildImage(File? imageFile, BuildContext context) {
    if (imageFile == null) {
      return Shimmer.fromColors(
        key: const ValueKey('shimmer'),
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          color: Colors.grey[300],
        ),
      );
    }

    return GestureDetector(
      onTap: () =>
          context.read<SettingsCubit>().setBackground(backgroundType: imageType, index: index),
      child: Stack(
        children: [
          Image.file(
            key: ValueKey(imageFile.path),
            imageFile,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          BlocSelector<SettingsCubit, SettingsState, bool>(
            selector: (state) {
              switch (imageType) {
                case BackgroundType.light:
                  return state.settings.backgroundsContainer.lightBackgroundIndex == index;
                case BackgroundType.dark:
                  return state.settings.backgroundsContainer.darkBackgroundIndex == index;
              }
            },
            builder: (context, isSelected) {
              final selectedColor = context.isDarkMode
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).primaryColorDark;

              return AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: isSelected ? 1 : 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedColor,
                      width: 2,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
