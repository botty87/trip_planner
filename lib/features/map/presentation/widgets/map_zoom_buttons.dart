part of 'map_widget.dart';

class _MapZoomButtons extends StatelessWidget {
  const _MapZoomButtons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
            icon: const Icon(Icons.remove, color: Colors.white),
            onPressed: () => context.read<MapCubit>().zoomOut(),
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () => context.read<MapCubit>().zoomIn(),
          ),
        ],
      ),
    );
  }
}
