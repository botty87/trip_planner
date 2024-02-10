part of 'background_section.dart';

class _ImagesGrid extends StatelessWidget {
  final backgroundsRef = getIt<FirebaseStorage>().backgroundsRef;

  @override
  Widget build(BuildContext context) {
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
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    color: Colors.grey[300],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
