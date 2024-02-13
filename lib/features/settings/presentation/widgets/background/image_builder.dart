part of 'background_section.dart';

class _ImageBuilder extends StatelessWidget {
  final BackgroundType imageType;
  final int index;

  const _ImageBuilder({required this.imageType, required this.index});

  @override
  Widget build(BuildContext context) {
    final Reference imageRef = imageType == BackgroundType.light
        ? getIt<FirebaseStorage>().lightBackgroundsRef
        : getIt<FirebaseStorage>().darkBackgroundsRef;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceS),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 150),
        child: FutureBuilder(
          future: imageRef.child('$index.webp').getDownloadURL(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox.shrink();
            }

            return CachedNetworkImage(
              imageUrl: snapshot.data!,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 200),
              placeholder: (context, url) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  //color: Colors.grey[300],
                ),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              imageBuilder: (context, imageProvider) {
                return GestureDetector(
                  onTap: () => context.read<SettingsCubit>().setBackground(
                      backgroundType: imageType,
                      value: BackgroundRemoteImage(index: index, url: snapshot.data!)),
                  child: Stack(
                    children: [
                      BlocSelector<SettingsCubit, SettingsState, bool>(
                        selector: (state) {
                          switch (imageType) {
                            case BackgroundType.light:
                              return state.settings.backgroundsContainer.lightBackground?.index == index;
                            case BackgroundType.dark:
                              return state.settings.backgroundsContainer.darkBackground?.index == index;
                          }
                        },
                        builder: (context, isSelected) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: isSelected
                                    ? Theme.of(context).primaryColor
                                    : Colors.transparent,
                                width: 2,
                              ),
                              boxShadow: isSelected
                                  ? [
                                      const BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6,
                                      ),
                                    ]
                                  : null,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
