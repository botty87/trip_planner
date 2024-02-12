/* part of 'background_section.dart';

class _ImagesGridCollapsed extends StatelessWidget {
  final backgroundsRef = getIt<FirebaseStorage>().backgroundsRef;

  @override
  Widget build(BuildContext context) {
    final selectedBackgroundUrl = context.select(
      (SettingsCubit cubit) => cubit.state.settings.backgroundContainer?.url,
    );

    return LayoutBuilder(builder: (context, constraints) {
      final maxHeight = constraints.maxWidth * 0.7;
      return ConstrainedBox(
        constraints: BoxConstraints(maxHeight: maxHeight),
        child: Row(
          children: [
            if (selectedBackgroundUrl != null)
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: selectedBackgroundUrl,
                    fit: BoxFit.cover,
                    fadeInDuration: const Duration(milliseconds: 200),
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        color: Colors.red[300],
                      ),
                    ),
                  ),
                ),
              ),
            //Show more
            const Expanded(child: _ShowMoreWidget()),
          ],
        ),
      );
    });
  }
}
 */