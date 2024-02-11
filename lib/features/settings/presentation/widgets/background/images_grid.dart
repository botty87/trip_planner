part of 'background_section.dart';

class _ImagesGrid extends StatelessWidget {
  final backgroundsRef = getIt<FirebaseStorage>().backgroundsRef;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridView.builder(
      shrinkWrap: true,
      itemCount: 14,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const ResponsiveGridDelegate(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        minCrossAxisExtent: 150,
      ),
      itemBuilder: (BuildContext context, int index) {
        return FutureBuilder(
          future: backgroundsRef.child('$index.webp').getDownloadURL(),
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
                  onTap: () => context.read<SettingsCubit>().setBackgroundContainer(
                      BackgroundContainer(url: snapshot.data!, index: index)),
                  child: Stack(
                    children: [
                      BlocSelector<SettingsCubit, SettingsState, bool>(
                        selector: (state) {
                          return state.settings.backgroundContainer?.index == index;
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
        );
      },
    );

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(
        6,
        (index) {
          return FutureBuilder(
            future: backgroundsRef.child('$index.webp').getDownloadURL(),
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
                    onTap: () => context.read<SettingsCubit>().setBackgroundContainer(
                        BackgroundContainer(url: snapshot.data!, index: index)),
                    child: Stack(
                      children: [
                        BlocSelector<SettingsCubit, SettingsState, bool>(
                          selector: (state) {
                            return state.settings.backgroundContainer?.index == index;
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
          );
        },
      ),
    );
  }
}
