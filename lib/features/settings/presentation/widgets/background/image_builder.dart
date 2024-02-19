part of 'background_section.dart';

class _ImageBuilder extends StatelessWidget {
  final BackgroundType imageType;
  final int index;

  const _ImageBuilder({required this.imageType, required this.index, required super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceS),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 150),
        child: _ImageView(
          imageType: imageType,
          index: index,
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

    if (imageFile == null) {
      return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          color: Colors.grey[300],
        ),
      );
    }

    return Image.file(
      imageFile,
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
